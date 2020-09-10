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
// Patch Dialog
//
// Leonardo Zide (leo@lokigames.com)
//

#include <gdk/gdkkeysyms.h>
#include "stdafx.h"
#include "patchdialog.h"
#include <glib/gi18n.h>


//Add the widgets
GtkWidget *vbox, *vbox2, *hbox, *hbox2, *frame, *table, *label, *nodeBox, *nodeContainer;
GtkWidget *button, *entry, *spin, *combo, *row_label, *col_label, *unlockNodesButton;
GtkWidget *patchFitTable, *patchFittingFrame, *patch_fit_width_spinbutton, *patch_fit_height_spinbutton, *patch_fit_button, *patch_swap_button, *eventbox;
GtkAdjustment *patch_fit_width_spinbutton_adj, *patch_fit_height_spinbutton_adj;
GtkWidget *patchTextureFrame, *patchTextureFrameLayoutTable, *patchTextureCoordinatesFrame, *patchTextureFrameTable;
GtkWidget *patchHorizontalFlipButton, *patchVerticalFlipButton, *patchHorizontalMirrorButton, *patchVerticalMirrorButton;
GtkWidget *patchFlippingFrame, *patchFlipTable, *specialFrame, *specialTable, *functionLayoutTable;
GtkWidget *patch_texture_combo, *patch_texture_combo_entry;
GtkWidget *rowColumnDropdownTable, *nodeCoordinatesTable, *textureCoordinatesTable;
GtkWidget *patchTextureWidthLabel, *patchTextureHeightLabel;
GtkAdjustment *adj;
GList *lst, *cells;
GtkSizeGroup *size_group;
GtkWidget *cap_button, *set_button, *nat_button, *fit_button;

GtkWidget *hseparator;

//This is the value for the fit buttons
float patchFitWidth = 1.0;
float patchFitHeight = 1.0;

//This is for the unlock button in the nodes section
bool nodeLock = true;

// NAB622: These items were copied over from the surface inspector

    // For Texture Entry, activate only on entry change
    char old_texture_entry[MAX_TEXPATH_SIZE];

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

// turn on/off processing of the "changed" "value-changed" messages
// (need to turn off when we are feeding data in)
bool g_bPatchListenChanged = true;


PatchDialog g_PatchDialog;
// is the patch inspector currently displayed/active?
bool l_bIsActive = false;
// the increment we are using for the patch inspector (this is saved in the prefs)
texdef_t *l_pPIIncrement = &g_qeglobals.d_savedinfo.m_PIIncrement;

// =============================================================================
// static functions

static void OnDone( GtkWidget *widget, gpointer data ){
	g_PatchDialog.m_Patch = NULL;
	g_PatchDialog.HideDlg();
}

// memorize the current state (that is don't try to undo our do before changing something else)
static void OnApply( GtkWidget *widget, gpointer data ){
	g_PatchDialog.UpdateData( TRUE );
	if ( g_PatchDialog.m_Patch != NULL ) {
		int r = g_PatchDialog.m_nRow;
		int c = g_PatchDialog.m_nCol;
		if ( r >= 0 && r < g_PatchDialog.m_Patch->height && c >= 0 && c < g_PatchDialog.m_Patch->width ) {
/*
// NAB622: Commenting this out because it's being moved to a better place
            if ( g_PatchDialog.m_Patch->pShader ) {
				g_PatchDialog.m_Patch->pShader->DecRef();
			}
			if ( g_PatchDialog.m_strName.Find( ' ' ) >= 0 ) {
				Sys_FPrintf( SYS_WRN, "WARNING: spaces in shader names are not allowed, dropping '%s'\n", g_PatchDialog.m_strName.GetBuffer() );
                g_PatchDialog.m_strName = SHADER_NOT_FOUND;
            }
			g_PatchDialog.m_Patch->pShader = QERApp_Shader_ForName( g_PatchDialog.m_strName );
            g_PatchDialog.m_Patch->d_texture = g_PatchDialog.m_Patch->pShader->getTexture();
*/
            g_PatchDialog.m_Patch->ctrl[c][r].xyz[0] = g_PatchDialog.m_fX;
			g_PatchDialog.m_Patch->ctrl[c][r].xyz[1] = g_PatchDialog.m_fY;
			g_PatchDialog.m_Patch->ctrl[c][r].xyz[2] = g_PatchDialog.m_fZ;
			g_PatchDialog.m_Patch->ctrl[c][r].st[0] = g_PatchDialog.m_fS;
			g_PatchDialog.m_Patch->ctrl[c][r].st[1] = g_PatchDialog.m_fT;
			g_PatchDialog.m_Patch->bDirty = true;
			Sys_UpdateWindows( W_ALL );
		}
	}
}

static void OnSelchangeComboColRow( GtkWidget *widget, gpointer data ){
	if ( !g_PatchDialog.m_bListenChanged ) {
		return;
	}
	// retrieve the current m_nRow and m_nCol, other params are not relevant
	// (NOTE: UpdateData has a mechanism to avoid inifinite looping)
	g_PatchDialog.UpdateData( TRUE );
	// read the changed values ourselves
	g_PatchDialog.UpdateRowColInfo();
	// now reflect our changes
	g_PatchDialog.UpdateData( FALSE );
}

static void OnBtnPatchdetails( GtkWidget *widget, gpointer data ){
	Patch_NaturalizeSelected( true );
	Sys_UpdateWindows( W_ALL );
}

static void OnBtnPatchfit( GtkWidget *widget, gpointer data ){
	Patch_ResetTexturing( 1.0, 1.0 );
	Sys_UpdateWindows( W_ALL );
}

static void OnBtnPatchnatural( GtkWidget *widget, gpointer data ){
	Patch_NaturalizeSelected();
	Sys_UpdateWindows( W_ALL );
}

static void OnBtnPatchreset( GtkWidget *widget, gpointer data ){
	float fx, fy;
	if ( DoTextureLayout( &fx, &fy ) == IDOK ) {
		Patch_ResetTexturing( fx, fy );
	}
	Sys_UpdateWindows( W_ALL );
}

static void OnSpinChanged( GtkAdjustment *adj, gpointer data ){
	texdef_t td;

	td.rotate = 0;
	td.scale[0] = td.scale[1] = 0;
	td.shift[0] = td.shift[1] = 0;
	td.contents = 0;
	td.flags = 0;
	td.value = 0;

	if ( gtk_adjustment_get_value( adj ) == 0 ) {
		return;
	}

	if ( adj == g_object_get_data( G_OBJECT( g_PatchDialog.GetWidget() ), "hshift_adj" ) ) {
		l_pPIIncrement->shift[0] = gtk_spin_button_get_value( GTK_SPIN_BUTTON( data ) );

		if ( gtk_adjustment_get_value( adj ) > 0 ) {
			td.shift[0] = l_pPIIncrement->shift[0];
		}
		else{
			td.shift[0] = -l_pPIIncrement->shift[0];
		}
	}
	else if ( adj == g_object_get_data( G_OBJECT( g_PatchDialog.GetWidget() ), "vshift_adj" ) ) {
		l_pPIIncrement->shift[1] = gtk_spin_button_get_value( GTK_SPIN_BUTTON( data ) );

		if ( gtk_adjustment_get_value( adj ) > 0 ) {
			td.shift[1] = l_pPIIncrement->shift[1];
		}
		else{
			td.shift[1] = -l_pPIIncrement->shift[1];
		}
	}
	else if ( adj == g_object_get_data( G_OBJECT( g_PatchDialog.GetWidget() ), "hscale_adj" ) ) {
		l_pPIIncrement->scale[0] = gtk_spin_button_get_value( GTK_SPIN_BUTTON( data ) );
		if ( l_pPIIncrement->scale[0] == 0.0f ) {
			return;
		}
		// make sure scale factor is always >1 for increases and <1 for decreases
		if ( gtk_adjustment_get_value( adj ) > 0 ) {
			if ( l_pPIIncrement->scale[0] < 1 ) {
				td.scale[0] = l_pPIIncrement->scale[0];
			}
			else{
				td.scale[0] = 1.0f / l_pPIIncrement->scale[0];
			}
		}
		else
		{
			if ( l_pPIIncrement->scale[0] < 1 ) {
				td.scale[0] = 1.0f / l_pPIIncrement->scale[0];
			}
			else{
				td.scale[0] = l_pPIIncrement->scale[0];
			}
		}
	}
	else if ( adj == g_object_get_data( G_OBJECT( g_PatchDialog.GetWidget() ), "vscale_adj" ) ) {
		l_pPIIncrement->scale[1] = gtk_spin_button_get_value( GTK_SPIN_BUTTON( data ) );
		if ( l_pPIIncrement->scale[1] == 0.0f ) {
			return;
		}
		// make sure scale factor is always >1 for increases and <1 for decreases
		if ( gtk_adjustment_get_value( adj ) > 0 ) {
			if ( l_pPIIncrement->scale[1] < 1 ) {
				td.scale[1] = l_pPIIncrement->scale[1];
			}
			else{
				td.scale[1] = 1.0f / l_pPIIncrement->scale[1];
			}
		}
		else
		{
			if ( l_pPIIncrement->scale[1] < 1 ) {
				td.scale[1] = 1.0f / l_pPIIncrement->scale[1];
			}
			else{
				td.scale[1] = l_pPIIncrement->scale[1];
			}
		}
	}
	else if ( adj == g_object_get_data( G_OBJECT( g_PatchDialog.GetWidget() ), "rotate_adj" ) ) {
		l_pPIIncrement->rotate = gtk_spin_button_get_value( GTK_SPIN_BUTTON( data ) );

		if ( gtk_adjustment_get_value( adj ) > 0 ) {
			td.rotate = l_pPIIncrement->rotate;
		}
		else{
			td.rotate = -l_pPIIncrement->rotate;
		}
	}

	gtk_adjustment_set_value( adj, 0 );

	// will scale shift rotate the patch accordingly
	Patch_SetTextureInfo( &td );
	// update the point-by-point view
	OnSelchangeComboColRow( NULL,NULL );
	Sys_UpdateWindows( W_CAMERA );
}

static gint OnDialogKey( GtkWidget* widget, GdkEventKey* event, gpointer data ){
	if ( event->keyval == GDK_KEY_Return ) {
		OnApply( NULL, NULL );
		return TRUE;
	}
	else if ( event->keyval == GDK_KEY_Escape ) {
		OnDone( NULL, NULL );
		return TRUE;
	}
	return FALSE;
}

// =============================================================================
// Global Functions

void DoPatchInspector(){
	// do we need to create the dialog?
	if ( g_PatchDialog.GetWidget() == NULL ) {
		g_PatchDialog.Create();
		g_PatchDialog.UpdateData( FALSE );
	}
	g_PatchDialog.GetPatchInfo();
	if ( !l_bIsActive ) {
		g_PatchDialog.ShowDlg();
	}
}

void UpdatePatchInspector(){
	if ( l_bIsActive ) {
		g_PatchDialog.GetPatchInfo();
	}
}

void TogglePatchInspector(){
	if ( l_bIsActive ) {
		OnDone( NULL,NULL );
	}
	else{
		DoPatchInspector();
	}
}

// =============================================================================
// PatchDialog class

PatchDialog::PatchDialog (){
	m_strName = "";
	m_fS = 0.0f;
	m_fT = 0.0f;
	m_fX = 0.0f;
	m_fY = 0.0f;
	m_fZ = 0.0f;
	m_nCol = 0;
    m_nRow = 0;
	m_Patch = NULL;
	m_bListenChanged = true;
}

void PatchDialog::InitDefaultIncrement( texdef_t *tex ){
    tex->SetName( SHADER_NOT_FOUND );
	tex->scale[0] = 0.5f;
	tex->scale[1] = 0.5f;
	tex->rotate = 45;
	tex->shift[0] = 8.0f;
	tex->shift[1] = 8.0f;
}

// we plug into HideDlg and ShowDlg to maintain the l_bIsActive flag
void PatchDialog::HideDlg(){
	l_bIsActive = false;
	Dialog::HideDlg();
}

void PatchDialog::ShowDlg(){
	l_bIsActive = true;
    Dialog::ShowDlg();
}

void PatchDialog::BuildDialog(){
    GtkWidget *dlg;
    dlg = m_pWidget;

    char tempTooltip[256];

    load_window_pos( dlg, g_PrefsDlg.mWindowInfo.posPatchWnd );

    gtk_window_set_title( GTK_WINDOW( dlg ), _( "Patch Inspector" ) );
	g_signal_connect( G_OBJECT( dlg ), "delete-event", G_CALLBACK( OnDone ), NULL );
	// catch 'Esc' and 'Enter'
	g_signal_connect( G_OBJECT( dlg ), "key-press-event", G_CALLBACK( OnDialogKey ), NULL );
	gtk_window_set_transient_for( GTK_WINDOW( dlg ), GTK_WINDOW( g_pParentWnd->m_pWidget ) );


	vbox = gtk_vbox_new( FALSE, 5 );
	gtk_container_add( GTK_CONTAINER( dlg ), vbox );
	gtk_container_set_border_width( GTK_CONTAINER( vbox ), 5 );
	gtk_widget_show( vbox );

	hbox = gtk_hbox_new( FALSE, 5 );
	gtk_box_pack_start( GTK_BOX( vbox ), hbox, TRUE, TRUE, 0 );
	gtk_widget_show( hbox );

    patchTextureFrameLayoutTable = gtk_table_new( 2, 1, FALSE );
    gtk_container_add( GTK_CONTAINER( hbox ), patchTextureFrameLayoutTable );
    gtk_widget_show( patchTextureFrameLayoutTable );

        patchTextureFrame = gtk_frame_new( _( "Texture" ) );
        gtk_table_attach( GTK_TABLE( patchTextureFrameLayoutTable ), patchTextureFrame, 0, 1, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( 0 ), 0, 0 );
        gtk_widget_show( patchTextureFrame );

            patchTextureFrameTable = gtk_table_new( 2, 3, FALSE );
            gtk_table_set_col_spacings( GTK_TABLE( patchTextureFrameTable ), 2 );
            gtk_table_set_row_spacings( GTK_TABLE( patchTextureFrameTable ), 2 );
            gtk_container_add( GTK_CONTAINER( patchTextureFrame ), patchTextureFrameTable );
            gtk_widget_show( patchTextureFrameTable );

                patch_texture_combo = gtk_combo_box_text_new_with_entry();
                gtk_widget_set_tooltip_text( patch_texture_combo, _( "To change the texture, select a new one in the texture window, middle-click one in the 3D view, or type a new one here and press ENTER" ) );
                gtk_widget_show( patch_texture_combo );
                gtk_table_attach( GTK_TABLE( patchTextureFrameTable ), patch_texture_combo, 0, 2, 0, 1,
                                  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                  (GtkAttachOptions) ( 0 ), 0, 0 );

                    patch_texture_combo_entry = gtk_bin_get_child( GTK_BIN( patch_texture_combo ) );
                    gtk_entry_set_max_length( GTK_ENTRY( patch_texture_combo_entry ), MAX_TEXPATH_SIZE );
                    gtk_widget_show( patch_texture_combo_entry );
                    AddDialogData( patch_texture_combo_entry, &m_strName, DLG_ENTRY_TEXT );

                    g_signal_connect( patch_texture_combo_entry, "key-press-event", G_CALLBACK( on_patch_texture_combo_entry_key_press_event ), NULL );
                    g_signal_connect( patch_texture_combo_entry, "activate", G_CALLBACK( on_patch_texture_combo_entry_activate ), NULL );

                    label = gtk_label_new( _( "Width:" ) );
                    gtk_widget_set_tooltip_text( label, _( "This is the width of the texture in pixels" ) );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
                    gtk_table_attach( GTK_TABLE( patchTextureFrameTable ), label, 0, 1, 1, 2,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_widget_show( label );

                    patchTextureWidthLabel = gtk_label_new( _( " " ) );
                    gtk_widget_modify_font(patchTextureWidthLabel, pango_font_description_from_string("monospace bold 12"));
                    gtk_widget_set_tooltip_text( patchTextureWidthLabel, _( "This is the width of the texture in pixels" ) );
                    gtk_misc_set_alignment( GTK_MISC( patchTextureWidthLabel ), 0.5, 0 );
                    gtk_table_attach( GTK_TABLE( patchTextureFrameTable ), patchTextureWidthLabel, 0, 1, 2, 3,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_widget_show( patchTextureWidthLabel );

                    label = gtk_label_new( _( "Height:" ) );
                    gtk_widget_set_tooltip_text( label, _( "This is the height of the texture in pixels" ) );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
                    gtk_table_attach( GTK_TABLE( patchTextureFrameTable ), label, 1, 2, 1, 2,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_widget_show( label );

                    patchTextureHeightLabel = gtk_label_new( _( " " ) );
                    gtk_widget_set_tooltip_text( patchTextureHeightLabel, _( "This is the height of the texture in pixels" ) );
                    gtk_widget_modify_font(patchTextureHeightLabel, pango_font_description_from_string("monospace bold 12"));
                    gtk_misc_set_alignment( GTK_MISC( patchTextureHeightLabel ), 0.5, 0 );
                    gtk_table_attach( GTK_TABLE( patchTextureFrameTable ), patchTextureHeightLabel, 1, 2, 2, 3,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_widget_show( patchTextureHeightLabel );

/*
            hseparator = gtk_hseparator_new();
            gtk_table_attach( GTK_TABLE( patchTextureFrameLayoutTable ), hseparator, 0, 1, 1, 2,
                              (GtkAttachOptions) ( GTK_FILL ),
                              (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
            gtk_widget_show( hseparator );
*/

            patchTextureCoordinatesFrame = gtk_frame_new( _( "Texture Coordinates" ) );
            gtk_table_attach( GTK_TABLE( patchTextureFrameLayoutTable ), patchTextureCoordinatesFrame, 0, 1, 1, 2,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ), 0, 0 );
            gtk_widget_show( patchTextureCoordinatesFrame );

                table = gtk_table_new( 5, 3, FALSE );
                gtk_container_add( GTK_CONTAINER( patchTextureCoordinatesFrame ), table );
                gtk_table_set_row_spacings( GTK_TABLE( table ), 5 );
                gtk_table_set_col_spacings( GTK_TABLE( table ), 5 );
                gtk_widget_show( table );

                    label = gtk_label_new( _( "Horizontal Shift Increment" ) );
                    gtk_table_attach( GTK_TABLE( table ), label, 2, 3, 0, 1,
                                      (GtkAttachOptions) ( GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_show( label );

                    label = gtk_label_new( _( "Vertical Shift Step" ) );
                    gtk_table_attach( GTK_TABLE( table ), label, 2, 3, 1, 2,
                                      (GtkAttachOptions) ( GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_show( label );

                    label = gtk_label_new( _( "Horizontal Stretch Step" ) );
                    gtk_table_attach( GTK_TABLE( table ), label, 2, 3, 2, 3,
                                      (GtkAttachOptions) ( GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_show( label );

                    label = gtk_label_new( _( "Vertical Stretch Step" ) );
                    gtk_table_attach( GTK_TABLE( table ), label, 2, 3, 3, 4,
                                      (GtkAttachOptions) ( GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_show( label );

                    label = gtk_label_new( _( "Rotate Step" ) );
                    gtk_table_attach( GTK_TABLE( table ), label, 2, 3, 4, 5,
                                      (GtkAttachOptions) ( GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_show( label );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, -MAX_SHIFT_INCREMENT, MAX_SHIFT_INCREMENT, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, TEXTURE_SHIFT_PRECISION );
                    gtk_table_attach( GTK_TABLE( table ), spin, 0, 1, 0, 1,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), FALSE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );

                    // we fill in this data, if no patch is selected the widgets are unmodified when the inspector is raised
                    // so we need to have at least one initialisation somewhere
                    gtk_spin_button_set_value( GTK_SPIN_BUTTON( spin ), l_pPIIncrement->shift[0] );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, 0, 0, 1, 1, 0 ) );
                    g_signal_connect( adj, "value-changed", G_CALLBACK( OnSpinChanged ), spin );
                    g_object_set_data( G_OBJECT( m_pWidget ), "hshift_adj", adj );

                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, 0 );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_table_attach( GTK_TABLE( table ), spin, 1, 2, 0, 1,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, -MAX_SHIFT_INCREMENT, MAX_SHIFT_INCREMENT, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, TEXTURE_SHIFT_PRECISION );
                    gtk_table_attach( GTK_TABLE( table ), spin, 0, 1, 1, 2,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );	gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), FALSE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );
                    gtk_spin_button_set_value( GTK_SPIN_BUTTON( spin ), l_pPIIncrement->shift[1] );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, 0, 0, 1, 1, 0 ) );
                    g_signal_connect( adj, "value-changed", G_CALLBACK( OnSpinChanged ), spin );
                    g_object_set_data( G_OBJECT( m_pWidget ), "vshift_adj", adj );

                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, 0 );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_table_attach( GTK_TABLE( table ), spin, 1, 2, 1, 2,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, -MAX_SCALE_INCREMENT, MAX_SCALE_INCREMENT, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, TEXTURE_SCALE_PRECISION );
                    gtk_table_attach( GTK_TABLE( table ), spin, 0, 1, 2, 3,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), FALSE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );
                    gtk_spin_button_set_value( GTK_SPIN_BUTTON( spin ), l_pPIIncrement->scale[0] );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, 0, 0, 1, 1, 0 ) );
                    g_signal_connect( adj, "value-changed", G_CALLBACK( OnSpinChanged ), spin );
                    g_object_set_data( G_OBJECT( m_pWidget ), "hscale_adj", adj );

                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, 0 );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_table_attach( GTK_TABLE( table ), spin, 1, 2, 2, 3,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, -MAX_SCALE_INCREMENT, MAX_SCALE_INCREMENT, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, TEXTURE_SCALE_PRECISION );
                    gtk_table_attach( GTK_TABLE( table ), spin, 0, 1, 3, 4,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );	gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), FALSE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );
                    gtk_spin_button_set_value( GTK_SPIN_BUTTON( spin ), l_pPIIncrement->scale[1] );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, 0, 0, 1, 1, 0 ) );
                    g_signal_connect( adj, "value-changed", G_CALLBACK( OnSpinChanged ), spin );
                    g_object_set_data( G_OBJECT( m_pWidget ), "vscale_adj", adj );

                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, 0 );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_table_attach( GTK_TABLE( table ), spin, 1, 2, 3, 4,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, -MAX_ROTATE_INCREMENT, MAX_ROTATE_INCREMENT, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, TEXTURE_ROTATE_PRECISION );
                    gtk_table_attach( GTK_TABLE( table ), spin, 0, 1, 4, 5,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );
                    gtk_spin_button_set_value( GTK_SPIN_BUTTON( spin ),  l_pPIIncrement->rotate );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, 0, 0, 1, 1, 0 ) );
                    g_signal_connect( adj, "value-changed", G_CALLBACK( OnSpinChanged ), spin );
                    g_object_set_data( G_OBJECT( m_pWidget ), "rotate_adj", adj );

                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, 0 );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_table_attach( GTK_TABLE( table ), spin, 1, 2, 4, 5,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_show( spin );

    functionLayoutTable = gtk_table_new( 3, 1, FALSE );
    gtk_box_pack_start( GTK_BOX( hbox ), functionLayoutTable, TRUE, TRUE, 0 );
    gtk_table_set_row_spacings( GTK_TABLE( functionLayoutTable ), 5 );
    gtk_table_set_col_spacings( GTK_TABLE( functionLayoutTable ), 5 );
    gtk_widget_show( functionLayoutTable );

    specialFrame = gtk_frame_new( _( "Special" ) );
    gtk_table_attach( GTK_TABLE( functionLayoutTable ), specialFrame, 0, 1, 0, 1,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ), 0, 0 );
    gtk_widget_show( specialFrame );

        specialTable = gtk_table_new( 2, 1, FALSE );
        gtk_container_set_border_width( GTK_CONTAINER( specialTable ), 5 );
        gtk_table_set_col_spacings( GTK_TABLE( specialTable ), 2 );
        gtk_container_add( GTK_CONTAINER( specialFrame ), specialTable );
        gtk_widget_show( specialTable );

            eventbox = gtk_event_box_new();
            gtk_table_attach( GTK_TABLE( specialTable ), eventbox, 0, 1, 0, 1,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
            gtk_widget_show( eventbox );

            cap_button = gtk_button_new_with_mnemonic( _( "Cap" ) );
            gtk_widget_set_tooltip_text( cap_button, _( "This will distribute the texture equally across the mesh based on the grid" ) );
            gtk_container_add( GTK_CONTAINER( eventbox ), cap_button );
            gtk_container_set_border_width( GTK_CONTAINER( eventbox ), 4 );
            gtk_widget_show( cap_button );
            g_signal_connect( G_OBJECT( cap_button ), "clicked", G_CALLBACK( OnBtnPatchdetails ), NULL );

            eventbox = gtk_event_box_new();
            gtk_table_attach( GTK_TABLE( specialTable ), eventbox, 1, 2, 0, 1,
                              (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                              (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
            gtk_widget_show( eventbox );

            nat_button = gtk_button_new_with_mnemonic( _( "Natural" ) );
            gtk_widget_set_tooltip_text( nat_button, _( "This will stretch the texture equally across each node in the mesh" ) );
            gtk_container_add( GTK_CONTAINER( eventbox ), nat_button );
            gtk_container_set_border_width( GTK_CONTAINER( eventbox ), 4 );
            gtk_widget_show( nat_button );
            g_signal_connect( G_OBJECT( nat_button ), "clicked", G_CALLBACK( OnBtnPatchnatural ), NULL );

            size_group = gtk_size_group_new( GTK_SIZE_GROUP_BOTH );
            gtk_size_group_add_widget( size_group, cap_button );
            gtk_size_group_add_widget( size_group, nat_button );
            g_object_unref( size_group );

    patchFlippingFrame = gtk_frame_new( _( "Flip & Mirror" ) );
    gtk_table_attach( GTK_TABLE( functionLayoutTable ), patchFlippingFrame, 0, 1, 1, 2,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ), 0, 0 );
    gtk_widget_show( patchFlippingFrame );

        patchFlipTable = gtk_table_new( 2, 2, FALSE );
        gtk_container_set_border_width( GTK_CONTAINER( patchFlipTable ), 5 );
        gtk_table_set_col_spacings( GTK_TABLE( patchFlipTable ), 2 );
        gtk_container_add( GTK_CONTAINER( patchFlippingFrame ), patchFlipTable );
        gtk_widget_show( patchFlipTable );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( patchFlipTable ), eventbox, 0, 1, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_widget_show( eventbox );

        patchHorizontalFlipButton = gtk_button_new_with_mnemonic( _( "Flip Horizontal" ) );
        gtk_widget_set_tooltip_text( patchHorizontalFlipButton, _( "This will flip the texture and positioning across it's width" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), patchHorizontalFlipButton );
        gtk_container_set_border_width( GTK_CONTAINER( patchHorizontalFlipButton ), 4 );
        gtk_widget_show( patchHorizontalFlipButton );
        g_signal_connect( (gpointer) patchHorizontalFlipButton, "clicked", G_CALLBACK( on_patch_flip_horizontal_button_clicked ), NULL );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( patchFlipTable ), eventbox, 1, 2, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_widget_show( eventbox );

        patchVerticalFlipButton = gtk_button_new_with_mnemonic( _( "Flip Vertical" ) );
        gtk_widget_set_tooltip_text( patchVerticalFlipButton, _( "This will flip the texture and positioning across it's height" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), patchVerticalFlipButton );
        gtk_container_set_border_width( GTK_CONTAINER( patchVerticalFlipButton ), 4 );
        gtk_widget_show( patchVerticalFlipButton );
        g_signal_connect( (gpointer) patchVerticalFlipButton, "clicked", G_CALLBACK( on_patch_flip_vertical_button_clicked ), NULL );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( patchFlipTable ), eventbox, 0, 1, 1, 2,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_widget_show( eventbox );

        patchHorizontalMirrorButton = gtk_button_new_with_mnemonic( _( "Mirror Horizontal" ) );
        gtk_widget_set_tooltip_text( patchHorizontalMirrorButton, _( "This will mirror the texture across it's width, without changing the positioning" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), patchHorizontalMirrorButton );
        gtk_container_set_border_width( GTK_CONTAINER( patchHorizontalMirrorButton ), 4 );
        gtk_widget_show( patchHorizontalMirrorButton );
        g_signal_connect( (gpointer) patchHorizontalMirrorButton, "clicked", G_CALLBACK( on_patch_mirror_horizontal_button_clicked ), NULL );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( patchFlipTable ), eventbox, 1, 2, 1, 2,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_widget_show( eventbox );

        patchVerticalMirrorButton = gtk_button_new_with_mnemonic( _( "Mirror Vertical" ) );
        gtk_widget_set_tooltip_text( patchVerticalMirrorButton, _( "This will mirror the texture across it's height, without changing the positioning" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), patchVerticalMirrorButton );
        gtk_container_set_border_width( GTK_CONTAINER( patchVerticalMirrorButton ), 4 );
        gtk_widget_show( patchVerticalMirrorButton );
        g_signal_connect( (gpointer) patchVerticalMirrorButton, "clicked", G_CALLBACK( on_patch_mirror_vertical_button_clicked ), NULL );

            size_group = gtk_size_group_new( GTK_SIZE_GROUP_BOTH );
            gtk_size_group_add_widget( size_group, patchVerticalFlipButton );
            gtk_size_group_add_widget( size_group, patchHorizontalFlipButton );
            gtk_size_group_add_widget( size_group, patchVerticalMirrorButton );
            gtk_size_group_add_widget( size_group, patchHorizontalMirrorButton );
            g_object_unref( size_group );

    patchFittingFrame = gtk_frame_new( _( "Fitting" ) );
    gtk_table_attach( GTK_TABLE( functionLayoutTable ), patchFittingFrame, 0, 1, 2, 3,
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ), 0, 0 );
    gtk_widget_show( patchFittingFrame );

        patchFitTable = gtk_table_new( 2, 4, FALSE );
        gtk_container_set_border_width( GTK_CONTAINER( patchFitTable ), 5 );
        gtk_table_set_col_spacings( GTK_TABLE( patchFitTable ), 2 );
        gtk_container_add( GTK_CONTAINER( patchFittingFrame ), patchFitTable );
        gtk_widget_show( patchFitTable );

        label = gtk_label_new( _( "Width" ) );
        gtk_table_attach( GTK_TABLE( patchFitTable ), label, 1, 2, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
        gtk_widget_show( label );

        label = gtk_label_new( _( "Height" ) );
        gtk_table_attach( GTK_TABLE( patchFitTable ), label, 3, 4, 0, 1,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_misc_set_alignment( GTK_MISC( label ), 0.5, 0.5 );
        gtk_widget_show( label );

        patch_fit_width_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( patchFitWidth, -MAX_FIT_VALUE, MAX_FIT_VALUE, 1, 10, 0 ) );
        patch_fit_width_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( patch_fit_width_spinbutton_adj ), 1, 3 );
        sprintf( tempTooltip, "This is how many times the texture will tile horizontally when fit. Valid values are %.3f through %.3f, decimals are accepted", -MAX_FIT_VALUE, MAX_FIT_VALUE );
        gtk_widget_set_tooltip_text( patch_fit_width_spinbutton, _( tempTooltip ) );
        gtk_table_attach( GTK_TABLE( patchFitTable ), patch_fit_width_spinbutton, 1, 2, 1, 2,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 0, 0 );
        gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( patch_fit_width_spinbutton ), TRUE );
        gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( patch_fit_width_spinbutton ), GTK_UPDATE_ALWAYS );
        gtk_entry_set_alignment( GTK_ENTRY( patch_fit_width_spinbutton ), 1.0 ); //right
        gtk_widget_show( patch_fit_width_spinbutton );
        g_signal_connect( (gpointer) patch_fit_width_spinbutton, "value-changed", G_CALLBACK( on_patch_fit_width_spinbutton_value_changed ), NULL );

        patch_fit_height_spinbutton_adj = GTK_ADJUSTMENT( gtk_adjustment_new( patchFitHeight, -MAX_FIT_VALUE, MAX_FIT_VALUE, 1, 10, 0 ) );
        patch_fit_height_spinbutton = gtk_spin_button_new( GTK_ADJUSTMENT( patch_fit_height_spinbutton_adj ), 1, 3 );
        sprintf( tempTooltip, "This is how many times the texture will tile vertically when fit. Valid values are %.3f through %.3f, decimals are accepted", -MAX_FIT_VALUE, MAX_FIT_VALUE );
        gtk_widget_set_tooltip_text( patch_fit_height_spinbutton, _( tempTooltip ) );
        gtk_table_attach( GTK_TABLE( patchFitTable ), patch_fit_height_spinbutton, 3, 4, 1, 2,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 3, 0 );
        gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( patch_fit_height_spinbutton ), TRUE );
        gtk_spin_button_set_update_policy( GTK_SPIN_BUTTON( patch_fit_height_spinbutton ), GTK_UPDATE_ALWAYS );
        gtk_entry_set_alignment( GTK_ENTRY( patch_fit_height_spinbutton ), 1.0 ); //right
        gtk_widget_show( patch_fit_height_spinbutton );
        g_signal_connect( (gpointer) patch_fit_height_spinbutton, "value-changed", G_CALLBACK( on_patch_fit_height_spinbutton_value_changed ), NULL );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( patchFitTable ), eventbox, 0, 1, 1, 2,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 4, 0 );
        gtk_widget_show( eventbox );

        patch_fit_button = gtk_button_new_with_mnemonic( _( "Fit Texture" ) );
        gtk_widget_set_tooltip_text( patch_fit_button, _( "This will fit the texture on the selected patch(es), according to the specified width and height" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), patch_fit_button );
        gtk_widget_show( patch_fit_button );
        g_signal_connect( (gpointer) patch_fit_button, "clicked", G_CALLBACK( on_patch_fit_button_clicked ), NULL );

        eventbox = gtk_event_box_new();
        gtk_table_attach( GTK_TABLE( patchFitTable ), eventbox, 2, 3, 1, 2,
                          (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                          (GtkAttachOptions) ( GTK_FILL ), 4, 0 );
        gtk_widget_show( eventbox );

        patch_swap_button = gtk_button_new_with_mnemonic( _( "Swap" ) );
        gtk_widget_set_tooltip_text( patch_swap_button, _( "This will swap the width and height values" ) );
        gtk_container_add( GTK_CONTAINER( eventbox ), patch_swap_button );
        gtk_widget_show( patch_swap_button );
        g_signal_connect( (gpointer) patch_swap_button, "clicked", G_CALLBACK( on_patch_swap_button_clicked ), NULL );

        frame = gtk_frame_new( _( "Nodes" ) );
        gtk_box_pack_start( GTK_BOX( hbox ), frame, TRUE, TRUE, 0 );
        gtk_widget_show( frame );

            nodeBox = gtk_vbox_new( FALSE, 5 );
            gtk_container_add( GTK_CONTAINER( frame ), nodeBox );
            gtk_container_set_border_width( GTK_CONTAINER( nodeBox ), 5 );
            gtk_widget_show( nodeBox );

                eventbox = gtk_event_box_new();
                gtk_box_pack_start( GTK_BOX( nodeBox ), eventbox, TRUE, TRUE, 0 );
                gtk_widget_show( eventbox );

                unlockNodesButton = gtk_toggle_button_new_with_mnemonic( _( "🔒   Unlock" ) );
                gtk_widget_set_tooltip_text( unlockNodesButton, _( "This will unlock the node values for editing. It is best to let Radiant handle this, edit these values at your own risk!" ) );
                gtk_container_add( GTK_CONTAINER( eventbox ), unlockNodesButton );
                gtk_container_set_border_width( GTK_CONTAINER( unlockNodesButton ), 4 );
                gtk_widget_show( unlockNodesButton );
                g_signal_connect( (gpointer) unlockNodesButton, "clicked", G_CALLBACK( toggle_node_lock ), NULL );

                rowColumnDropdownTable = gtk_table_new( 2, 2, FALSE );
                gtk_box_pack_start( GTK_BOX( nodeBox ), rowColumnDropdownTable, TRUE, TRUE, 0 );
                gtk_table_set_row_spacings( GTK_TABLE( rowColumnDropdownTable ), 5 );
                gtk_table_set_col_spacings( GTK_TABLE( rowColumnDropdownTable ), 5 );
                gtk_widget_show( rowColumnDropdownTable );

                    row_label = label = gtk_label_new( _( "Row:" ) );
                    gtk_table_attach( GTK_TABLE( rowColumnDropdownTable ), label, 0, 1, 0, 1,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_set_tooltip_text( label, _( "These dropdown boxes choose a node to edit" ) );
                    gtk_widget_show( label );

                    col_label = label = gtk_label_new( _( "Column:" ) );
                    gtk_table_attach( GTK_TABLE( rowColumnDropdownTable ), label, 1, 2, 0, 1,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_set_tooltip_text( label, _( "These dropdown boxes choose a node to edit" ) );
                    gtk_widget_show( label );

                    size_group = gtk_size_group_new( GTK_SIZE_GROUP_BOTH );
                    gtk_size_group_add_widget( size_group, row_label );
                    gtk_size_group_add_widget( size_group, col_label );
                    g_object_unref( size_group );

                    combo = gtk_combo_box_text_new();
                    gtk_table_attach( GTK_TABLE( rowColumnDropdownTable ), combo, 0, 1, 1, 2,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_widget_show( combo );
                    g_signal_connect( G_OBJECT( GTK_COMBO_BOX( combo ) ), "changed",
                                        G_CALLBACK( OnSelchangeComboColRow ), this );
                    AddDialogData( combo, &m_nRow, DLG_COMBO_BOX_INT );
                    m_pRowCombo = combo;
                    cells = gtk_cell_layout_get_cells( GTK_CELL_LAYOUT( combo ) );
                    for( lst = cells; lst != NULL; lst = g_list_next( lst ) )
                    {
                        g_object_set( G_OBJECT( lst->data ), "xalign", 1.0, (char*)NULL );
                    }
                    g_list_free( cells );

                    combo = gtk_combo_box_text_new();
                    gtk_table_attach( GTK_TABLE( rowColumnDropdownTable ), combo, 1, 2, 1, 2,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_widget_show( combo );
                    g_signal_connect( G_OBJECT( GTK_COMBO_BOX( combo ) ), "changed",
                                        G_CALLBACK( OnSelchangeComboColRow ), this );
                    AddDialogData( combo, &m_nCol, DLG_COMBO_BOX_INT );
                    m_pColCombo = combo;
                    cells = gtk_cell_layout_get_cells( GTK_CELL_LAYOUT( combo ) );
                    for( lst = cells; lst != NULL; lst = g_list_next( lst ) )
                    {
                        g_object_set( G_OBJECT( lst->data ), "xalign", 1.0, (char*)NULL );
                    }
                    g_list_free( cells );

            nodeCoordinatesTable = gtk_table_new( 4, 3, FALSE );
            gtk_box_pack_start( GTK_BOX( nodeBox ), nodeCoordinatesTable, TRUE, TRUE, 0 );
            gtk_table_set_row_spacings( GTK_TABLE( nodeCoordinatesTable ), 5 );
            gtk_table_set_col_spacings( GTK_TABLE( nodeCoordinatesTable ), 5 );
            gtk_widget_show( nodeCoordinatesTable );

                label = gtk_label_new( _( "Grid Coordinates:" ) );
                gtk_table_attach( GTK_TABLE( nodeCoordinatesTable ), label, 0, 3, 0, 1,
                                  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                  (GtkAttachOptions) ( 0 ), 0, 0 );
                gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 1.0 );
                gtk_widget_show( label );

                    label = gtk_label_new( _( "X:" ) );
                    gtk_table_attach( GTK_TABLE( nodeCoordinatesTable ), label, 0, 1, 1, 2,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_set_tooltip_text( label, _( "This is the location of the specified node on the grid's X axis" ) );
                    gtk_widget_show( label );

                    label = gtk_label_new( _( "Y:" ) );
                    gtk_table_attach( GTK_TABLE( nodeCoordinatesTable ), label, 0, 1, 2, 3,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_set_tooltip_text( label, _( "This is the location of the specified node on the grid's Y axis" ) );
                    gtk_widget_show( label );

                    label = gtk_label_new( _( "Z:" ) );
                    gtk_table_attach( GTK_TABLE( nodeCoordinatesTable ), label, 0, 1, 3, 4,
                                      (GtkAttachOptions) ( 0 ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                    gtk_widget_set_tooltip_text( label, _( "This is the location of the specified node on the grid's Z axis" ) );
                    gtk_widget_show( label );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, g_MinWorldCoord, g_MaxWorldCoord, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, GRID_DECIMAL_PRECISION );
                    gtk_table_attach( GTK_TABLE( nodeCoordinatesTable ), spin, 1, 2, 1, 2,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_set_tooltip_text( spin, _( "This is the location of the specified node on the grid's X axis" ) );
                    gtk_widget_show( spin );
                    AddDialogData( spin, &m_fX, DLG_SPIN_FLOAT );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, g_MinWorldCoord, g_MaxWorldCoord, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, GRID_DECIMAL_PRECISION );
                    gtk_table_attach( GTK_TABLE( nodeCoordinatesTable ), spin, 1, 2, 2, 3,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_set_tooltip_text( spin, _( "This is the location of the specified node on the grid's Y axis" ) );
                    gtk_widget_show( spin );
                    AddDialogData( spin, &m_fY, DLG_SPIN_FLOAT );

                    adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, g_MinWorldCoord, g_MaxWorldCoord, 1, 10, 0 ) );
                    spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, GRID_DECIMAL_PRECISION );
                    gtk_table_attach( GTK_TABLE( nodeCoordinatesTable ), spin, 1, 2, 3, 4,
                                      (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                      (GtkAttachOptions) ( 0 ), 0, 0 );
                    gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                    gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                    gtk_widget_set_tooltip_text( spin, _( "This is the location of the specified node on the grid's Y axis" ) );
                    gtk_widget_show( spin );
                    AddDialogData( spin, &m_fZ, DLG_SPIN_FLOAT );

            textureCoordinatesTable = gtk_table_new( 3, 2, FALSE );
            gtk_box_pack_start( GTK_BOX( nodeBox ), textureCoordinatesTable, TRUE, TRUE, 0 );
            gtk_table_set_row_spacings( GTK_TABLE( textureCoordinatesTable ), 5 );
            gtk_table_set_col_spacings( GTK_TABLE( textureCoordinatesTable ), 5 );
            gtk_widget_show( textureCoordinatesTable );

                label = gtk_label_new( _( "Texture Coordinates:" ) );
                gtk_table_attach( GTK_TABLE( textureCoordinatesTable ), label, 0, 3, 0, 1,
                                  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                  (GtkAttachOptions) ( 0 ), 0, 0 );
                gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 1.0 );
                gtk_widget_show( label );

                label = gtk_label_new( _( "U:" ) );
                gtk_table_attach( GTK_TABLE( textureCoordinatesTable ), label, 0, 1, 1, 2,
                                  (GtkAttachOptions) ( 0 ),
                                  (GtkAttachOptions) ( 0 ), 0, 0 );
                gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                gtk_widget_set_tooltip_text( label, _( "This is the horizontal coordinate of the texture at the specified node. This value is normalized, so 0 and 1 refer to opposite edges of the texture" ) );
                gtk_widget_show( label );

                label = gtk_label_new( _( "V:" ) );
                gtk_table_attach( GTK_TABLE( textureCoordinatesTable ), label, 0, 1, 2, 3,
                                  (GtkAttachOptions) ( 0 ),
                                  (GtkAttachOptions) ( 0 ), 0, 0 );
                gtk_misc_set_alignment( GTK_MISC( label ), 0.0, 0.5 );
                gtk_widget_set_tooltip_text( label, _( "This is the vertical coordinate of the texture at the specified node. This value is normalized, so 0 and 1 refer to opposite edges of the texture" ) );
                gtk_widget_show( label );

                adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, -DBL_MAX, DBL_MAX, 1, 10, 0 ) );
                spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, TEXTURE_SCALE_PRECISION );
                gtk_table_attach( GTK_TABLE( textureCoordinatesTable ), spin, 1, 2, 1, 2,
                                  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                  (GtkAttachOptions) ( 0 ), 0, 0 );
                gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), TRUE );
                gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                gtk_widget_set_tooltip_text( spin, _( "This is the horizontal coordinate of the texture at the specified node. This value is normalized, so 0 and 1 refer to opposite edges of the texture" ) );
                gtk_widget_show( spin );
                AddDialogData( spin, &m_fS, DLG_SPIN_FLOAT );

                adj = GTK_ADJUSTMENT( gtk_adjustment_new( 0, -DBL_MAX, DBL_MAX, 1, 10, 0 ) );
                spin = gtk_spin_button_new( GTK_ADJUSTMENT( adj ), 1, TEXTURE_SCALE_PRECISION );
                gtk_table_attach( GTK_TABLE( textureCoordinatesTable ), spin, 1, 2, 2, 3,
                                  (GtkAttachOptions) ( GTK_EXPAND | GTK_FILL ),
                                  (GtkAttachOptions) ( 0 ), 0, 0 );
                gtk_spin_button_set_wrap( GTK_SPIN_BUTTON( spin ), TRUE );
                gtk_spin_button_set_numeric( GTK_SPIN_BUTTON( spin ), TRUE );
                gtk_entry_set_alignment( GTK_ENTRY( spin ), 1.0 ); //right
                gtk_widget_set_tooltip_text( spin, _( "This is the vertical coordinate of the texture at the specified node. This value is normalized, so 0 and 1 refer to opposite edges of the texture" ) );
                gtk_widget_show( spin );
                AddDialogData( spin, &m_fT, DLG_SPIN_FLOAT );

                // NAB622: Node inputs should be disabled by default. We want to discourage people from messing with them
                lockNodeInputs();

/*
// NAB622: We don't need these buttons. The surface inspector doesn't have them either.
    hbox = gtk_hbox_new( FALSE, 5 );
	gtk_box_pack_start( GTK_BOX( vbox ), hbox, TRUE, FALSE, 0 );
	gtk_widget_show( hbox );

	button = gtk_button_new_with_label( _( "Done" ) );
	gtk_box_pack_end( GTK_BOX( hbox ), button, FALSE, FALSE, 0 );
	gtk_widget_show( button );
	g_signal_connect( G_OBJECT( button ), "clicked", G_CALLBACK( OnDone ), NULL );

    button = gtk_button_new_with_label( _( "Apply" ) );
	gtk_box_pack_end( GTK_BOX( hbox ), button, FALSE, FALSE, 0 );
	gtk_widget_show( button );
	g_signal_connect( G_OBJECT( button ), "clicked", G_CALLBACK( OnApply ), NULL );
*/

}

void toggle_node_lock() {
    if( nodeLock ) {
        unlockNodeInputs();
    } else {
        lockNodeInputs();
    }
}

void unlockNodeInputs() {
    gtk_widget_set_sensitive ( nodeCoordinatesTable, TRUE );
    gtk_widget_set_sensitive ( rowColumnDropdownTable, TRUE );
    gtk_widget_set_sensitive ( textureCoordinatesTable, TRUE );
    nodeLock = false;
    gtk_toggle_button_set_mode( GTK_TOGGLE_BUTTON( unlockNodesButton ), FALSE );
}

void lockNodeInputs() {
    gtk_widget_set_sensitive ( nodeCoordinatesTable, FALSE );
    gtk_widget_set_sensitive ( rowColumnDropdownTable, FALSE );
    gtk_widget_set_sensitive ( textureCoordinatesTable, FALSE );
    nodeLock = true;
    gtk_toggle_button_set_mode( GTK_TOGGLE_BUTTON( unlockNodesButton ), TRUE );
}

// sync the dialog our internal data structures
void PatchDialog::UpdateData( bool retrieve ){
	if ( m_pWidget == NULL ) {
		return;
	}

	m_bListenChanged = false;
	Dialog::UpdateData( retrieve );
	m_bListenChanged = true;
}

// read the map and feed in the stuff to the dialog box
void PatchDialog::GetPatchInfo(){
	m_Patch = SinglePatchSelected();
	if ( m_Patch != NULL ) {
		gchar buffer[11];
		int i;
		GtkListStore *store;

		m_strName = m_Patch->pShader->getName();

        int texWidth;
        int texHeight;
        char texWidthString[10];
        char texHeightString[10];

        texWidth = m_Patch->d_texture->width;
        texHeight = m_Patch->d_texture->height;

        sprintf( texWidthString, "%i", texWidth );
        sprintf( texHeightString, "%i", texHeight );
        gtk_label_set_text( GTK_LABEL( patchTextureWidthLabel ), texWidthString );
        gtk_label_set_text( GTK_LABEL( patchTextureHeightLabel ), texHeightString );

		// fill in the numbers for Row / Col selection
		m_bListenChanged = false;

#if GTK_CHECK_VERSION( 3, 0, 0 )
        gtk_combo_box_text_remove_all( GTK_COMBO_BOX_TEXT( m_pRowCombo ) );
        gtk_combo_box_text_remove_all( GTK_COMBO_BOX_TEXT( m_pColCombo ) );
#else
        store = GTK_LIST_STORE( gtk_combo_box_get_model( GTK_COMBO_BOX( m_pRowCombo ) ) );
        gtk_list_store_clear( store );
        store = GTK_LIST_STORE( gtk_combo_box_get_model( GTK_COMBO_BOX( m_pColCombo ) ) );
        gtk_list_store_clear( store );
#endif

        if( m_nRow > m_Patch->height || m_nCol > m_Patch->width ) {
            m_nRow = 0;
            m_nCol = 0;
        }

        for ( i = 0; i < m_Patch->height; i++ )
		{
			g_snprintf( buffer, sizeof( buffer ), "%i", i );
			gtk_combo_box_text_append_text( GTK_COMBO_BOX_TEXT( m_pRowCombo ), buffer );
		}
        gtk_combo_box_set_active( GTK_COMBO_BOX( GTK_COMBO_BOX_TEXT( m_pRowCombo ) ), m_nRow );

		for ( i = 0; i < m_Patch->width; i++ )
		{
			g_snprintf( buffer, sizeof( buffer ), "%i", i );
			gtk_combo_box_text_append_text( GTK_COMBO_BOX_TEXT( m_pColCombo ), buffer );
		}
        gtk_combo_box_set_active( GTK_COMBO_BOX( GTK_COMBO_BOX_TEXT( m_pColCombo ) ), m_nCol );

		m_bListenChanged = true;

	}
	else{
		Sys_FPrintf( SYS_WRN, "WARNING: No patch selected.\n" );
	}
	// fill in our internal structs
	UpdateRowColInfo();
	// now update the dialog box
	UpdateData( false );
}

// read the current patch on map and initialize m_fX m_fY accordingly
// NOTE: don't call UpdateData in there, it's not meant for
void PatchDialog::UpdateRowColInfo(){
	m_fX = m_fY = m_fZ = m_fS = m_fT = 0.0;

	if ( m_Patch != NULL ) {
		// we rely on whatever active row/column has been set before we get called
		int r = m_nRow;
		int c = m_nCol;
		if ( r >= 0 && r < m_Patch->height && c >= 0 && c < m_Patch->width ) {
			m_fX = m_Patch->ctrl[c][r].xyz[0];
			m_fY = m_Patch->ctrl[c][r].xyz[1];
			m_fZ = m_Patch->ctrl[c][r].xyz[2];
			m_fS = m_Patch->ctrl[c][r].st[0];
			m_fT = m_Patch->ctrl[c][r].st[1];
		}
	}
}


// Texture Combo
gboolean on_patch_texture_combo_entry_key_press_event( GtkWidget *widget, GdkEventKey *event, gpointer user_data ){
/*
    // Have Tab activate selection as well as Return
    if ( event->keyval == GDK_KEY_Tab ) {
        g_signal_emit_by_name( texture_combo_entry, "activate" );
    }
*/

    return FALSE;
}

void on_patch_texture_combo_entry_activate( GtkEntry *entry, gpointer user_data ){

    g_PatchDialog.UpdateData( TRUE );

/*
    // Make sure we iterate over ALL the patches, not just the most recently selected one
    for() {
        if ( g_PatchDialog.m_Patch != NULL ) {
            if ( g_PatchDialog.m_Patch->pShader ) {
                g_PatchDialog.m_Patch->pShader->DecRef();
            }
            if ( g_PatchDialog.m_strName.Find( ' ' ) >= 0 ) {
                Sys_FPrintf( SYS_WRN, "WARNING: spaces in shader names are not allowed, dropping '%s'\n", g_PatchDialog.m_strName.GetBuffer() );
                g_PatchDialog.m_strName = SHADER_NOT_FOUND;
            }
            g_PatchDialog.m_Patch->pShader = QERApp_Shader_ForName( g_PatchDialog.m_strName );
            g_PatchDialog.m_Patch->d_texture = g_PatchDialog.m_Patch->pShader->getTexture();
            g_PatchDialog.m_Patch->bDirty = true;
            Sys_UpdateWindows( W_CAMERA | W_PATCH );
        }
    }
*/

    texdef_t* tmp_texdef;
    texdef_t* tmp_orig_texdef;
    texdef_to_face_t* temp_texdef_face_list;
    char text[MAX_TEXPATH_SIZE] = { 0 };

    if ( !texdef_face_list_empty() && g_bPatchListenChanged ) {
        // activate only on entry change
        strcpy( text, gtk_entry_get_text( entry ) );
        if ( strcmp( old_texture_entry, text ) ) {
            // Check for spaces in shader name
            if ( text[0] <= ' ' || strchr( text, ' ' ) ) {
                Sys_FPrintf( SYS_WRN, "WARNING: spaces in shader names are not allowed, ignoring '%s'\n", text );
            }
            else
            {
                for ( brush_t* pb = selected_brushes.next ; pb != &selected_brushes ; pb = pb->next )
                {
                    if ( pb->patchBrush ) {
                        patchMesh_t *p = pb->pPatch;
                        p->bDirty = true;
                        p->pShader = QERApp_Shader_ForName( g_PatchDialog.m_strName );
                        p->d_texture = g_PatchDialog.m_Patch->pShader->getTexture();
                    }
                }
            }
        }
        Sys_UpdateWindows( W_CAMERA | W_PATCH );
    }
}

// Fit texture
void on_patch_fit_width_spinbutton_value_changed( GtkWidget *widget, gpointer data ){
    patchFitWidth = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( patch_fit_width_spinbutton ) );
    if( patchFitWidth == 0 ) {
        patchFitWidth = 1;
    }
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( patch_fit_width_spinbutton ), patchFitWidth );
}

void on_patch_fit_height_spinbutton_value_changed( GtkWidget *widget, gpointer data ){
    patchFitHeight = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( patch_fit_height_spinbutton ) );
    if( patchFitHeight == 0 ) {
        patchFitHeight = 1;
    }
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( patch_fit_height_spinbutton ), patchFitHeight );
}

void on_patch_fit_button_clicked( GtkWidget *widget, gpointer data ){
    Patch_ResetTexturing( patchFitWidth, patchFitHeight );
    Sys_UpdateWindows( W_CAMERA | W_PATCH );
}

void on_patch_swap_button_clicked( GtkWidget *widget, gpointer data ){
    patchFitHeight = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( patch_fit_width_spinbutton ) );
    patchFitWidth = gtk_spin_button_get_value_as_float( GTK_SPIN_BUTTON( patch_fit_height_spinbutton ) );

    gtk_spin_button_set_value( GTK_SPIN_BUTTON( patch_fit_width_spinbutton ), patchFitWidth );
    gtk_spin_button_set_value( GTK_SPIN_BUTTON( patch_fit_height_spinbutton ), patchFitHeight );

    Sys_UpdateWindows( W_PATCH );
}

// Flip texture
void on_patch_flip_horizontal_button_clicked( GtkWidget *widget, gpointer data ){
    float temp;
    int g;
    for ( brush_t* pb = selected_brushes.next ; pb != &selected_brushes ; pb = pb->next )
    {
        if ( pb->patchBrush ) {
            patchMesh_t *p = pb->pPatch;
            p->bDirty = true;
            for ( int i = 0 ; i < ( p->width - 1 ) / 2 ; i++ )
            {
                //g is the opposite coordinate to the one we are modifying
                g = p->width - 1 - i;
                for ( int j = 0 ; j < p->height ; j++ )
                {
                    temp = p->ctrl[i][j].st[0];
                    p->ctrl[i][j].st[0] = p->ctrl[g][j].st[0];
                    p->ctrl[g][j].st[0] = temp;
                }
            }
        }
    }

    Sys_UpdateWindows( W_PATCH | W_CAMERA );
}

void on_patch_flip_vertical_button_clicked( GtkWidget *widget, gpointer data ){
    float temp;
    int g;
    for ( brush_t* pb = selected_brushes.next ; pb != &selected_brushes ; pb = pb->next )
    {
        if ( pb->patchBrush ) {
            patchMesh_t *p = pb->pPatch;
            p->bDirty = true;
            for ( int i = 0 ; i < p->width ; i++ )
            {
                for ( int j = 0 ; j < ( p->height - 1 ) / 2 ; j++ )
                {
                    //g is the opposite coordinate to the one we are modifying
                    g = p->height - 1 - j;
                    temp = p->ctrl[i][j].st[1];
                    p->ctrl[i][j].st[1] = p->ctrl[i][g].st[1];
                    p->ctrl[i][g].st[1] = temp;
                }
            }
        }
    }

    Sys_UpdateWindows( W_PATCH | W_CAMERA );
}

// Mirror texture
void on_patch_mirror_horizontal_button_clicked( GtkWidget *widget, gpointer data ){
    float temp;
    for ( brush_t* pb = selected_brushes.next ; pb != &selected_brushes ; pb = pb->next )
    {
        if ( pb->patchBrush ) {
            patchMesh_t *p = pb->pPatch;
            p->bDirty = true;
            for ( int i = 0 ; i < p->width ; i++ )
            {
                for ( int j = 0 ; j < p->height ; j++ )
                {
                    p->ctrl[i][j].st[0] *= -1;
                }
            }
        }
    }

    Sys_UpdateWindows( W_PATCH | W_CAMERA );
}

void on_patch_mirror_vertical_button_clicked( GtkWidget *widget, gpointer data ){
    for ( brush_t* pb = selected_brushes.next ; pb != &selected_brushes ; pb = pb->next )
    {
        if ( pb->patchBrush ) {
            patchMesh_t *p = pb->pPatch;
            p->bDirty = true;
            for ( int i = 0 ; i < p->width ; i++ )
            {
                for ( int j = 0 ; j < p->height ; j++ )
                {
                    p->ctrl[i][j].st[1] *= -1;
                }
            }
        }
    }

    Sys_UpdateWindows( W_PATCH | W_CAMERA );
}
