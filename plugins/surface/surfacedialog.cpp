/*
   Copyright (C) 1999-2007 id Software, Inc. and contributors.
   For a list of contributors, see the accompanying CONTRIBUTORS file.

   This file is part of GtkRadiant.

   GtkRadiant is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   GtkRadiant is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with GtkRadiant; if not, write to the Free Software
   Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
 */

//
// Surface Dialog Module
//

//
// Nurail: Implemented to Module from the main Radiant Surface Dialog code
//


#include "globalDefines.h"

#include <gtk/gtk.h>
#include <gdk/gdkkeysyms.h>
#include <glib/gi18n.h>

#include "surfdlg_plugin.h"

#ifdef _DEBUG
//  #define DBG_SI 1
#endif

#include "gtkr_vector.h"


// NAB622: These need declared up here
GtkWidget *textureWidthLabel;
GtkWidget *textureHeightLabel;


vector<texdef_to_face_t> g_texdef_face_vector;

inline texdef_to_face_t* get_texdef_face_list(){
	return &( *g_texdef_face_vector.begin() );
}

inline unsigned int texdef_face_list_empty(){
	return g_texdef_face_vector.empty();
}

inline unsigned int texdef_face_list_size(){
	return g_texdef_face_vector.size();
}

// For different faces having different values
bool is_HShift_conflicting;
bool is_VShift_conflicting;
bool is_HScale_conflicting;
bool is_VScale_conflicting;
bool is_Rotate_conflicting;
bool is_TextureName_conflicting;

void ShowDlg();
void HideDlg();
void CancelDlg();
void SetTexMods();
void GetTexMods( bool b_SetUndoPoint = FALSE );
void BuildDialog();
void FitAll();
void InitDefaultIncrement( texdef_t * );
void DoSnapTToGrid( float hscale, float vscale );
// called to perform a fitting from the outside (shortcut key)
void SurfaceDialogFitAll();


// Dialog Data
float m_nHeight = 1;
float m_nWidth = 1;

// 0 is invalid, otherwise it's the Id of the last 'do' we are responsible for
int m_nUndoId;


texturewin_t *texturewin;
texdef_t *l_pIncrement;
texdef_t texdef_offset;
texdef_t texdef_SI_values;

// For Texture Entry, activate only on entry change
char old_texture_entry[MAX_TEXPATH_SIZE];

// the texdef to switch back to when the OnCancel is called
texdef_t g_old_texdef;

// when TRUE, this thing means the surface inspector is currently being displayed
bool g_surfwin = FALSE;
// turn on/off processing of the "changed" "value-changed" messages
// (need to turn off when we are feeding data in)
bool g_bListenChanged = true;
// turn on/off listening of the update messages
bool g_bListenUpdate = true;

extern void *g_pMainWidget;

GtkWidget *create_SurfaceInspector( void );
GtkWidget *SurfaceInspector = NULL;

GtkWidget *m_pWidget;
GtkWidget *GetWidget() { return SurfaceInspector; }
GtkWidget *Get_SI_Module_Widget() { return SurfaceInspector; }
void SetWidget( GtkWidget *new_widget ) { m_pWidget = new_widget; }
GtkWidget *GetDlgWidget( const char* name )
{ return GTK_WIDGET( g_object_get_data( G_OBJECT( SurfaceInspector ), name ) ); }

// Spins for FitTexture
GtkWidget *spin_width;
GtkWidget *spin_height;

GtkSizeGroup *axial_size_group, *flip_size_group;

GtkWidget *texture_combo;
GtkWidget *texture_combo_entry;

GtkWidget *reset_increment_button;

GtkAdjustment *hshift_value_spinbutton_adj;
GtkWidget *hshift_value_spinbutton;
GtkAdjustment *vshift_value_spinbutton_adj;
GtkWidget *vshift_value_spinbutton;
GtkAdjustment *hscale_value_spinbutton_adj;
GtkWidget *hscale_value_spinbutton;
GtkAdjustment *vscale_value_spinbutton_adj;
GtkWidget *vscale_value_spinbutton;
GtkAdjustment *rotate_value_spinbutton_adj;
GtkWidget *rotate_value_spinbutton;

GtkAdjustment *hshift_step_spinbutton_adj;
GtkWidget *hshift_step_spinbutton;
GtkAdjustment *vshift_step_spinbutton_adj;
GtkWidget *vshift_step_spinbutton;
GtkAdjustment *hscale_step_spinbutton_adj;
GtkWidget *hscale_step_spinbutton;
GtkAdjustment *vscale_step_spinbutton_adj;
GtkWidget *vscale_step_spinbutton;
GtkAdjustment *rotate_step_spinbutton_adj;
GtkWidget *rotate_step_spinbutton;

GtkAdjustment *fit_width_spinbutton_adj;
GtkWidget *fit_width_spinbutton;
GtkAdjustment *fit_height_spinbutton_adj;
GtkWidget *fit_height_spinbutton;
GtkWidget *fit_button;
GtkWidget *swap_button;
GtkWidget *axial_button;
GtkWidget *axial_grid_button;
GtkWidget *reset_shift_button;
GtkWidget *reset_scale_button;
GtkWidget *reset_rotate_button;
//GtkWidget *reset_button;
GtkWidget *horizontalflip_button;
GtkWidget *verticalflip_button;
GtkWidget *horizontalMirrorButton;
GtkWidget *verticalMirrorButton;


// Callbacks
gboolean on_texture_combo_entry_key_press_event( GtkWidget *widget, GdkEventKey *event, gpointer user_data );
void on_texture_combo_entry_activate( GtkEntry *entry, gpointer user_data );

static void on_hshift_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_vshift_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_hscale_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_vscale_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_rotate_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );

static void on_hshift_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_vshift_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_hscale_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_vscale_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_rotate_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );

static void on_fit_width_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_fit_height_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data );
static void on_fit_button_clicked( GtkButton *button, gpointer user_data );
static void on_swap_button_clicked( GtkButton *button, gpointer user_data );

static void on_axial_button_clicked( GtkButton *button, gpointer user_data );
static void on_axial_grid_button_clicked( GtkButton *button, gpointer user_data );
static void on_reset_shift_button_clicked( GtkButton *button, gpointer user_data );
static void on_reset_rotate_button_clicked( GtkButton *button, gpointer user_data );
static void on_reset_scale_button_clicked( GtkButton *button, gpointer user_data );
static void on_reset_increments_button_clicked( GtkButton *button, gpointer user_data );
static void on_horizontal_flip_button_clicked( GtkButton *button, gpointer user_data );
static void on_vertical_flip_button_clicked( GtkButton *button, gpointer user_data );
static void on_mirror_horizontal_button_clicked( GtkButton *button, gpointer user_data );
static void on_mirror_vertical_button_clicked( GtkButton *button, gpointer user_data );



/*
   ===================================================

   SURFACE INSPECTOR

   ===================================================
 */


void IsFaceConflicting(){
	texdef_t* tmp_texdef;
	texdef_to_face_t* temp_texdef_face_list;
    char texture_name[MAX_TEXPATH_SIZE];

    int texWidth = 0;
    int texHeight = 0;

    // NAB622: These must always be reset or they may retain old values by mistake
    gtk_label_set_text( GTK_LABEL( textureWidthLabel ), " " );
    gtk_label_set_text( GTK_LABEL( textureHeightLabel ), " " );

    if ( texdef_face_list_empty() ) {
		gtk_entry_set_text( GTK_ENTRY( hshift_value_spinbutton ), "" );
		gtk_entry_set_text( GTK_ENTRY( vshift_value_spinbutton ), "" );
		gtk_entry_set_text( GTK_ENTRY( hscale_value_spinbutton ), "" );
		gtk_entry_set_text( GTK_ENTRY( vscale_value_spinbutton ), "" );
		gtk_entry_set_text( GTK_ENTRY( rotate_value_spinbutton ), "" );
        gtk_entry_set_text( GTK_ENTRY( texture_combo_entry ), "" );
        return;
	}

    g_bListenChanged = FALSE;

    tmp_texdef = &get_texdef_face_list()->texdef;

    strcpy( texture_name, tmp_texdef->GetName() );

    texdef_SI_values.shift[0] = tmp_texdef->shift[0];
    texdef_SI_values.shift[1] = tmp_texdef->shift[1];
    texdef_SI_values.scale[0] = tmp_texdef->scale[0];
    texdef_SI_values.scale[1] = tmp_texdef->scale[1];
    texdef_SI_values.rotate = tmp_texdef->rotate;
    texdef_SI_values.SetName( texture_name );

    is_HShift_conflicting = FALSE;
    is_VShift_conflicting = FALSE;
    is_HScale_conflicting = FALSE;
    is_VScale_conflicting = FALSE;
    is_Rotate_conflicting = FALSE;
    is_TextureName_conflicting = FALSE;

    // NAB622: Before we do anything else, NORMALIZE ALL shift & rotate values! There's no reason for them to be beyond their maximums!
    if ( !texdef_face_list_empty() ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            // NAB622: Get the width and height for use in the labels
            texWidth = temp_texdef_face_list->face->d_texture->width;
            texHeight = temp_texdef_face_list->face->d_texture->height;

            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[0] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[0], temp_texdef_face_list->face->d_texture->width );
            tmp_texdef->shift[1] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[1], temp_texdef_face_list->face->d_texture->height );
            tmp_texdef->rotate = calculateVecRotatingValueBeneathMax( tmp_texdef->rotate, 360 );
        }
    }


    if ( texdef_face_list_size() > 1 ) {
    temp_texdef_face_list = get_texdef_face_list()->next;

        for (; temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = &temp_texdef_face_list->texdef;
            if ( texdef_SI_values.shift[0] != tmp_texdef->shift[0] ) {
                is_HShift_conflicting = TRUE;
            }

            if ( texdef_SI_values.shift[1] != tmp_texdef->shift[1] ) {
                is_VShift_conflicting = TRUE;
            }

            if ( texdef_SI_values.scale[0] != tmp_texdef->scale[0] ) {
                is_HScale_conflicting = TRUE;
            }

            if ( texdef_SI_values.scale[1] != tmp_texdef->scale[1] ) {
                is_VScale_conflicting = TRUE;
            }

            if ( texdef_SI_values.rotate != tmp_texdef->rotate ) {
                is_Rotate_conflicting = TRUE;
            }

            if ( strcmp( texture_name, tmp_texdef->GetName() ) ) {
                is_TextureName_conflicting = TRUE;
            }
        }
	}

	if ( is_HShift_conflicting ) {
		gtk_entry_set_text( GTK_ENTRY( hshift_value_spinbutton ), "" );
	} else {
        gtk_spin_button_set_value( GTK_SPIN_BUTTON( hshift_value_spinbutton ), texdef_SI_values.shift[0] );
	}

	if ( is_VShift_conflicting ) {
		gtk_entry_set_text( GTK_ENTRY( vshift_value_spinbutton ), "" );
	} else {
		gtk_spin_button_set_value( GTK_SPIN_BUTTON( vshift_value_spinbutton ), texdef_SI_values.shift[1] );
	}

	if ( is_HScale_conflicting ) {
		gtk_entry_set_text( GTK_ENTRY( hscale_value_spinbutton ), "" );
	} else {
		gtk_spin_button_set_value( GTK_SPIN_BUTTON( hscale_value_spinbutton ), texdef_SI_values.scale[0] );
	}

	if ( is_VScale_conflicting ) {
		gtk_entry_set_text( GTK_ENTRY( vscale_value_spinbutton ), "" );
	} else {
		gtk_spin_button_set_value( GTK_SPIN_BUTTON( vscale_value_spinbutton ), texdef_SI_values.scale[1] );
	}

	if ( is_Rotate_conflicting ) {
		gtk_entry_set_text( GTK_ENTRY( rotate_value_spinbutton ), "" );
	} else {
		gtk_spin_button_set_value( GTK_SPIN_BUTTON( rotate_value_spinbutton ), texdef_SI_values.rotate );
	}

    if( !is_TextureName_conflicting ) {
        char texWidthString[10];
        char texHeightString[10];

        sprintf( texWidthString, "%i", texWidth );
        sprintf( texHeightString, "%i", texHeight );
        gtk_label_set_text( GTK_LABEL( textureWidthLabel ), texWidthString );
        gtk_label_set_text( GTK_LABEL( textureHeightLabel ), texHeightString );
    }

    g_bListenChanged = TRUE;
}

static void PopulateTextureComboList(){
	texdef_t* tmp_texdef;
	texdef_to_face_t* temp_texdef_face_list;
	char blank[1];
	GList *items = NULL;
	GList *lst;
	int num_of_list_items = 0;

	blank[0] = 0;

	//clear combo box
#if GTK_CHECK_VERSION( 3, 0, 0 )
	gtk_combo_box_text_remove_all( GTK_COMBO_BOX_TEXT( texture_combo ) );
#else
	GtkListStore *store;
	store = GTK_LIST_STORE( gtk_combo_box_get_model( GTK_COMBO_BOX( texture_combo ) ) );
	gtk_list_store_clear( store );
#endif

    if ( texdef_face_list_empty() ) {
		items = g_list_append( items, (gpointer) blank );
		// For Texture Entry, activate only on entry change
		strcpy( old_texture_entry, blank );
	}
	else if ( !is_TextureName_conflicting ) {
		temp_texdef_face_list = get_texdef_face_list();
		tmp_texdef = (texdef_t *) &get_texdef_face_list()->texdef;
		items = g_list_append( items, (gpointer) tmp_texdef->GetName() );
		// For Texture Entry, activate only on entry change
		strcpy( old_texture_entry, tmp_texdef->GetName() );
	}
	else
	{
		for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
		{
			tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
			// Need to do a string compare, hence the custom search
			if ( !( g_list_find_custom( items, tmp_texdef->GetName(), (GCompareFunc) strcmp ) ) ) {
				items = g_list_append( items, (gpointer) tmp_texdef->GetName() );
				num_of_list_items++;
			}
			// Make sure the combo list isn't too long
            if ( num_of_list_items >= MAX_NUM_TEXTURE_LIST_ITEMS ) {
				break;
			}
		}
		// If this isn't added last (to the top of the list), g_list_find freaks.
		items = g_list_prepend( items, (gpointer) blank );
		// For Texture Entry, activate only on entry change
		strcpy( old_texture_entry, blank );
	}

	for( lst = items; lst != NULL; lst = g_list_next( lst ) )
	{
		gtk_combo_box_text_append_text( GTK_COMBO_BOX_TEXT( texture_combo ), (const char *)lst->data );
	}
	g_list_free( items );

	gtk_combo_box_set_active( GTK_COMBO_BOX( GTK_COMBO_BOX_TEXT( texture_combo ) ), 0 );
}

static void ZeroOffsetValues(){
	texdef_offset.shift[0] = 0.0;
	texdef_offset.shift[1] = 0.0;
	texdef_offset.scale[0] = 0.0;
	texdef_offset.scale[1] = 0.0;
	texdef_offset.rotate = 0.0;
}

static void GetTexdefInfo_from_Radiant(){
	g_texdef_face_vector.clear();

	unsigned int count = GetSelectedFaceCountfromBrushes();
	if ( count == 0 ) {
		count = GetSelectedFaceCount();
	}

	g_texdef_face_vector.resize( count );

	if ( !texdef_face_list_empty() ) {
//    texdef_to_face_t* p = get_texdef_face_list();
		GetSelFacesTexdef( get_texdef_face_list() );
	}

	IsFaceConflicting();
	PopulateTextureComboList();
	ZeroOffsetValues();
}

static gint apply_and_hide( GtkWidget *widget, GdkEvent *event, gpointer data ) {
  if ( !texdef_face_list_empty() ) {
    GetTexMods( TRUE );
    Sys_UpdateWindows( W_CAMERA );
    GetTexdefInfo_from_Radiant();
    SetTexMods();
  }
  HideDlg();
  return TRUE;
}

// Listen for 'Esc' globally and apply+hide - that's all we can really do (same as closing the dialog)
static gint surface_dialog_key_press( GtkWidget *widget, GdkEventKey *event, gpointer data ) {
  if ( event->keyval != GDK_KEY_Escape ) {
    return FALSE;
  }
  return apply_and_hide( widget, (GdkEvent*)event, data );
}

// make the shift increments match the grid settings
// the objective being that the shift+arrows shortcuts move the texture by the corresponding grid size
// this depends on a scale value if you have selected a particular texture on which you want it to work:
// we move the textures in pixels, not world units. (i.e. increment values are in pixel)
// depending on the texture scale it doesn't take the same amount of pixels to move of g_qeglobals.d_gridsize
// increment * scale = gridsize
// hscale and vscale are optional parameters, if they are zero they will be set to the default scale
// NOTE: the default scale depends if you are using BP mode or regular.
// For regular it's 0.5f (128 pixels cover 64 world units), for BP it's simply 1.0f
// see fenris #2810
void DoSnapTToGrid( float hscale, float vscale ){
	l_pIncrement = Get_SI_Inc();

	if ( hscale == 0.0f ) {
        hscale = GetDefaultScaleValue();
	}
	if ( vscale == 0.0f ) {
        vscale = GetDefaultScaleValue();
	}
#ifdef _DEBUG
	Sys_Printf( "DoSnapTToGrid: hscale %g vscale %g\n", hscale, vscale );
#endif
	l_pIncrement->shift[0] = GridSize() / hscale;
	l_pIncrement->shift[1] = GridSize() / vscale;
	// now some update work
	// FIXME: doesn't look good here, seems to be called several times
	SetTexMods();
}

void UpdateSurfaceDialog(){
	if ( !g_bListenUpdate ) {
		return;
	}

	if ( SurfaceInspector == NULL ) {
		return;
	}

    // avoid long delays on slow computers
	while ( gtk_events_pending() ) {
		gtk_main_iteration();
        }

	if ( g_surfwin ) {
		GetTexdefInfo_from_Radiant();
		SetTexMods();
	}

}

// DoSurface will always try to show the surface inspector
// or update it because something new has been selected
void DoSurface( void ) {
#ifdef DBG_SI
  Sys_Printf( "DoSurface\n" );
#endif
  if ( !SurfaceInspector ) {
    create_SurfaceInspector();
  }

  ShowDlg();
  SetTexMods();
}

void ToggleSurface() {
#ifdef DBG_SI
  Sys_Printf( "ToggleSurface Module\n" );
#endif
  if ( !g_surfwin ) {
    DoSurface();
  } else {
    HideDlg();
  }
}

// NOTE: will raise and show the Surface inspector and exec fit for patches and brushes
void SurfaceDlgFitAll(){
	DoSurface();
	FitAll();
}

// =============================================================================
// SurfaceDialog class

void ShowDlg() {
  if ( !SurfaceInspector ) {
    create_SurfaceInspector();
  } else {
    gtk_widget_show( SurfaceInspector );
  }

  GetTexdefInfo_from_Radiant();
  GetTexMods( TRUE ); // Set Initial Undo Point
  g_surfwin = TRUE;
}

void HideDlg() {
  g_surfwin = FALSE;
  gtk_widget_hide( SurfaceInspector );
}

void CancelDlg() {
  //NAB622: There is no cancel button on the surface inspector any more.
  //If you want to enable this again, remove the next line and un-comment the code block below that
  Sys_Printf( "WARNING: Cancel function called on surface inspector. Closing...\n" );

/*
  texturewin = Texturewin();
  texturewin->texdef = g_old_texdef;
  // cancel the last do if we own it
  if ( ( m_nUndoId == Undo_GetUndoId() ) && ( m_nUndoId != 0 ) ) {
    #ifdef DBG_SI
      Sys_Printf( "CancelDlg calling Undo_Undo\n" );
    #endif
    g_bListenUpdate = false;
    Undo_Undo( TRUE );
    g_bListenUpdate = true;
    m_nUndoId = 0;
  }
*/

  HideDlg();
}

// set default values for increments (shift scale and rot)
// this is called by the prefs code if can't find the values
void InitDefaultIncrement( texdef_t *tex ){
    tex->SetName( "system/caulk" );
    tex->shift[0] = 0;
    tex->shift[1] = 0;
    tex->scale[0] = GetDefaultScaleValue();
    tex->scale[1] = GetDefaultScaleValue();
    tex->rotate = 0;
}

void BuildDialog(){
	if ( !SurfaceInspector ) {
		create_SurfaceInspector();
	}
}

/*
   ==============
   SetTexMods

   Set the fields to the current texdef (i.e. map/texdef -> dialog widgets)
   ===============
 */

void SetTexMods(){
	texdef_t *pt;
	GtkSpinButton *spin;
	GtkAdjustment *adjust;

	texturewin = Texturewin();
	l_pIncrement = Get_SI_Inc();

#ifdef DBG_SI
	Sys_Printf( "SurfaceDlg SetTexMods\n" );
#endif

	if ( !g_surfwin ) {
		return;
	}

	pt = &texturewin->texdef;

	g_bListenChanged = false;

	if ( strncmp( pt->GetName(), "textures/", 9 ) != 0 ) {
		texdef_offset.SetName( SHADER_NOT_FOUND );
	}

    spin = GTK_SPIN_BUTTON( hshift_value_spinbutton );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( spin ) );
	gtk_adjustment_set_step_increment( adjust, l_pIncrement->shift[0] );
	spin = GTK_SPIN_BUTTON( hshift_step_spinbutton );
	gtk_spin_button_set_value( spin, l_pIncrement->shift[0] );
	gtk_spin_button_set_increments( spin, l_pIncrement->shift[0], l_pIncrement->shift[0] );

	spin = GTK_SPIN_BUTTON( vshift_value_spinbutton );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( spin ) );
	gtk_adjustment_set_step_increment( adjust, l_pIncrement->shift[1] );
	spin = GTK_SPIN_BUTTON( vshift_step_spinbutton );
	gtk_spin_button_set_value( spin, l_pIncrement->shift[1] );
	gtk_spin_button_set_increments( spin, l_pIncrement->shift[1], l_pIncrement->shift[1] );

	spin = GTK_SPIN_BUTTON( hscale_value_spinbutton );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( spin ) );
	gtk_adjustment_set_step_increment( adjust, l_pIncrement->scale[0] );
	spin = GTK_SPIN_BUTTON( hscale_step_spinbutton );
    gtk_spin_button_set_value( spin, l_pIncrement->scale[0] );
    gtk_spin_button_set_increments( spin, l_pIncrement->scale[0], l_pIncrement->scale[0] );

	spin = GTK_SPIN_BUTTON( vscale_value_spinbutton );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( spin ) );
	gtk_adjustment_set_step_increment( adjust, l_pIncrement->scale[1] );
	spin = GTK_SPIN_BUTTON( vscale_step_spinbutton );
	gtk_spin_button_set_value( spin, l_pIncrement->scale[1] );
	gtk_spin_button_set_increments( spin, l_pIncrement->scale[1], l_pIncrement->scale[1] );

	spin = GTK_SPIN_BUTTON( rotate_value_spinbutton );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( spin ) );
	gtk_adjustment_set_step_increment( adjust, l_pIncrement->rotate );
	spin = GTK_SPIN_BUTTON( rotate_step_spinbutton );
	gtk_spin_button_set_value( spin, l_pIncrement->rotate );
	gtk_spin_button_set_increments( spin, l_pIncrement->rotate, l_pIncrement->rotate );

	g_bListenChanged = true;

	// store the current texdef as our escape route if user hits OnCancel
	g_old_texdef = texturewin->texdef;
}

/*
   ==============
   GetTexMods

   Shows any changes to the main Radiant windows
   ===============
 */
void GetTexMods( bool b_SetUndoPoint ) {

#ifdef DBG_SI
	Sys_Printf( "SurfaceDlg GetTexMods\n" );
#endif

	if ( !texdef_face_list_empty() ) {
		g_bListenUpdate = FALSE;
		SetTexdef_FaceList( get_texdef_face_list(), b_SetUndoPoint, false );
		g_bListenUpdate = TRUE;

		if ( b_SetUndoPoint ) {
			m_nUndoId = Undo_GetUndoId();
		}
	}
}

void FitAll(){
	on_fit_button_clicked( NULL, NULL );
}


////////////////////////////////////////////////////////////////////
//
//  GUI Section
//
////////////////////////////////////////////////////////////////////

GtkWidget* create_SurfaceInspector( void ){

    char tempTooltip[256];

    GtkWidget *label;
    GtkWidget *hseparator;
    GtkWidget *eventbox;

	GtkWidget *viewport8;

    GtkWidget *textureFrame;
    GtkWidget *textureFrameTable;
    GtkWidget *coordinatesFrame;
    GtkWidget *flippingFrame;
    GtkWidget *fittingFrame;

    GtkWidget *table1;
	GtkWidget *table5;
    GtkWidget *flipTable;

	GtkWidget *vbox7;

    axial_size_group = gtk_size_group_new( GTK_SIZE_GROUP_BOTH );

	SurfaceInspector = gtk_window_new( GTK_WINDOW_TOPLEVEL );
    gtk_window_set_title( GTK_WINDOW( SurfaceInspector ), _( "Surface Inspector" ) );
    gtk_window_set_transient_for( GTK_WINDOW( SurfaceInspector ), GTK_WINDOW( g_pMainWidget ) );
    /* NAB622: For some reason, being a transient is not keeping the surface inspector on top of everything else.
    The SI cannot be set to 'modal' because then everything in Radiant becomes un-clickable.
    So, for now, we'll have the SI stay on top of *ALL* other windows at the OS level, including windows outside of Radiant.
    It's a hack, but until the right solution is found, at least it stops the SI from getting lost!! */
    gtk_window_set_keep_above(GTK_WINDOW(SurfaceInspector), TRUE);
    gtk_container_set_border_width( GTK_CONTAINER( SurfaceInspector ), 4 );
	SetWinPos_from_Prefs( SurfaceInspector );

    viewport8 = gtk_viewport_new( NULL, NULL );
    gtk_container_add( GTK_CONTAINER( SurfaceInspector ), viewport8 );
    gtk_viewport_set_shadow_type( GTK_VIEWPORT( viewport8 ), GTK_SHADOW_NONE );
    gtk_widget_show( viewport8 );

    vbox7 = gtk_vbox_new( FALSE, 0 );
    gtk_container_add( GTK_CONTAINER( viewport8 ), vbox7 );
    gtk_widget_show( vbox7 );

    textureFrame = gtk_frame_new( _( "Texture" ) );
    gtk_box_pack_start( GTK_BOX( vbox7 ), textureFrame, FALSE, TRUE, 0 );
    gtk_widget_show( textureFrame );

    textureFrameTable = gtk_table_new( 2, 3, FALSE );
    gtk_table_set_col_spacings( GTK_TABLE( textureFrameTable ), 2 );
    gtk_table_set_row_spacings( GTK_TABLE( textureFrameTable ), 2 );
    gtk_container_add( GTK_CONTAINER( textureFrame ), textureFrameTable );
    gtk_widget_show( textureFrameTable );

        texture_combo = gtk_combo_box_text_new_with_entry();
        gtk_widget_set_tooltip_text( texture_combo, _( "To change the texture, select a new one in the texture window, middle-click one in the 3D view, or type a new one here and press ENTER" ) );
        gtk_table_attach( GTK_TABLE( textureFrameTable ), texture_combo, 0, 2, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( 0 ), 0, 0 );
        gtk_widget_show( texture_combo );

                texture_combo_entry = gtk_bin_get_child( GTK_BIN( texture_combo ) );
                gtk_entry_set_max_length( GTK_ENTRY( texture_combo_entry ), MAX_TEXPATH_SIZE );
                gtk_widget_show( texture_combo_entry );

            label = gtk_label_new( _( "Width:" ) );
            gtk_widget_set_tooltip_text( label, _( "This is the width of the texture in pixels" ) );
            gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
            gtk_table_attach( GTK_TABLE( textureFrameTable ), label, 0, 1, 1, 2,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( 0 ), 0, 0 );
            gtk_widget_show( label );

            textureWidthLabel = gtk_label_new( _( " " ) );
            gtk_widget_modify_font( textureWidthLabel, pango_font_description_from_string( "monospace bold 12" ));
            gtk_widget_set_tooltip_text( textureWidthLabel, _( "This is the width of the texture in pixels" ) );
            gtk_misc_set_alignment( GTK_MISC( textureWidthLabel ), 0.5, 0 );
            gtk_table_attach( GTK_TABLE( textureFrameTable ), textureWidthLabel, 0, 1, 2, 3,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( 0 ), 0, 0 );
            gtk_widget_show( textureWidthLabel );

            label = gtk_label_new( _( "Height:" ) );
            gtk_widget_set_tooltip_text( label, _( "This is the height of the texture in pixels" ) );
            gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
            gtk_table_attach( GTK_TABLE( textureFrameTable ), label, 1, 2, 1, 2,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( 0 ), 0, 0 );
            gtk_widget_show( label );

            textureHeightLabel = gtk_label_new( _( " " ) );
            gtk_widget_set_tooltip_text( textureHeightLabel, _( "This is the height of the texture in pixels" ) );
            gtk_widget_modify_font(textureHeightLabel, pango_font_description_from_string("monospace bold 12"));
            gtk_misc_set_alignment( GTK_MISC( textureHeightLabel ), 0.5, 0 );
            gtk_table_attach( GTK_TABLE( textureFrameTable ), textureHeightLabel, 1, 2, 2, 3,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( 0 ), 0, 0 );
            gtk_widget_show( textureHeightLabel );


    coordinatesFrame = gtk_frame_new( _( "Texture Coordinates" ) );
    gtk_box_pack_start( GTK_BOX( vbox7 ), coordinatesFrame, FALSE, TRUE, 0 );
    gtk_widget_show( coordinatesFrame );

    table1 = gtk_table_new( 14, 6, FALSE );
    gtk_table_set_col_spacings( GTK_TABLE( table1 ), 2 );
    gtk_table_set_row_spacings( GTK_TABLE( table1 ), 2 );
    gtk_container_add( GTK_CONTAINER( coordinatesFrame ), table1 );
    gtk_widget_show( table1 );

	hseparator = gtk_hseparator_new();
    gtk_table_attach( GTK_TABLE( table1 ), hseparator, 1, 5, 5, 6,
					  (GtkAttachOptions) ( GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
	gtk_widget_show( hseparator );

	hseparator = gtk_hseparator_new();
    gtk_table_attach( GTK_TABLE( table1 ), hseparator, 1, 5, 7, 8,
					  (GtkAttachOptions) ( GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
	gtk_widget_show( hseparator );

	hseparator = gtk_hseparator_new();
    gtk_table_attach( GTK_TABLE( table1 ), hseparator, 1, 5, 11, 12,
					  (GtkAttachOptions) ( GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
	gtk_widget_show( hseparator );

    label = gtk_label_new( _( "←" ) );
    gtk_widget_modify_font(label, pango_font_description_from_string("Sans 18"));
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_table_attach( GTK_TABLE( table1 ), label, 3, 4, 2, 3,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( label );

    label = gtk_label_new( _( "←" ) );
    gtk_widget_modify_font(label, pango_font_description_from_string("Sans 18"));
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_table_attach( GTK_TABLE( table1 ), label, 3, 4, 4, 5,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( label );

    label = gtk_label_new( _( "←" ) );
    gtk_widget_modify_font(label, pango_font_description_from_string("Sans 18"));
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_table_attach( GTK_TABLE( table1 ), label, 3, 4, 6, 7,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( label );

    label = gtk_label_new( _( "←" ) );
    gtk_widget_modify_font(label, pango_font_description_from_string("Sans 18"));
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_table_attach( GTK_TABLE( table1 ), label, 3, 4, 8, 9,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( label );

    label = gtk_label_new( _( "←" ) );
    gtk_widget_modify_font(label, pango_font_description_from_string("Sans 18"));
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_table_attach( GTK_TABLE( table1 ), label, 3, 4, 10, 11,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( label );

    label = gtk_label_new( _( "Increment" ) );
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_table_attach( GTK_TABLE( table1 ), label, 4, 5, 1, 2,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( label );

    label = gtk_label_new( _( "Value" ) );
    gtk_table_attach( GTK_TABLE( table1 ), label, 2, 3, 1, 2,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_widget_show( label );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 1, 2, 12, 13,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( eventbox );

    axial_button = gtk_button_new_with_mnemonic( _( "Axial" ) );
    gtk_widget_set_tooltip_text( axial_button, _( "This will set all shift and rotate values to 0, and sets the scale to 0.5" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), axial_button );
    gtk_container_set_border_width( GTK_CONTAINER( axial_button ), 4 );
    gtk_size_group_add_widget( axial_size_group, axial_button );
    gtk_widget_show( axial_button );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 1, 2, 13, 14,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( eventbox );

    axial_grid_button = gtk_button_new_with_mnemonic( _( "Axial Grid" ) );
    gtk_widget_set_tooltip_text( axial_grid_button, _( "This will reset the shift and rotate of the texture to 0, and set the scale so that 1 pixel equals the current grid size" ) );
    gtk_container_set_border_width( GTK_CONTAINER( axial_grid_button ), 4 );
    gtk_container_add( GTK_CONTAINER( eventbox ), axial_grid_button );
    gtk_size_group_add_widget( axial_size_group, axial_grid_button );
    gtk_widget_show( axial_grid_button );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 2, 3, 12, 13,
                      (GtkAttachOptions) ( GTK_FILL | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( eventbox );

    reset_shift_button = gtk_button_new_with_mnemonic( _( "Reset Shift" ) );
    gtk_widget_set_tooltip_text( reset_shift_button, _( "This will reset the horizontal and vertical shift values to 0" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), reset_shift_button );
    gtk_container_set_border_width( GTK_CONTAINER( reset_shift_button ), 4 );
    gtk_widget_show( reset_shift_button );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 2, 3, 13, 14,
                      (GtkAttachOptions) ( GTK_FILL | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( eventbox );

    reset_rotate_button = gtk_button_new_with_mnemonic( _( "Reset Rotate" ) );
    gtk_widget_set_tooltip_text( reset_rotate_button, _( "This will reset the rotate value to 0" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), reset_rotate_button );
    gtk_container_set_border_width( GTK_CONTAINER( reset_rotate_button ), 4 );
    gtk_widget_show( reset_rotate_button );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 2, 3, 14, 15,
                      (GtkAttachOptions) ( GTK_FILL | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( eventbox );

    reset_scale_button = gtk_button_new_with_mnemonic( _( "Reset Scale" ) );
    // NAB622: For cleanliness sake, let's remove the trailing zeroes
    char scale_tooltip_value[128];
        switch( getFloatDecimalPrecision( GetDefaultScaleValue() ) ) {
            case 0:
                sprintf( scale_tooltip_value, "This will reset the horizontal and vertical scale values to %i", (int) GetDefaultScaleValue() );
                break;
            case 1:
                sprintf( scale_tooltip_value, "This will reset the horizontal and vertical scale values to %.1f", (float) GetDefaultScaleValue() );
                break;
            case 2:
                sprintf( scale_tooltip_value, "This will reset the horizontal and vertical scale values to %.2f", (float) GetDefaultScaleValue() );
                break;
            case 3:
                sprintf( scale_tooltip_value, "This will reset the horizontal and vertical scale values to %.3f", (float) GetDefaultScaleValue() );
                break;
            case 4:
                sprintf( scale_tooltip_value, "This will reset the horizontal and vertical scale values to %.4f", (float) GetDefaultScaleValue() );
                break;
            case 5:
                sprintf( scale_tooltip_value, "This will reset the horizontal and vertical scale values to %.5f", (float) GetDefaultScaleValue() );
                break;
            default:
                sprintf( scale_tooltip_value, "This will reset the horizontal and vertical scale values to %f", (float) GetDefaultScaleValue() );
        }

    gtk_widget_set_tooltip_text( reset_scale_button, _( scale_tooltip_value ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), reset_scale_button );
    gtk_container_set_border_width( GTK_CONTAINER( reset_scale_button ), 4 );
    gtk_widget_show( reset_scale_button );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 4, 5, 12, 13,
                      (GtkAttachOptions) ( GTK_FILL | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_widget_show( eventbox );

    reset_increment_button = gtk_button_new_with_mnemonic( _( "Reset Increments" ) );
    gtk_widget_set_tooltip_text( reset_increment_button, _( "This will reset the increment values to their defaults" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), reset_increment_button );
    gtk_widget_show( reset_increment_button );

//    flippingFrame = gtk_frame_new( _( "Mirror & Flip" ) );
    flippingFrame = gtk_frame_new( _( "Mirror" ) );
    gtk_box_pack_start( GTK_BOX( vbox7 ), flippingFrame, FALSE, TRUE, 0 );
    gtk_widget_show( flippingFrame );

        flip_size_group = gtk_size_group_new( GTK_SIZE_GROUP_BOTH );

        flipTable = gtk_table_new( 2, 2, FALSE );
        gtk_container_set_border_width( GTK_CONTAINER( flipTable ), 5 );
        gtk_table_set_col_spacings( GTK_TABLE( flipTable ), 2 );
        gtk_container_add( GTK_CONTAINER( flippingFrame ), flipTable );
        gtk_widget_show( flipTable );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( flipTable ), eventbox, 0, 1, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_widget_show( eventbox );

        horizontalMirrorButton = gtk_button_new_with_mnemonic( _( "Mirror Horizontal" ) );
        gtk_widget_set_tooltip_text( horizontalMirrorButton, _( "This will mirror the texture across it's width, without changing the positioning" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), horizontalMirrorButton );
        gtk_container_set_border_width( GTK_CONTAINER( horizontalMirrorButton ), 4 );
        gtk_widget_show( horizontalMirrorButton );
        g_signal_connect( (gpointer) horizontalMirrorButton, "clicked", G_CALLBACK( on_mirror_horizontal_button_clicked ), NULL );
        gtk_size_group_add_widget( flip_size_group, horizontalMirrorButton );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( flipTable ), eventbox, 1, 2, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_widget_show( eventbox );

        verticalMirrorButton = gtk_button_new_with_mnemonic( _( "Mirror Vertical" ) );
        gtk_widget_set_tooltip_text( verticalMirrorButton, _( "This will mirror the texture across it's height, without changing the positioning" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), verticalMirrorButton );
        gtk_container_set_border_width( GTK_CONTAINER( verticalMirrorButton ), 4 );
        gtk_widget_show( verticalMirrorButton );
        g_signal_connect( (gpointer) verticalMirrorButton, "clicked", G_CALLBACK( on_mirror_vertical_button_clicked ), NULL );
        gtk_size_group_add_widget( flip_size_group, verticalMirrorButton );

/*
    // NAB622: I'm not sure this is even possible.....commenting it out for now

            eventbox = gtk_event_box_new();
            gtk_table_attach( GTK_TABLE( flipTable ), eventbox, 0, 1, 1, 2,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
            gtk_widget_show( eventbox );

            horizontalflip_button = gtk_button_new_with_mnemonic( _( "Flip Horizontal" ) );
            gtk_widget_set_tooltip_text( horizontalflip_button, _( "This will flip the texture and positioning across it's width" ) );
            gtk_container_add( GTK_CONTAINER( eventbox ), horizontalflip_button );
            gtk_container_set_border_width( GTK_CONTAINER( horizontalflip_button ), 4 );
            gtk_widget_show( horizontalflip_button );
            gtk_size_group_add_widget( flip_size_group, horizontalflip_button );

            eventbox = gtk_event_box_new();
            gtk_table_attach( GTK_TABLE( flipTable ), eventbox, 1, 2, 1, 2,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
            gtk_widget_show( eventbox );

            verticalflip_button = gtk_button_new_with_mnemonic( _( "Flip Vertical" ) );
            gtk_widget_set_tooltip_text( verticalflip_button, _( "This will flip the texture and positioning across it's height" ) );
            gtk_container_add( GTK_CONTAINER( eventbox ), verticalflip_button );
            gtk_container_set_border_width( GTK_CONTAINER( verticalflip_button ), 4 );
            gtk_widget_show( verticalflip_button );
            gtk_size_group_add_widget( flip_size_group, verticalflip_button );
*/

            g_object_unref( axial_size_group );
            g_object_unref( flip_size_group );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 1, 2, 2, 3,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
    gtk_widget_show( eventbox );

    label = gtk_label_new( _( "Horizontal Shift: " ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), label );
    gtk_widget_set_tooltip_text( label, _( "This value is given in pixels, and cannot be larger than the image's width" ) );
    gtk_misc_set_alignment( GTK_MISC( label ), 1.0, 0.5 );
    gtk_widget_show( label );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 1, 2, 4, 5,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
    gtk_widget_show( eventbox );

    label = gtk_label_new( _( "Vertical Shift: " ) );
	gtk_container_add( GTK_CONTAINER( eventbox ), label );
    gtk_widget_set_tooltip_text( label, _( "This value is given in pixels, and cannot be larger than the image's height" ) );
    gtk_misc_set_alignment( GTK_MISC( label ), 1.0, 0.5 );
	gtk_widget_show( label );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 1, 2, 6, 7,
                      (GtkAttachOptions) ( GTK_FILL ),
                      (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
    gtk_widget_show( eventbox );

    label = gtk_label_new( _( "Rotate: " ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), label );
    gtk_widget_set_tooltip_text( label, _( "This value is given in degrees, and cannot be larger than 360" ) );
    gtk_misc_set_alignment( GTK_MISC( label ), 1.0, 0.5 );
    gtk_widget_show( label );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 1, 2, 8, 9,
					  (GtkAttachOptions) ( GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
	gtk_widget_show( eventbox );

	label = gtk_label_new( _( "Horizontal Scale: " ) );
    gtk_widget_set_tooltip_text( label, _( "This value is a multiplier, equivalent to the number of grid units used for each pixel of the texture. Smaller numbers result in smaller textures" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), label );
    gtk_misc_set_alignment( GTK_MISC( label ), 1.0, 0.5 );
	gtk_widget_show( label );

	eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 1, 2, 10, 11,
					  (GtkAttachOptions) ( GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
	gtk_widget_show( eventbox );

	label = gtk_label_new( _( "Vertical Scale: " ) );
    gtk_widget_set_tooltip_text( label, _( "This value is a multiplier, equivalent to the number of grid units used for each pixel of the texture. Smaller numbers result in smaller textures" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), label );
    gtk_misc_set_alignment( GTK_MISC( label ), 1.0, 0.5 );
	gtk_widget_show( label );

	eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table1 ), eventbox, 2, 3, 12, 13,
					  (GtkAttachOptions) ( GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
	gtk_widget_show( eventbox );

    fittingFrame = gtk_frame_new( _( "Fitting" ) );
    gtk_box_pack_start( GTK_BOX( vbox7 ), fittingFrame, TRUE, TRUE, 0 );
    gtk_widget_show( fittingFrame );

    // Value Spins
    hshift_value_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0.0, -MAX_SHIFT_VALUE, MAX_SHIFT_VALUE, 1.0, 10.0, 0.0 ) );
    hshift_value_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( hshift_value_spinbutton_adj ), 1, TEXTURE_SHIFT_PRECISION );
    gtk_widget_set_tooltip_text( hshift_value_spinbutton, _( "This value is given in pixels, and cannot be larger than the image's width" ) );
    gtk_table_attach( GTK_TABLE( table1 ), hshift_value_spinbutton, 2, 3, 2, 3,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( hshift_value_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( hshift_value_spinbutton ), TRUE );
    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( hshift_value_spinbutton ), TRUE );
    gtk_widget_set_sensitive( GTK_WIDGET( hshift_value_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( hshift_value_spinbutton ), 1.0 ); //right
    gtk_widget_show( hshift_value_spinbutton );

    vshift_value_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0.0, -MAX_SHIFT_VALUE, MAX_SHIFT_VALUE, 1.0, 10.0, 0.0 ) );
    vshift_value_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( vshift_value_spinbutton_adj ), 1, TEXTURE_SHIFT_PRECISION );
    gtk_widget_set_tooltip_text( vshift_value_spinbutton, _( "This value is given in pixels, and cannot be larger than the image's height" ) );
    gtk_table_attach( GTK_TABLE( table1 ), vshift_value_spinbutton, 2, 3, 4, 5,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( vshift_value_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( vshift_value_spinbutton ), TRUE );
    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( vshift_value_spinbutton ), TRUE );
    gtk_widget_set_sensitive( GTK_WIDGET( vshift_value_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( vshift_value_spinbutton ), 1.0 ); //right
    gtk_widget_show( vshift_value_spinbutton );

    rotate_value_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0.0, -MAX_ROTATE_VALUE, MAX_ROTATE_VALUE, 1.0, 10.0, 0.0 ) );
    rotate_value_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( rotate_value_spinbutton_adj ), 1, TEXTURE_ROTATE_PRECISION );
    gtk_widget_set_tooltip_text( rotate_value_spinbutton, _( "This value is given in degrees, and cannot be larger than 360" ) );
    gtk_table_attach( GTK_TABLE( table1 ), rotate_value_spinbutton, 2, 3, 6, 7,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( rotate_value_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( rotate_value_spinbutton ), TRUE );
    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( rotate_value_spinbutton ), TRUE );
    gtk_widget_set_sensitive( GTK_WIDGET( rotate_value_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( rotate_value_spinbutton ), 1.0 ); //right
    gtk_widget_show( rotate_value_spinbutton );

    hscale_value_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0.0, -MAX_SCALE_VALUE, MAX_SCALE_VALUE, 1.0, 4.0, 0.0 ) );
    hscale_value_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( hscale_value_spinbutton_adj ), 1, TEXTURE_SCALE_PRECISION );
    gtk_widget_set_tooltip_text( hscale_value_spinbutton, _( "This value is a multiplier, equivalent to the number of grid units used for each pixel of the texture. Smaller numbers result in smaller textures" ) );
    gtk_table_attach( GTK_TABLE( table1 ), hscale_value_spinbutton, 2, 3, 8, 9,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( hscale_value_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( hscale_value_spinbutton ), TRUE );
    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( hscale_value_spinbutton ), TRUE );
    gtk_widget_set_sensitive( GTK_WIDGET( hscale_value_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( hscale_value_spinbutton ), 1.0 ); //right
    gtk_widget_show( hscale_value_spinbutton );

    vscale_value_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0.0, -MAX_SCALE_VALUE, MAX_SCALE_VALUE, 1.0, 4.0, 0.0 ) );
    vscale_value_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( vscale_value_spinbutton_adj ), 1, TEXTURE_SCALE_PRECISION );
    gtk_widget_set_tooltip_text( vscale_value_spinbutton, _( "This value is a multiplier, equivalent to the number of grid units used for each pixel of the texture. Smaller numbers result in smaller textures" ) );
    gtk_table_attach( GTK_TABLE( table1 ), vscale_value_spinbutton, 2, 3, 10, 11,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( vscale_value_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( vscale_value_spinbutton ), TRUE );
    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( vscale_value_spinbutton ), TRUE );
    gtk_widget_set_sensitive( GTK_WIDGET( vscale_value_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( vscale_value_spinbutton ), 1.0 ); //right
    gtk_widget_show( vscale_value_spinbutton );


    // Step Spins
    hshift_step_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( DEFAULT_SHIFT_INCREMENT_VALUE, 0, MAX_SHIFT_VALUE, 1.0, 10.0, 0.0 ) );
    hshift_step_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( hshift_step_spinbutton_adj ), 1, TEXTURE_SHIFT_PRECISION );
    gtk_widget_set_tooltip_text( hshift_step_spinbutton, _( "The horizontal shift value will change by this much when its up/down arrows are clicked" ) );
    gtk_table_attach( GTK_TABLE( table1 ), hshift_step_spinbutton, 4, 5, 2, 3,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( hshift_step_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( hshift_step_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( hshift_step_spinbutton ), 1.0 ); //right
    gtk_widget_show( hshift_step_spinbutton );

    vshift_step_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( DEFAULT_SHIFT_INCREMENT_VALUE, 0, MAX_SHIFT_VALUE, 1.0, 10.0, 0.0 ) );
    vshift_step_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( vshift_step_spinbutton_adj ), 1, TEXTURE_SHIFT_PRECISION );
    gtk_widget_set_tooltip_text( vshift_step_spinbutton, _( "The vertical shift value will change by this much when its up/down arrows are clicked" ) );
    gtk_table_attach( GTK_TABLE( table1 ), vshift_step_spinbutton, 4, 5, 4, 5,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( vshift_step_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( vshift_step_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( vshift_step_spinbutton ), 1.0 ); //right
    gtk_widget_show( vshift_step_spinbutton );

    rotate_step_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( DEFAULT_ROTATE_INCREMENT_VALUE, 0, MAX_ROTATE_VALUE, 1.0, 10.0, 0.0 ) );
    rotate_step_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( rotate_step_spinbutton_adj ), 1, TEXTURE_ROTATE_PRECISION );
    gtk_widget_set_tooltip_text( rotate_step_spinbutton, _( "The rotate value will change by this much when its up/down arrows are clicked" ) );
    gtk_table_attach( GTK_TABLE( table1 ), rotate_step_spinbutton, 4, 5, 6, 7,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( rotate_step_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( rotate_step_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( rotate_step_spinbutton ), 1.0 ); //right
    gtk_widget_show( rotate_step_spinbutton );

    hscale_step_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( DEFAULT_SCALE_INCREMENT_VALUE, 0, MAX_SCALE_VALUE, 1.0, 4.0, 0.0 ) );
    hscale_step_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( hscale_step_spinbutton_adj ), 1, TEXTURE_SCALE_PRECISION );
    gtk_widget_set_tooltip_text( hscale_step_spinbutton, _( "The horizontal scale value will change by this much when its up/down arrows are clicked" ) );
    gtk_table_attach( GTK_TABLE( table1 ), hscale_step_spinbutton, 4, 5, 8, 9,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( hscale_step_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( hscale_step_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( hscale_step_spinbutton ), 1.0 ); //right
    gtk_widget_show( hscale_step_spinbutton );

    vscale_step_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( DEFAULT_SCALE_INCREMENT_VALUE, 0, MAX_SCALE_VALUE, 1.0, 4.0, 0.0 ) );
    vscale_step_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( vscale_step_spinbutton_adj ), 1, TEXTURE_SCALE_PRECISION );
    gtk_widget_set_tooltip_text( vscale_step_spinbutton, _( "The vertical scale value will change by this much when its up/down arrows are clicked" ) );
    gtk_table_attach( GTK_TABLE( table1 ), vscale_step_spinbutton, 4, 5, 10, 11,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( 0 ), 0, 0 );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( vscale_step_spinbutton ), GTK_UPDATE_ALWAYS );
    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( vscale_step_spinbutton ), TRUE );
    gtk_entry_set_alignment( GTK_ENTRY( vscale_step_spinbutton ), 1.0 ); //right
    gtk_widget_show( vscale_step_spinbutton );

    table5 = gtk_table_new( 2, 4, FALSE );
    gtk_container_set_border_width( GTK_CONTAINER( table5 ), 5 );
	gtk_table_set_col_spacings( GTK_TABLE( table5 ), 2 );
    gtk_container_add( GTK_CONTAINER( fittingFrame ), table5 );
    gtk_widget_show( table5 );

	label = gtk_label_new( _( "Width" ) );
    gtk_table_attach( GTK_TABLE( table5 ), label, 1, 2, 0, 1,
					  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
	gtk_widget_show( label );

    label = gtk_label_new( _( "Height" ) );
    gtk_table_attach( GTK_TABLE( table5 ), label, 3, 4, 0, 1,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
    gtk_widget_show( label );

    fit_width_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( m_nWidth, -MAX_FIT_VALUE, MAX_FIT_VALUE, 1, 10, 0 ) );
    fit_width_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( fit_width_spinbutton_adj ), 1, 3 );
    sprintf( tempTooltip, "This is how many times the texture will tile horizontally when fit. Valid values are %.3f through %.3f, decimals are accepted", -MAX_FIT_VALUE, MAX_FIT_VALUE );
    gtk_widget_set_tooltip_text( fit_width_spinbutton, _( tempTooltip ) );
    gtk_table_attach( GTK_TABLE( table5 ), fit_width_spinbutton, 1, 2, 1, 2,
					  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
	gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( fit_width_spinbutton ), TRUE );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( fit_width_spinbutton ), GTK_UPDATE_ALWAYS );
	gtk_entry_set_alignment( GTK_ENTRY( fit_width_spinbutton ), 1.0 ); //right
	gtk_widget_show( fit_width_spinbutton );

    fit_height_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( m_nHeight, -MAX_FIT_VALUE, MAX_FIT_VALUE, 1, 10, 0 ) );
    fit_height_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( fit_height_spinbutton_adj ), 1, 3 );
    sprintf( tempTooltip, "This is how many times the texture will tile vertically when fit. Valid values are %.3f through %.3f, decimals are accepted", -MAX_FIT_VALUE, MAX_FIT_VALUE );
    gtk_widget_set_tooltip_text( fit_height_spinbutton, _( tempTooltip ) );
    gtk_table_attach( GTK_TABLE( table5 ), fit_height_spinbutton, 3, 4, 1, 2,
					  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
					  (GtkAttachOptions) ( GTK_FILL ), 3, 0 );
	gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( fit_height_spinbutton ), TRUE );
    gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( fit_height_spinbutton ), GTK_UPDATE_ALWAYS );
	gtk_entry_set_alignment( GTK_ENTRY( fit_height_spinbutton ), 1.0 ); //right
	gtk_widget_show( fit_height_spinbutton );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table5 ), eventbox, 0, 1, 1, 2,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( GTK_FILL ), 4, 0 );
    gtk_widget_show( eventbox );

    fit_button = gtk_button_new_with_mnemonic( _( "Fit Texture" ) );
    gtk_widget_set_tooltip_text( fit_button, _( "This will fit the texture on the selected plane(s), according to the specified width and height" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), fit_button );
	gtk_widget_show( fit_button );

    eventbox = gtk_event_box_new();
    gtk_table_attach( GTK_TABLE( table5 ), eventbox, 2, 3, 1, 2,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( GTK_FILL ), 4, 0 );
    gtk_widget_show( eventbox );

    swap_button = gtk_button_new_with_mnemonic( _( "Swap" ) );
    gtk_widget_set_tooltip_text( swap_button, _( "This will swap the width and height values" ) );
    gtk_container_add( GTK_CONTAINER( eventbox ), swap_button );
    gtk_widget_show( swap_button );

    // closing the window (upper right window manager click)
    g_signal_connect( (gpointer) SurfaceInspector, "key-press-event",
                      G_CALLBACK( surface_dialog_key_press ),
                      NULL );

    g_signal_connect( (gpointer) SurfaceInspector,
					  "delete-event",
					  G_CALLBACK( apply_and_hide ),
					  NULL );

	g_signal_connect( (gpointer) SurfaceInspector, "destroy",
					  G_CALLBACK( gtk_widget_destroy ),
					  NULL );

	g_signal_connect( (gpointer) texture_combo_entry, "key-press-event",
					  G_CALLBACK( on_texture_combo_entry_key_press_event ),
					  NULL );

	g_signal_connect( (gpointer) texture_combo_entry, "activate",
					  G_CALLBACK( on_texture_combo_entry_activate ),
					  NULL );

	g_signal_connect( (gpointer) hshift_value_spinbutton, "value-changed",
					  G_CALLBACK( on_hshift_value_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) vshift_value_spinbutton, "value-changed",
					  G_CALLBACK( on_vshift_value_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) hscale_value_spinbutton, "value-changed",
					  G_CALLBACK( on_hscale_value_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) vscale_value_spinbutton, "value-changed",
					  G_CALLBACK( on_vscale_value_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) rotate_value_spinbutton, "value-changed",
					  G_CALLBACK( on_rotate_value_spinbutton_value_changed ),
					  NULL );

	g_signal_connect( (gpointer) hshift_step_spinbutton, "value-changed",
					  G_CALLBACK( on_hshift_step_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) vshift_step_spinbutton, "value-changed",
					  G_CALLBACK( on_vshift_step_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) hscale_step_spinbutton, "value-changed",
					  G_CALLBACK( on_hscale_step_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) vscale_step_spinbutton, "value-changed",
					  G_CALLBACK( on_vscale_step_spinbutton_value_changed ),
					  NULL );
    g_signal_connect( (gpointer) rotate_step_spinbutton, "value-changed",
                      G_CALLBACK( on_rotate_step_spinbutton_value_changed ),
                      NULL );

    g_signal_connect( (gpointer) fit_width_spinbutton, "value-changed",
					  G_CALLBACK( on_fit_width_spinbutton_value_changed ),
					  NULL );
	g_signal_connect( (gpointer) fit_height_spinbutton, "value-changed",
					  G_CALLBACK( on_fit_height_spinbutton_value_changed ),
					  NULL );
    g_signal_connect( (gpointer) fit_button, "clicked",
                      G_CALLBACK( on_fit_button_clicked ),
                      NULL );
    g_signal_connect( (gpointer) swap_button, "clicked",
                      G_CALLBACK( on_swap_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) axial_button, "clicked",
                      G_CALLBACK( on_axial_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) axial_grid_button, "clicked",
                      G_CALLBACK( on_axial_grid_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) reset_shift_button, "clicked",
                      G_CALLBACK( on_reset_shift_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) reset_rotate_button, "clicked",
                      G_CALLBACK( on_reset_rotate_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) reset_increment_button, "clicked",
                      G_CALLBACK( on_reset_increments_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) reset_scale_button, "clicked",
                      G_CALLBACK( on_reset_scale_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) horizontalflip_button, "clicked",
                      G_CALLBACK( on_horizontal_flip_button_clicked ),
                      NULL );

    g_signal_connect( (gpointer) verticalflip_button, "clicked",
                      G_CALLBACK( on_vertical_flip_button_clicked ),
                      NULL );

    return SurfaceInspector;
}


// Texture Combo
gboolean on_texture_combo_entry_key_press_event( GtkWidget *widget, GdkEventKey *event, gpointer user_data ){
	// Have Tab activate selection as well as Return
    if ( event->keyval == GDK_KEY_Tab ) {
		g_signal_emit_by_name( texture_combo_entry, "activate" );
    }

	return FALSE;
}

void on_texture_combo_entry_activate( GtkEntry *entry, gpointer user_data ){
	texdef_t* tmp_texdef;
	texdef_t* tmp_orig_texdef;
	texdef_to_face_t* temp_texdef_face_list;
    char text[MAX_TEXPATH_SIZE] = { 0 };

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
		// activate only on entry change
		strcpy( text, gtk_entry_get_text( entry ) );
		if ( strcmp( old_texture_entry, text ) ) {
			// Check for spaces in shader name
			if ( text[0] <= ' ' || strchr( text, ' ' ) ) {
				Sys_FPrintf( SYS_WRN, "WARNING: spaces in shader names are not allowed, ignoring '%s'\n", text );
			}
			else
			{
				for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
				{
					tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
					tmp_orig_texdef = (texdef_t *) &temp_texdef_face_list->orig_texdef;
					strcpy( old_texture_entry, text );
					tmp_texdef->SetName( text );
				}
				GetTexMods();
			}
		}
	}
}


// Value Spins
static void on_hshift_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	texdef_t* tmp_texdef;
	texdef_t* tmp_orig_texdef;
	texdef_to_face_t* temp_texdef_face_list;

	texdef_SI_values.shift[0] = gtk_spin_button_get_value( GTK_SPIN_BUTTON( hshift_value_spinbutton ) );

	if ( !texdef_face_list_empty() && g_bListenChanged ) {
		for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
		{
			tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
			tmp_orig_texdef = (texdef_t *) &temp_texdef_face_list->orig_texdef;
			tmp_texdef->shift[0] = texdef_SI_values.shift[0] + texdef_offset.shift[0];
            tmp_texdef->shift[0] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[0], temp_texdef_face_list->face->d_texture->width );
        }
        is_HShift_conflicting = FALSE;
        GetTexMods();
	}
}

static void on_vshift_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	texdef_t* tmp_texdef;
	texdef_t* tmp_orig_texdef;
	texdef_to_face_t* temp_texdef_face_list;

	texdef_SI_values.shift[1]  = gtk_spin_button_get_value( GTK_SPIN_BUTTON( vshift_value_spinbutton ) );

	if ( !texdef_face_list_empty() && g_bListenChanged ) {
		for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
		{
			tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
			tmp_orig_texdef = (texdef_t *) &temp_texdef_face_list->orig_texdef;
			tmp_texdef->shift[1] = texdef_SI_values.shift[1] + texdef_offset.shift[1];
            tmp_texdef->shift[1] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[1], temp_texdef_face_list->face->d_texture->height );
        }
        is_VShift_conflicting = FALSE;
        GetTexMods();
	}
}

static void on_hscale_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	texdef_t* tmp_texdef;
	texdef_t* tmp_orig_texdef;
	texdef_to_face_t* temp_texdef_face_list;

	texdef_SI_values.scale[0] = gtk_spin_button_get_value( GTK_SPIN_BUTTON( hscale_value_spinbutton ) );

	if ( !texdef_face_list_empty() && g_bListenChanged ) {
		for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
		{
			tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
			tmp_orig_texdef = (texdef_t *) &temp_texdef_face_list->orig_texdef;
			tmp_texdef->scale[0] = texdef_SI_values.scale[0] + texdef_offset.scale[0];
		}
        is_HScale_conflicting = FALSE;
        GetTexMods();
	}
}

static void on_vscale_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	texdef_t* tmp_texdef;
	texdef_t* tmp_orig_texdef;
	texdef_to_face_t* temp_texdef_face_list;

	texdef_SI_values.scale[1] = gtk_spin_button_get_value( GTK_SPIN_BUTTON( vscale_value_spinbutton ) );

	if ( !texdef_face_list_empty() && g_bListenChanged ) {
		for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
		{
			tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
			tmp_orig_texdef = (texdef_t *) &temp_texdef_face_list->orig_texdef;
			tmp_texdef->scale[1] = texdef_SI_values.scale[1] + texdef_offset.scale[1];
		}
        is_VScale_conflicting = FALSE;
        GetTexMods();
	}
}

static void on_rotate_value_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	texdef_t* tmp_texdef;
	texdef_t* tmp_orig_texdef;
	texdef_to_face_t* temp_texdef_face_list;

	texdef_SI_values.rotate = gtk_spin_button_get_value( GTK_SPIN_BUTTON( rotate_value_spinbutton ) );

	if ( !texdef_face_list_empty() && g_bListenChanged ) {
		for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
		{
			tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
			tmp_orig_texdef = (texdef_t *) &temp_texdef_face_list->orig_texdef;
			tmp_texdef->rotate = texdef_SI_values.rotate + texdef_offset.rotate;
            tmp_texdef->rotate = calculateVecRotatingValueBeneathMax( tmp_texdef->rotate, 360 );
        }
        is_Rotate_conflicting = FALSE;
        GetTexMods();
	}
}


// Step Spins
static void on_hshift_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	gfloat val;
	GtkAdjustment * adjust;

	if ( !g_bListenChanged ) {
		return;
	}

	l_pIncrement = Get_SI_Inc();

#ifdef DBG_SI
	Sys_Printf( "OnIncrementChanged HShift\n" );
#endif

	val = gtk_spin_button_get_value( GTK_SPIN_BUTTON( hshift_step_spinbutton ) );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( hshift_value_spinbutton ) );
	gtk_adjustment_set_step_increment( adjust, val );
	l_pIncrement->shift[0] = val;
}

static void on_vshift_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	gfloat val;
	GtkAdjustment * adjust;

	if ( !g_bListenChanged ) {
		return;
	}

	l_pIncrement = Get_SI_Inc();

#ifdef DBG_SI
	Sys_Printf( "OnIncrementChanged VShift\n" );
#endif

	val = gtk_spin_button_get_value( GTK_SPIN_BUTTON( vshift_step_spinbutton ) );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( vshift_value_spinbutton ) );
	gtk_adjustment_set_step_increment( adjust, val );
	l_pIncrement->shift[1] = val;
}

static void on_hscale_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	gfloat val;
	GtkAdjustment * adjust;

	if ( !g_bListenChanged ) {
		return;
	}

	l_pIncrement = Get_SI_Inc();

#ifdef DBG_SI
	Sys_Printf( "OnIncrementChanged HShift\n" );
#endif

	val = gtk_spin_button_get_value( GTK_SPIN_BUTTON( hscale_step_spinbutton ) );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( hscale_value_spinbutton ) );
	gtk_adjustment_set_step_increment( adjust, val );
	l_pIncrement->scale[0] = val;
}

static void on_vscale_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	gfloat val;
	GtkAdjustment * adjust;

	if ( !g_bListenChanged ) {
		return;
	}

	l_pIncrement = Get_SI_Inc();

#ifdef DBG_SI
	Sys_Printf( "OnIncrementChanged HShift\n" );
#endif

	val = gtk_spin_button_get_value( GTK_SPIN_BUTTON( vscale_step_spinbutton ) );
	adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( vscale_value_spinbutton ) );
	gtk_adjustment_set_step_increment( adjust, val );
	l_pIncrement->scale[1] = val;
}

static void on_rotate_step_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
	gfloat val;
	GtkAdjustment * adjust;

	if ( !g_bListenChanged ) {
		return;
	}

	l_pIncrement = Get_SI_Inc();

#ifdef DBG_SI
	Sys_Printf( "OnIncrementChanged HShift\n" );
#endif

	val = gtk_spin_button_get_value( GTK_SPIN_BUTTON( rotate_step_spinbutton ) );
    adjust = gtk_spin_button_get_adjustment( GTK_SPIN_BUTTON( rotate_value_spinbutton ) );
    gtk_adjustment_set_step_increment( adjust, val );
	l_pIncrement->rotate = val;
}


// Fit Texture
static void on_fit_width_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
    m_nWidth = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( fit_width_spinbutton ) );
    if( m_nWidth == 0 ) {
        m_nWidth = 1;
    }
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( fit_width_spinbutton ), m_nWidth );
}

static void on_fit_height_spinbutton_value_changed( GtkSpinButton *spinbutton, gpointer user_data ){
    m_nHeight = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( fit_height_spinbutton ) );
    if( m_nHeight == 0 ) {
        m_nHeight = 1;
    }
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( fit_height_spinbutton ), m_nHeight );
}

static void on_fit_button_clicked( GtkButton *button, gpointer user_data ){
    FaceList_FitTexture( get_texdef_face_list(), m_nHeight, m_nWidth );
    Sys_UpdateWindows( W_CAMERA | W_SURFACE );
}

static void on_swap_button_clicked( GtkButton *button, gpointer user_data ){
    m_nHeight = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( fit_width_spinbutton ) );
    m_nWidth = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( fit_height_spinbutton ) );

    gtk_spin_button_set_value( GTK_SPIN_BUTTON( fit_width_spinbutton ), m_nWidth );
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( fit_height_spinbutton ), m_nHeight );

    Sys_UpdateWindows( W_SURFACE );
}


// Reset Buttons
static void on_reset_shift_button_clicked( GtkButton *button, gpointer user_data ){
    texdef_t* tmp_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[0] = 0.0;
            tmp_texdef->shift[1] = 0.0;
        }
    }

    if ( !texdef_face_list_empty() ) {
        SetTexdef_FaceList( get_texdef_face_list(), TRUE, FALSE );
    }
    Sys_UpdateWindows( W_ALL );
}

static void on_reset_rotate_button_clicked( GtkButton *button, gpointer user_data ){
    texdef_t* tmp_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->rotate = 0.0;
        }
    }

    if ( !texdef_face_list_empty() ) {
        SetTexdef_FaceList( get_texdef_face_list(), TRUE, FALSE );
    }
    Sys_UpdateWindows( W_ALL );
}

static void on_axial_button_clicked( GtkButton *button, gpointer user_data ){
    // NAB622: Axial button is the shift and rotate set to 0, and the scale set to 0.5.
    // This means that on every axis, a texture will be exactly 2 pixels per grid unit
    texdef_t* tmp_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[0] = 0;
            tmp_texdef->shift[1] = 0;
            tmp_texdef->scale[0] = 0.5;
            tmp_texdef->scale[1] = 0.5;
            tmp_texdef->rotate = 0;
        }
    }
    if ( !texdef_face_list_empty() ) {
        SetTexdef_FaceList( get_texdef_face_list(), TRUE, FALSE );
    }
    Sys_UpdateWindows( W_ALL );
}

static void on_axial_grid_button_clicked( GtkButton *button, gpointer user_data ){
    // NAB622: Axial Grid button is the shift and rotate set to 0, and the scale set to 1 pixel per grid size
    texdef_t* tmp_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[0] = 0;
            tmp_texdef->shift[1] = 0;
            tmp_texdef->scale[0] = GridSize();
            tmp_texdef->scale[1] = GridSize();
            tmp_texdef->rotate = 0;
        }
    }
    if ( !texdef_face_list_empty() ) {
        SetTexdef_FaceList( get_texdef_face_list(), TRUE, FALSE );
    }
    Sys_UpdateWindows( W_ALL );
}


static void on_reset_scale_button_clicked( GtkButton *button, gpointer user_data ){
    texdef_t* tmp_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->scale[0] = GetDefaultScaleValue();
            tmp_texdef->scale[1] = GetDefaultScaleValue();
        }
    }

    if ( !texdef_face_list_empty() ) {
        SetTexdef_FaceList( get_texdef_face_list(), TRUE, FALSE );
    }
    Sys_UpdateWindows( W_ALL );
}

static void on_horizontal_flip_button_clicked( GtkButton *button, gpointer user_data ) {
    texdef_t* tmp_texdef;
    texdef_t* tmp_orig_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[0] = tmp_texdef->shift[0] + temp_texdef_face_list->face->d_texture->width / 2;
            tmp_texdef->scale[0] *= -1;
            tmp_texdef->shift[0] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[0], temp_texdef_face_list->face->d_texture->width );
        }
        GetTexMods();
    }
}

static void on_vertical_flip_button_clicked( GtkButton *button, gpointer user_data ) {
    texdef_t* tmp_texdef;
    texdef_t* tmp_orig_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[1] = tmp_texdef->shift[1] + temp_texdef_face_list->face->d_texture->height / 2;
            tmp_texdef->scale[1] *= -1;
            tmp_texdef->shift[1] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[1], temp_texdef_face_list->face->d_texture->height );
        }
        GetTexMods();
    }
}

static void on_mirror_horizontal_button_clicked( GtkButton *button, gpointer user_data ) {
    texdef_t* tmp_texdef;
    texdef_t* tmp_orig_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[0] *= -1;
            tmp_texdef->scale[0] *= -1;
            tmp_texdef->shift[0] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[0], temp_texdef_face_list->face->d_texture->width );
        }
        GetTexMods();
    }
}

static void on_mirror_vertical_button_clicked( GtkButton *button, gpointer user_data ) {
    texdef_t* tmp_texdef;
    texdef_t* tmp_orig_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->shift[1] *= -1;
            tmp_texdef->scale[1] *= -1;
            tmp_texdef->shift[1] = calculateVecRotatingValueBeneathMax( tmp_texdef->shift[1], temp_texdef_face_list->face->d_texture->height );
        }
        GetTexMods();
    }
}

static void on_rotate_180_button_clicked( GtkButton *button, gpointer user_data ) {
    texdef_t* tmp_texdef;
    texdef_t* tmp_orig_texdef;
    texdef_to_face_t* temp_texdef_face_list;

    if ( !texdef_face_list_empty() && g_bListenChanged ) {
        for ( temp_texdef_face_list = get_texdef_face_list(); temp_texdef_face_list; temp_texdef_face_list = temp_texdef_face_list->next )
        {
            tmp_texdef = (texdef_t *) &temp_texdef_face_list->texdef;
            tmp_texdef->rotate = calculateVecRotatingValueBeneathMax( tmp_texdef->rotate - 180, 360 );
        }
        GetTexMods();
    }
}

static void on_reset_increments_button_clicked( GtkButton *button, gpointer user_data ) {
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( hshift_step_spinbutton), DEFAULT_SHIFT_INCREMENT_VALUE );
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( vshift_step_spinbutton), DEFAULT_SHIFT_INCREMENT_VALUE );
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( hscale_step_spinbutton), DEFAULT_SCALE_INCREMENT_VALUE );
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( vscale_step_spinbutton), DEFAULT_SCALE_INCREMENT_VALUE );
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( rotate_step_spinbutton), DEFAULT_ROTATE_INCREMENT_VALUE );
}
