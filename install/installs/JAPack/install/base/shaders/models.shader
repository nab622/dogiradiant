  ///////////////////////////////////
  //                               // 
  //   **** Clean Shaders ****     //
  //         Nov. 7th, 2003        //
  //          By Astrocreep        //
  //          -------------        //
  //    For Level Editing info:    //
  //       www.map-center.com      //
  //          -------------        //
  //    For GtkRadiant Updates:    //
  //       www.qeradiant.com       //
  //                               //
  ///////////////////////////////////
 
models/map_objects/imp_mine/psd
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/psd
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/psdglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 1 -1 5
    }
}

models/map_objects/imp_mine/power_convertor_panel
{
	qer_editorimage	models/map_objects/imp_mine/power_converter_panel
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/power_converter_panel
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/power_converter_panel2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 1 0.5 1
    }
    {
        map models/map_objects/imp_mine/power_converter_panel1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 1 -1 0.5
    }
}

models/map_objects/imp_mine/consoleface_04
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/consoleface_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/consoleface_04glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 1 0.2 0 45
    }
}

models/map_objects/imp_mine/consoleface_02
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/consoleface_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/consoleface_02glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.1 0 50
    }
}

models/map_objects/imp_mine/consoleface_03
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/consoleface_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/consoleface_03glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/imp_mine/consoleface_03glow2
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave inversesawtooth 0 0.5 0 1
    }
}

models/map_objects/imp_mine/consoleface_01
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map gfx/2d/cropcircle2
        blendFunc GL_ONE GL_ZERO
        rgbGen wave inversesawtooth 0 1 0 0.5
        tcMod scale 3.85 4.5
    }
    {
        map models/map_objects/imp_mine/consoleface_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/consoleface_01glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/imp_mine/consoleface_01glow2
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 0 1 0 1
    }
    {
        map models/map_objects/imp_mine/consoleface_01glow3
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave square 0 1 0 2
    }
}

models/map_objects/imp_mine/minelamp
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/minelamp
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/minelampglow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/imp_mine/control_panel_shd
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/control_panel_shd
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/control_panel_shd_on
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.25 0 2
    }
}

models/map_objects/imp_mine/mbay_monitor_screen
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/mbay_monitor_screen
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        animMap 4 models/map_objects/imp_mine/mbay_monitor_screen4 models/map_objects/imp_mine/mbay_monitor_screen5 models/map_objects/imp_mine/mbay_monitor_screen6 models/map_objects/imp_mine/mbay_monitor_screen7 models/map_objects/imp_mine/mbay_monitor_screen models/map_objects/imp_mine/mbay_monitor_screen1 models/map_objects/imp_mine/mbay_monitor_screen2 models/map_objects/imp_mine/mbay_monitor_screen3 
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        animMap 8 models/map_objects/imp_mine/mbay_monitor_screen models/map_objects/imp_mine/mbay_monitor_screen1 models/map_objects/imp_mine/mbay_monitor_screen2 models/map_objects/imp_mine/mbay_monitor_screen3 models/map_objects/imp_mine/mbay_monitor_screen4 models/map_objects/imp_mine/mbay_monitor_screen5 models/map_objects/imp_mine/mbay_monitor_screen6 models/map_objects/imp_mine/mbay_monitor_screen7 
        blendFunc GL_ONE GL_ONE
        glow
        detail
    }
}

models/map_objects/imp_mine/mbay_control_panel
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/mbay_control_panel
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/mbay_control_panelglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.2 0.5 45
    }
    {
        map models/map_objects/imp_mine/mbay_control_panelblink
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 0 1 0 1
    }
}

models/map_objects/imp_mine/tubes
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/tubes
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/tubesglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 1 1 0.5
    }
}

models/map_objects/imp_mine/tank
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/tank
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/tanklight
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0.75 1 0 0.25
    }
}

models/map_objects/imp_mine/psgun
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/psgunlight
        blendFunc GL_ONE GL_ZERO
        rgbGen wave sin 0 1 0 2
        tcMod scroll 0 1
    }
    {
        map models/map_objects/imp_mine/psgun
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/imp_mine/shield_sm
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/shield_sm
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/shield_smglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.5 0 2
    }
}

models/map_objects/imp_mine/shieldpack
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/shieldpack
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/shieldpackglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.5 0 0.5
    }
}

models/map_objects/imp_mine/minelamp_on
{
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/imp_mine/minelamp_on
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.05 0 50
    }
}

models/map_objects/imp_mine/turret_chair_on
{
	qer_editorimage	gfx/effects/redline
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map gfx/effects/redline
        blendFunc GL_ONE GL_ZERO
        tcMod scroll 2 0
    }
    {
        map models/map_objects/imp_mine/turret_chair
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/imp_mine/desk_shade
{
	qer_editorimage	models/map_objects/imp_mine/desk_shade
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/imp_mine/desk_shade
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.05 0 50
    }
}

models/map_objects/imp_mine/crystal_slag
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/crystal_slag
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imp_mine/crystal_slagglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.1 0 5
    }
}

models/map_objects/imp_mine/mine_drill_body
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/control5a
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen wave sin 0 1 0 1
        tcMod scale 11.5 16
    }
    {
        map models/map_objects/imp_mine/control5a
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 1
        tcMod scale 11.5 16
    }
    {
        map models/map_objects/imp_mine/control5b
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 -0.5 1
        tcMod scale 11.5 16
    }
    {
        map models/map_objects/imp_mine/mine_drill_body
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/imp_mine/turret_cannon_base
{
	q3map_nolightmap
    {
        map models/map_objects/imp_mine/turret_cannon_base
        rgbGen lightingDiffuse
    }
    {
        animMap 2 models/map_objects/imp_mine/turret_glow gfx/colors/black 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.3 1 0 1.5
    }
}

models/map_objects/imp_mine/probedamage
{
	q3map_nolightmap
    {
        map models/map_objects/imp_mine/probedamage
        blendFunc GL_ONE GL_ZERO
        rgbGen exactVertex
    }
    {
        map models/map_objects/imp_mine/probedamage_glw
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave noise 0 1 0 2
    }
}

models/map_objects/imp_mine/ore_cart/cart_fx
{
	qer_editorimage	models/map_objects/imp_mine/ore_cart/cart_fx
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/imp_mine/ore_cart/cart_fx
        blendFunc GL_ONE GL_ONE
        rgbGen wave sawtooth 0 1 0 5
    }
    {
        map models/map_objects/imp_mine/ore_cart/cart_fx
        blendFunc GL_ONE GL_ONE
        rgbGen wave noise 1 0.5 0 5
    }
}

models/map_objects/kejim/crystal_panel
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/crystal_panel
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/crystal_panelglow1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 1 1 0 2
    }
    {
        map models/map_objects/kejim/crystal_panelglow2
        blendFunc GL_ONE GL_ONE
        glow
        detail
    }
    {
        map models/map_objects/kejim/crystal_panelglow3
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave square 0 1 0 0.5
    }
}

models/map_objects/kejim/crystal_lights01
{
	cull	twosided
    {
        map $lightmap
    }
    {
        map models/map_objects/kejim/crystal_lights01a
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kejim/crystal_lights01
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/kejim/crystal_lights02
{
	cull	twosided
    {
        map $lightmap
    }
    {
        map models/map_objects/kejim/crystal_lights01a
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/kejim/crystal_lights02
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/kejim/tram_panel01
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/tram_panel01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/tram_panel01glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/kejim/tram_panel01blink
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 1
    }
}

models/map_objects/kejim/tram_panel02
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/tram_panel02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/tram_panel02glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/kejim/tram_panel02blink
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 2 0 2
    }
}

models/map_objects/kejim/tube_glass
{
	q3map_nolightmap
    {
        map models/map_objects/kejim/tube_glass
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/kejim/tram_supports
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/tram_supports
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/tram_supportslight
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 1 0.25 0 3
    }
    {
        map models/map_objects/kejim/tram_supportslight
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/kejim/tube
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/tube
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/tubelights
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave triangle 1 1 0 2
    }
}

models/map_objects/kejim/bombcrystal
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/bombcrystal
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/bombcrystal
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0 1 0 5
    }
    {
        map models/map_objects/kejim/bombcrystal
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.25 0 0.5
    }
    {
        map models/map_objects/kejim/crystalsg
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0 0.1 0 2
        tcMod scroll 1 1
        tcMod scale 1 2
    }
}

models/map_objects/kejim/stasispanel
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/stasispanel
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/stasispanelglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.5 0 2
    }
}

models/map_objects/kejim/stasistube
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/stasistube
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/stasistubeglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 1 0 0.25
    }
}

models/map_objects/kejim/stasisglass
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/stasisglass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

models/map_objects/kejim/crystals
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/crystals
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identity
        alphaGen wave sin 0.3 0 0 0
    }
    {
        map models/map_objects/kejim/crystalsg
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0.2 0.3 0 2
    }
}

models/map_objects/kejim/crystals2
{
	cull	twosided
    {
        map gfx/effects/reflection
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcGen environment
        tcMod scale 3 3
    }
    {
        map models/map_objects/kejim/crystals2
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
    }
    {
        map models/map_objects/kejim/crystals
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identity
        alphaGen wave sin 0.2 0 0 0
    }
}

models/map_objects/kejim/contain
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/contain
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/contain2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/kejim/contop
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/contop
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/contopglow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.2 0 10
    }
}

models/map_objects/kejim/exampanels
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/exampanels
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/exampanelsglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.25 0 1
    }
    {
        map models/map_objects/kejim/exampanels1
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 0 1 0 1
    }
    {
        map models/map_objects/kejim/exampanels2
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 0 1 -0.333 1
    }
    {
        map models/map_objects/kejim/exampanels3
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 0 1 0.333 1
    }
}

models/map_objects/kejim/gen_body
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/gen_body
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/gen_bodyglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.1 0 25
    }
}

models/map_objects/kejim/gen_arches
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/kejim/coolant
        blendFunc GL_ONE GL_ZERO
        tcMod scroll 1 0
        tcMod stretch sin 1 0.1 0 1
    }
    {
        map models/map_objects/kejim/gen_arches
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/kejim/ravenbody
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/ravenbody
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/ravenbody_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/map_objects/kejim/ravenbodyglow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 1 0.5 0 25
    }
}

models/map_objects/kejim/dish
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/psgunlight
        blendFunc GL_ONE GL_ZERO
        rgbGen wave sin 0 0.25 0 1
    }
    {
        map models/map_objects/imp_mine/psgunlight
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 1
        tcMod scroll 5 5
        tcMod turb 0 1 0 1
        tcMod scale 25 1
    }
    {
        map models/map_objects/kejim/dish
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/kejim/cargo_small_02
{
	q3map_nolightmap
    {
        map models/map_objects/kejim/cargo_small_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/cargo_small_02_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.5 0.25 0.75
    }
}

models/map_objects/kejim/doorpad
{
    {
        animMap 4 models/map_objects/kejim/doorpad models/map_objects/kejim/doorpad1 
        blendFunc GL_ONE GL_ZERO
    }
}

models/map_objects/kejim/doorpad_on
{
	qer_editorimage	models/map_objects/kejim/doorpad
    {
        animMap 4 models/map_objects/kejim/doorpad1 models/map_objects/kejim/doorpad2 
        blendFunc GL_ONE GL_ZERO
    }
}

models/map_objects/kejim/gen_body_d
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/gen_body_d
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/gen_body_dglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 1 0.5 -0.5 7
    }
    {
        map models/map_objects/imp_detention/tie_body_damageglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 1 0.5 0 7
    }
}

models/map_objects/kejim/cutsupport_d
{
	qer_editorimage	models/map_objects/kejim/cutsupport_d
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/cutsupport_d
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/cutsupport_dglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 1 0.5 -0.5 7
    }
    {
        map models/map_objects/imp_detention/tie_body_damageglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 1 0.5 0 7
    }
}

models/map_objects/kejim/cutbody_d
{
	qer_editorimage	models/map_objects/kejim/cutsupport_d
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/cutbody_d
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/cutbody_dglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 1 0.5 -0.5 7
    }
}

models/map_objects/kejim/cutstrut_d
{
	qer_editorimage	models/map_objects/kejim/cutstrut_d
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/cutstrut_d
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/kejim/cutstrut
{
	qer_editorimage	models/map_objects/kejim/cutstrut
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/cutstrut
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/cutstrutglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.5 0 0.25
    }
}

models/map_objects/kejim/cutbody
{
	qer_editorimage	models/map_objects/kejim/cutbody
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/kejim/cutbody
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/cutbodyglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 1 0 10
    }
}

models/map_objects/kejim/generator_original
{
	qer_editorimage	models/map_objects/kejim/generator
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map gfx/misc/lightning3
        blendFunc GL_ONE GL_ZERO
        tcMod rotate 50
        tcMod scroll 45 75
        tcMod scale 5 5
        tcMod stretch sin 1 0.1 5 5
    }
    {
        map gfx/misc/lightning3
        blendFunc GL_ONE GL_ONE
        glow
        tcMod rotate -50
        tcMod scroll -75 -50
        tcMod scale 5 5
        tcMod stretch sin 1 0.1 5 5
    }
    {
        map gfx/misc/lightningflash
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 1 0.5
        tcMod scale 0.5 7
        tcMod stretch sin 1 0.1 5 5
    }
    {
        map models/map_objects/kejim/generator
        alphaFunc GE128
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/kejim/generator
{
	qer_editorimage	models/map_objects/kejim/generator
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        animMap 2 gfx/misc/lightning3 gfx/colors/black 
        blendFunc GL_ONE GL_ZERO
        tcMod rotate 50
        tcMod scroll 45 75
        tcMod scale 5 5
        tcMod stretch sin 1 0.1 5 5
    }
    {
        animMap 2 gfx/misc/lightning3 gfx/colors/black 
        blendFunc GL_ONE GL_ONE
        glow
        tcMod rotate -50
        tcMod scroll -75 -50
        tcMod scale 5 5
        tcMod stretch sin 1 0.1 5 5
    }
    {
        animMap 2 gfx/misc/lightningflash gfx/colors/black 
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 1 0.5
        tcMod scale 0.5 7
        tcMod stretch sin 1 0.1 5 5
    }
    {
        map models/map_objects/kejim/generator
        alphaFunc GE128
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/kejim/ravengine
{
	q3map_nolightmap
    {
        map models/map_objects/kejim/ravengine
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/ravenengine_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/kejim/raven_gear
{
	q3map_nolightmap
    {
        map models/map_objects/kejim/raven_gear
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/raven_gear_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/kejim/raven_cap
{
	q3map_nolightmap
    {
        map models/map_objects/kejim/raven_cap
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/engine_cap_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/map_objects/kejim/raven_cap_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/map_objects/kejim/raven_cap_off
{
	qer_editorimage	models/map_objects/kejim/raven_cap
	q3map_nolightmap
    {
        map models/map_objects/kejim/raven_cap
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/kejim/engine_cap_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/yavin/fern
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/fern
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/plant
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/plant
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/fern3
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/fern3
        alphaFunc GE128
        rgbGen vertex
    }
    {
        map models/map_objects/yavin/fern3_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/yavin/grass
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/grass
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/grass_tall
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/grass_tall
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/fern2
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/fern2
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree06b
{
	surfaceparm	trans
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree06b
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree01btga
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree01btga
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree05_vines
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree05_vines
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree09b
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree09b
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree08b
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree08b
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree09_vines
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree09_vines
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree09a
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree09a
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree09d
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree09d
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/tree2
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree2
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/vines
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/vines
        alphaFunc GE128
        rgbGen vertex
    }
}

models/map_objects/yavin/light
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/yavin/light
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/yavin/light_glow
        blendFunc GL_ONE GL_ONE
        glow
        tcMod rotate 5
        tcMod scroll 0.5 0
    }
    {
        map models/map_objects/yavin/light_glow2
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scale 3 3
        tcMod scroll 0 0.25
    }
}

models/map_objects/yavin/tree2_b
{
	qer_editorimage	models/map_objects/yavin/tree2
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree2
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/tree09d_b
{
	qer_editorimage	models/map_objects/yavin/tree09d
	q3map_alphashadow
	cull	twosided
    {
        map models/map_objects/yavin/tree09d
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/tree09a_b
{
	qer_editorimage	models/map_objects/yavin/tree09a
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree09a
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/tree08b_b
{
	qer_editorimage	models/map_objects/yavin/tree08b
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree08b
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/tree09b_b
{
	qer_editorimage	models/map_objects/yavin/tree09b
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree09b
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/tree06b_b
{
	qer_editorimage	models/map_objects/yavin/tree06b
	surfaceparm	trans
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree06b
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/grass_tall_b
{
	qer_editorimage	models/map_objects/yavin/grass_tall
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/grass_tall
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/grass_b
{
	qer_editorimage	models/map_objects/yavin/grass
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/grass
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/fern3_b
{
	qer_editorimage	models/map_objects/yavin/fern3
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/fern3
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/plant_b
{
	qer_editorimage	models/map_objects/yavin/plant
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/plant
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/tree09_vines_b
{
	qer_editorimage	models/map_objects/yavin/tree09_vines
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree09_vines
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/vines_b
{
	qer_editorimage	models/map_objects/yavin/vines
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/vines
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/nar_shaddar/skiffaces
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map gfx/effects/bryar_blob
        blendFunc GL_ONE GL_ZERO
        rgbGen wave sin 0.5 0.25 0 1
        tcMod scroll 0.5 0
        tcMod scale 6 1
    }
    {
        map gfx/effects/bryar_blob
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.25 0 1
        tcMod scroll -0.5 0
        tcMod scale 6 1
    }
    {
        map models/map_objects/nar_shaddar/skiffaces
        alphaFunc GE128
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/nar_shaddar/podcar
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map gfx/effects/shield
        blendFunc GL_ONE GL_ZERO
        rgbGen identity
        tcMod stretch sin 1.65 -1 0 3
    }
    {
        map models/map_objects/nar_shaddar/podcar
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/nar_shaddar/podfin
{
	qer_editorimage	models/map_objects/nar_shaddar/podfin
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map gfx/misc/redring
        blendFunc GL_ONE GL_ZERO
        rgbGen identity
        tcMod scroll 0 -2
        tcMod rotate -25
    }
    {
        map gfx/misc/redring
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0 2
        tcMod rotate 25
    }
    {
        map models/map_objects/nar_shaddar/podfin
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/nar_shaddar/podfinglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 0 1 0 0.25
    }
}

models/map_objects/nar_shaddar/podpanels
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/nar_shaddar/podpanels
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/nar_shaddar/podpanelsglow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/nar_shaddar/light_wall
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/nar_shaddar/light_wall
        blendFunc GL_ONE GL_ZERO
        rgbGen exactVertex
    }
    {
        map models/map_objects/nar_shaddar/light_wallglow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/nar_shaddar/fishglass
{
	q3map_material	Glass
    {
        map models/map_objects/nar_shaddar/fishglass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

models/map_objects/nar_shaddar/fishplants
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/nar_shaddar/fishplants
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

models/map_objects/nar_shaddar/plant
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/nar_shaddar/plant
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/nar_shaddar/jabacam
{
	q3map_nolightmap
    {
        map models/map_objects/nar_shaddar/gliter
        blendFunc GL_ONE GL_ZERO
        tcMod rotate 44
        tcMod scale 5 5
    }
    {
        map models/map_objects/nar_shaddar/jabacam
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/cairn/bcpanel
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/cairn/bcpanel
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/cairn/bcpanelglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.1 0 40
    }
}

models/map_objects/cairn/lightfaces
{
    {
        map models/map_objects/cairn/lightfaces
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/cairn/lightfacesglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.005 0 50
    }
}

models/map_objects/cairn/controlpn_face
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/cairn/controlpn_face
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/cairn/controlpn_faceglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.1 0 25
    }
}

models/map_objects/cairn/utilitylight_face
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/cairn/utilitylight_face
        blendFunc GL_ONE GL_ONE
    }
    {
        map models/map_objects/cairn/utilitylight_face
        blendFunc GL_ONE GL_ZERO
    }
}

models/map_objects/cairn/welder
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/cairn/welder
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/cairn/welder_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/cairn/abcrystal
{
	cull	twosided
    {
        map models/map_objects/cairn/abcrystal
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.75 0.05 0 2
    }
}

models/map_objects/bespin/statue_crystal
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/bespin/statue_crystal
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.1 0 25
    }
}

models/map_objects/bespin/sconce_light
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/bespin/sconce_light
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/bespin/sconce_lightglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.1 0 0.25
    }
}

models/map_objects/bespin/scow_engine
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/bespin/scow_engine
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/bespin/scow_engine
        blendFunc GL_ONE GL_ZERO
        rgbGen wave sin 0.25 0.225 1 10
    }
    {
        map models/map_objects/bespin/scow_engine
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.225 -0.5 10
    }
}

models/map_objects/bespin/street_light
{
	q3map_nolightmap
    {
        map models/map_objects/bespin/street_light
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/bespin/street_light_glw
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/bespin/twinpodccglow
{
	qer_editorimage	models/map_objects/bespin/twinpodcc
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/bespin/twinpodcc
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/bespin/twinpodccglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.25 0 25
    }
    {
        map models/map_objects/bespin/twinpodccglow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/imp_detention/door_lock
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_detention/door_lock
        blendFunc GL_ONE GL_ZERO
    }
    {
        map models/map_objects/imp_detention/door_lockglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 1
    }
}

models/map_objects/imp_detention/tie_body_damage
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_detention/tie_body_damage
        blendFunc GL_ONE GL_ZERO
    }
    {
        map models/map_objects/imp_detention/tie_body_damageglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 1 0.5 0 10
    }
    {
        map models/map_objects/imp_detention/tie_body_damageglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0.5 0.5 -0.5 2
    }
}

models/weapons2/thermal/thermal_w_2
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/weapons2/thermal/thermal_w_1
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/thermal/thermal_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.6 0.4 0 3
    }
}

models/map_objects/cinematics/rave_screen_pilot
{
	q3map_nolightmap
    {
        map models/map_objects/cinematics/rave_screen_pilot
        blendFunc GL_ONE GL_ZERO
    }
    {
        map models/map_objects/cinematics/rave_screen_pilot1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 0 1 0 0.25
    }
    {
        map models/map_objects/cinematics/rave_screen_pilot2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 -0.5 0.5
    }
    {
        map models/map_objects/cinematics/rave_screen_pilot3
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sin 1 0.5 -1 0.5
    }
    {
        map models/map_objects/cinematics/rave_screen_pilot4
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sawtooth 0 1 0 0.9
        tcMod scroll 1 0
    }
    {
        map models/map_objects/cinematics/rave_screen_pilot4
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave sawtooth 0 1 0 1
        tcMod scroll 0 1
    }
}

models/map_objects/cinematics/rave_screen_copilot
{
    {
        map models/map_objects/cinematics/rave_screen_copilot2
        blendFunc GL_ONE GL_ZERO
        rgbGen wave sawtooth 0.5 1.3 1 1
    }
    {
        map models/map_objects/cinematics/rave_screen_pilot4
        blendFunc GL_DST_COLOR GL_ONE
        tcMod scroll -1 0
        tcMod scale 2 3
    }
}

models/map_objects/cinematics/imp_wall
{
	qer_editorimage	models/map_objects/cinematics/imp_wall
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/impdetention/light_fx
        blendFunc GL_ONE GL_ZERO
        tcMod scroll -0.3 0
        tcMod scale 3 1
    }
    {
        map models/map_objects/cinematics/imp_wall
        blendFunc GL_ONE GL_SRC_ALPHA
    }
    {
        map models/map_objects/cinematics/imp_wallglow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/force_boon
{
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/mp/force_boon
        alphaFunc GE128
        blendFunc GL_SRC_ALPHA GL_ZERO
        depthWrite
    }
    {
        map models/map_objects/mp/force_boon
        blendFunc GL_ONE GL_ZERO
        depthFunc equal
        rgbGen lightingDiffuse
    }
}

models/map_objects/mp/flag
{
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/mp/flag
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/mp/flag2
{
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/mp/flag2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/mp/boon
{
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/mp/boon
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        clampmap models/map_objects/mp/boon_pulse1
        blendFunc GL_ONE GL_ONE
        glow
        tcMod rotate 50
    }
    {
        clampmap models/map_objects/mp/boon_pulse2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.6 0.2 3
        tcMod rotate -25
    }
}

models/map_objects/mp/dark_forceother
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/dark_forceother
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/dark_forceother_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/saber_throw
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/saber_throw
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/saber_throw_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/light_telepathy
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/light_telepathy
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/light_telepathy_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/light_heal
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/light_heal
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/light_heal_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/dark_rage
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/dark_rage
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/dark_rage_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/dark_enlight
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/dark_enlight
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/dark_enlight_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/dark_grip
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/dark_grip
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/dark_grip_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/dark_lightning
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/dark_lightning
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/dark_lightning_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/dark_drain
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/dark_drain
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/dark_drain_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/saber_attack
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/saber_attack
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/saber_attack_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/saber_defend
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/saber_defend
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/saber_defend_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/light_absorb
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/light_absorb
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/light_absorb_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/light_enlight
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/light_enlight
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/light_enlight_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/light_healother
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/light_healother
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/light_healother_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/light_protect
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/light_protect
        blendFunc GL_ONE GL_ZERO
    }
    {
        map models/map_objects/mp/light_protect_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/force_telepathy
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_telepathy
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/light_telepathy_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/mp/force_pull
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_pull
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/force_pull_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/force_push
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_push
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/force_push_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave triangle 0 1 0 1
        tcMod stretch sawtooth 0.9 0.8 0 1
    }
}

models/map_objects/mp/force_sight
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_sight
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/force_sight_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/force_speed
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_speed
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/force_speed_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/force_lightning
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_lightning
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/force_lightning_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/mp/force_jump
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_jump
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/force_jump_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/mp/force_heal
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_heal
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/light_heal_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/mp/force_grip
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/force_grip
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/force_grip_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/mp/shield
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/shield_mp
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/shield_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/mp/shield_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 1 3 1
    }
}

models/map_objects/mp/medpac_mp
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/medpac_mp
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/health
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        rgbGen wave sin 0 1 0 0.75
        tcMod scroll 0 3
    }
    {
        map models/map_objects/mp/health_field2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}

models/map_objects/mp/shield_sm_mp
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/shield_sm_mp
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/shield_field
        blendFunc GL_DST_COLOR GL_ONE
        rgbGen wave triangle 0.6 1 0 1
        tcMod scroll 0 3
    }
    {
        map models/map_objects/mp/shield_field2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}

models/map_objects/mp/bacta_mp
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/bacta_mp
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/health
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        rgbGen wave sin 0 1 0 0.75
        tcMod scroll 0 3
    }
    {
        map models/map_objects/mp/health_field2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod scroll 0.5 0.5
    }
}

models/map_objects/mp/psd_mp
{
	qer_editorimage	models/map_objects/mp/psd_mp
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/mp/psd_mp
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/shield_field
        blendFunc GL_DST_COLOR GL_ONE
        rgbGen wave triangle 0.6 1 0 1
        tcMod scroll 0 3
    }
    {
        map models/map_objects/mp/shield_field2
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
        tcMod entityTranslate
        tcMod scroll 0.5 0.5
    }
}

models/map_objects/doom/antenna
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/doom/antenna
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/doom/antenna_glow
        alphaFunc GE192
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0 2
    }
    {
        map models/map_objects/doom/antenna_glow2
        blendFunc GL_ONE GL_ONE
    }
}

models/chunks/metal/metal
{
	q3map_nolightmap
    {
        map models/chunks/metal/metal
        rgbGen lightingDiffuse
        tcMod scale 2 2
    }
}

models/chunks/metal/metal2
{
	q3map_nolightmap
    {
        map models/chunks/metal/metal2
        rgbGen lightingDiffuse
    }
}

models/chunks/rock/rock
{
    {
        map models/chunks/rock/rock
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
        tcMod scale 2 2
    }
}

models/chunks/rock/rock2
{
    {
        map models/chunks/rock/rock2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
        tcMod scale 2 2
    }
}

models/chunks/rock/rock3
{
    {
        map models/chunks/rock/rock3
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
        tcMod scale 2 2
    }
}

models/chunks/crate/crate1
{
	q3map_nolightmap
    {
        map models/chunks/crate/crate1
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
        tcMod scale 2 2
    }
}

models/chunks/crate/crate2
{
	q3map_nolightmap
    {
        map models/chunks/crate/crate2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
        tcMod scale 2 2
    }
    {
        map models/chunks/metal/metal_spec
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
    }
}

models/weapons2/stun_baton/blades
{
	q3map_nolightmap
    {
        map models/weapons2/stun_baton/blades
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map textures/cairn/lightning3
        blendFunc GL_ONE GL_ONE
        glow
        tcMod turb 0 1 0 1
        tcMod scroll 0 5
    }
    {
        map gfx/effects/protectionfield2
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scroll -2 0
    }
}

models/map_objects/test/metal
{
	q3map_nolightmap
    {
        map models/map_objects/test/metal
        rgbGen lightingDiffuse
        tcMod scale 6 6
    }
    {
        map models/map_objects/test/fc_pillar2_lite
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

models/map_objects/test/fc_pillar2
{
	q3map_nolightmap
    {
        map models/map_objects/test/fc_pillar2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/test/rust_test
        blendFunc GL_DST_COLOR GL_ONE
        rgbGen identity
        tcMod scale 4 4
    }
}

models/map_objects/test/beam_chris
{
	qer_editorimage	models/map_objects/test/beam
	q3map_nolightmap
    {
        map models/map_objects/test/beam
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/swoop/swoop
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/players/swoop/swoop_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/swoop/swoop_black
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop_black
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/players/swoop/swoop_black_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/swoop/swoop_blue
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/players/swoop/swoop_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/swoop/swoop_gold
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop_gold
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/players/swoop/swoop_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/swoop/swoop_green
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop_green
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/players/swoop/swoop_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/swoop/swoop_purple
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop_purple
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/players/swoop/swoop_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/swoop/swoop_silver
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop_silver
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/players/swoop/swoop_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/swoop/swoop2
{
	q3map_nolightmap
    {
        map models/players/swoop/swoop2
        rgbGen lightingDiffuse
    }
    {
        map models/players/swoop/swoop2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        glow
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/tie_fighter_body
{
    {
        map models/map_objects/ships/tie_fighter_body
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/tie_fighter_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/map_objects/ships/tie_fighter_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/map_objects/ships/tie_fighter_wing
{
    {
        map models/map_objects/ships/tie_fighter_wing
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/tie_fighter_wing_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/tie_bomber_wing2
{
    {
        map models/map_objects/ships/tie_bomber_wing2
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/tie_bomber_wing_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/tie_bomber_window
{
	q3map_nolightmap
    {
        map models/map_objects/ships/tie_bomber_window
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/tie_bomber_glass_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/tie_bomber
{
	q3map_nolightmap
    {
        map models/map_objects/ships/tie_bomber
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/tie_bomber_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/map_objects/ships/tie_bomber_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
    }
}

models/map_objects/ships/tie_bomber_new
{
	qer_editorimage	models/map_objects/ships/tie_bomber
	q3map_nolightmap
    {
        map models/map_objects/ships/tie_bomber
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/tie_bomber_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/z95_wing
{
	q3map_nolightmap
    {
        map models/map_objects/ships/z95_wing
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/z95_wing_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/z95_cockpit
{
	q3map_nolightmap
    {
        map models/map_objects/ships/z95_cockpit
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/z_95_canopy_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/z95_body
{
	q3map_nolightmap
    {
        map models/map_objects/ships/z95_body
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/ships/z_95_body_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/ships/academy_pods
{
    {
        map $lightmap
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_pods
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

models/map_objects/ships/academy_body
{
    {
        map $lightmap
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_body
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_body_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/ships/academy_cockpit
{
    {
        map $lightmap
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_cockpit
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_cockpit_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/ships/academy_door
{
    {
        map $lightmap
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_door
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_door_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/ships/academy_engine
{
    {
        map $lightmap
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_engine
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_engine_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/ships/academy_frame
{
    {
        map $lightmap
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_frame
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_frame_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/ships/academy_beam
{
    {
        map $lightmap
        rgbGen identity
    }
    {
        map models/map_objects/ships/academy_beam
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

models/map_objects/hoth/infirmary_table_2_glasstube
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/hoth/infirmary_table_2_glasstube
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map textures/common/env_chrome
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        alphaGen const 0.5
        tcGen environment
    }
}

models/map_objects/hoth/e_web_cannon
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/e_web_cannon
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/e_webcannon_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/hoth/e_web_bmerge
{
	surfaceparm	trans
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/hoth/e_web_bmerge
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/eweb_bmerge_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/hoth/turret_bottom
{
    {
        map models/map_objects/hoth/turret_bottom
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/turret_bottom_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/hoth/turret_top
{
    {
        map models/map_objects/hoth/turret_top
    }
    {
        map models/map_objects/hoth/turret_top_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/roof_top/podcar
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/podcar
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/roof_top/podcar_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/roof_top/beam
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/roof_top/beam
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/imperial/projector
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/projector
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/projector_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/bounty/light
{
	q3map_nolightmap
    {
        map models/map_objects/bounty/light
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/bounty/light_glw
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/bounty/cache_panel
{
    {
        map $lightmap
    }
    {
        map models/map_objects/bounty/cache_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/bounty/cache_panel_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map models/map_objects/bounty/cache_panel_anim
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 0.5 0 1
    }
}

models/map_objects/bounty/light_ledge_inner
{
    {
        map $lightmap
    }
    {
        map models/map_objects/bounty/light_ledge_inner
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/bounty/light_ledge_inner_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/bounty/sconce_light
{
    {
        map $lightmap
    }
    {
        map models/map_objects/bounty/sconce_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/bounty/sconce_light_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}


models/map_objects/byss/tractor_base
{
	q3map_nolightmap
    {
        map models/map_objects/byss/tractor_base
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/tractor_base_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/byss/tractor_base_panel
{
	q3map_nolightmap
    {
        map models/map_objects/byss/tractor_base_panel
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/tractor_base_panel_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/byss/tractor_top
{
	q3map_nolightmap
    {
        map models/map_objects/byss/tractor_top
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/tractor_top_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/byss/tractor_top_panel
{
	q3map_nolightmap
    {
        map models/map_objects/byss/tractor_top_panel
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/tractor_top_panel_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/byss/brace
{
	q3map_nolightmap
    {
        map models/map_objects/byss/brace
        rgbGen vertex
    }
    {
        map models/map_objects/byss/brace_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/byss/brace_light
{
	qer_editorimage	models/map_objects/byss/brace
	q3map_nolightmap
    {
        map models/map_objects/byss/brace_light
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/brace_light_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/byss/firing_station_consoles
{
	q3map_nolightmap
    {
        map models/map_objects/byss/firing_station_consoles
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/firing_station_consoles_glow
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/byss/control_panel_lights
{
	q3map_nolightmap
    {
        map models/map_objects/byss/control_panel_lights
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/control_panel_lights_glow
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/byss/firing_station
{
	qer_editorimage	models/map_objects/byss/firing_station
    {
        map models/map_objects/byss/firing_station
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/firing_station_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/byss/control_panel
{
	qer_editorimage	models/map_objects/byss/control_panel
    {
        map models/map_objects/byss/control_panel
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/byss/control_panel_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/imp_detention/atst_body_alpha
{
	sort	15
    {
        map models/map_objects/imp_detention/atst_body
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen entity
    }
}

models/map_objects/imp_detention/atst_legs_alpha
{
	sort	15
    {
        map models/map_objects/imp_detention/atst_legs
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
        alphaGen entity
    }
}

models/map_objects/imperial/antenna_base
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/antenna_base
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/antenna_base_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/imperial/antenna_new_glow
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/antenna_new_glow
        rgbGen wave sin 1 1 0 1
    }
    {
        map models/map_objects/imperial/antenna_new_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/imperial/antenna_new
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/antenna_new
        rgbGen vertex
    }
}

models/map_objects/imperial/cell_door_light
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/cell_door_light
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/cell_door_light_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/map_objects/imperial/cell_door_pad
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/cell_door_pad
        rgbGen lightingDiffuse
    }
}

models/map_objects/imperial/cell_door_pad_screen
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/cell_door_pad_screen
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/cell_door_pad_screen01
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen wave sin 0.1 1 0 0.4
    }
    {
        map models/map_objects/imperial/cell_door_pad_screen02
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen wave sin 0.05 0.5 0 0.5
    }
}

models/map_objects/imperial/cell_door_frame
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/cell_door_frame
        rgbGen lightingDiffuse
    }
}

models/map_objects/imperial/bunk
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/bunk
    }
    {
        map models/map_objects/imperial/bunk_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/imperial/monitor_buttons
{
    {
        map $lightmap
    }
    {
        map models/map_objects/imperial/monitor_buttons
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/imperial/monitor_buttons_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/imperial/gen_arches
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/gen_arches
        rgbGen lightingDiffuse
    }
}

models/map_objects/imperial/gen_body
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/gen_body
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/gen_body_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/imperial/gen_fins
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/gen_fins
        rgbGen lightingDiffuse
    }
}

models/map_objects/imperial/generator
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/generator
        rgbGen lightingDiffuse
    }
}

models/map_objects/imperial/monitor_screen_02
{
    {
        map $lightmap
    }
    {
        map models/map_objects/imperial/monitor_screen_02
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/imperial/monitor_screen_02_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod turb 0 0 0 1
    }
}

models/map_objects/imperial/monitor_screen_03
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/monitor_screen_03
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/monitor_screen_03_wipe
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0 -0.4
    }
    {
        map models/map_objects/imperial/monitor_screen_03_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/imperial/monitor_screen_01
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/monitor_screen_01
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/monitor_screen_01_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/imperial/antenna_new_b
{
	qer_editorimage	models/map_objects/imperial/antenna_new
	q3map_nolightmap
    {
        map models/map_objects/imperial/antenna_new
        rgbGen lightingDiffuse
    }
}

models/map_objects/imperial/switch
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/switch
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/switch_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        clampanimMap 1 models/map_objects/imperial/switch_red models/map_objects/imperial/switch_grn 
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/imperial/switch_handle
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/switch_handle
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/switch_handle_glw
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 0.5 0 0.75
    }
}

models/map_objects/imperial/archway_lights
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/archway_lights
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/archway_lights_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/imperial/crate_04_panel
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/crate_04_panel
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/crate_04_panel_blu
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.35 0 0.6
    }
    {
        map models/map_objects/imperial/crate_04_pwr
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/imperial/consoleface_01
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/consoleface_01
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/consoleface_01_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/imperial/airpure
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/airpure
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/airpure_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.35 0 0.6
    }
}

models/map_objects/imperial/dish
{
	q3map_nolightmap
    {
        map models/map_objects/imperial/dish
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/imperial/dish_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/cairn/utilitylight_face
{
    {
        map $lightmap
    }
    {
        map models/map_objects/cairn/utilitylight_face
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/cairn/utilitylightface_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/imp_mine/control_panel_shd
{
	q3map_nolightmap
    {
        map models/map_objects/imp_mine/control_panel_shd
        rgbGen vertex
    }
    {
        map models/map_objects/imp_mine/control_panel_shd_on
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen wave sin 0 0.5 5 0.3
    }
}

models/map_objects/imp_mine/control_panel
{
	q3map_nolightmap
    {
        map models/map_objects/imp_mine/control_panel
        rgbGen vertex
    }
}

models/map_objects/danger/ship_item01_glow
{
	q3map_nolightmap
    {
        map textures/colors/black
    }
    {
        map models/map_objects/danger/ship_item01_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.5 300 100
    }
}

models/map_objects/danger/ship_item01
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/danger/ship_item01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
    }
}

models/map_objects/danger/ship_item02_glow
{
	qer_editorimage	textures/colors/black
	q3map_nolightmap
    {
        map textures/colors/black
    }
    {
        map models/map_objects/danger/ship_item02_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.5 300 100
    }
}

models/map_objects/danger/ship_item03_glow
{
	qer_editorimage	textures/colors/black
	q3map_nolightmap
    {
        map textures/colors/black
    }
    {
        map models/map_objects/danger/ship_item03_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.5 300 100
    }
    {
        map models/map_objects/danger/ship_item03_anim
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 50 100
    }
}

models/map_objects/danger/red_placement
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/danger/red_placement
        blendFunc GL_ONE GL_ONE_MINUS_SRC_COLOR
        rgbGen wave sin 1 0.5 1 0.3
        tcMod scale 6 6
    }
}

models/map_objects/danger/ship_item04
{
	q3map_nolightmap
    {
        map gfx/misc/bolt1_rotated
        rgbGen identity
        tcMod scroll 0 1
    }
    {
        map models/map_objects/danger/ship_item04
        blendFunc GL_ONE GL_SRC_ALPHA
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/danger/ship_item04_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.2
    }
}

models/map_objects/desert/switch_locked
{
	q3map_nolightmap
    {
        map models/map_objects/desert/switch
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/desert/switch_locked
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/desert/switch_unlocked
{
	q3map_nolightmap
    {
        map models/map_objects/desert/switch
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/desert/switch_unlocked
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/desert/switch_open
{
	q3map_nolightmap
    {
        map models/map_objects/desert/switch
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/desert/switch_open
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/desert/vent_grime
{
	q3map_nolightmap
    {
        map models/map_objects/desert/vent_grime
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/map_objects/desert/landing_light_glow
{
	q3map_nolightmap
    {
        map models/map_objects/desert/landing_light_glow
        rgbGen vertex
    }
    {
        map models/map_objects/desert/landing_light_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/desert/wall_light
{
	q3map_nolightmap
    {
        map models/map_objects/desert/wall_light
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/desert/wall_light_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/desert/sandcrawler_02
{
	q3map_nolightmap
    {
        map models/map_objects/desert/sandcrawler_02
        rgbGen vertex
    }
}

models/map_objects/desert/sandcrawler_01
{
	q3map_nolightmap
    {
        map models/map_objects/desert/sandcrawler_01
        rgbGen vertex
    }
}

models/map_objects/desert/barrels_panel
{
    {
        map $lightmap
    }
    {
        map models/map_objects/desert/barrels_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/desert/barrel_panel_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/desert/cave_lamp_bulbs
{
    {
        map $lightmap
    }
    {
        map models/map_objects/desert/cave_lamp_bulbs
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/desert/cave_lamp_bulbs_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/desert/cave_lamp_bulbs_drt
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

models/map_objects/desert/support_light
{
    {
        map $lightmap
    }
    {
        map models/map_objects/desert/support_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/desert/support_light_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/desert/support_light_glw2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0 1 0.6 0.7
    }
    {
        map models/map_objects/desert/support_light_glw3
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave triangle 0 1 0 1
    }
}

models/map_objects/desert/switch3
{
    {
        map $lightmap
    }
    {
        map models/map_objects/desert/switch3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 models/map_objects/desert/switch3_locked models/map_objects/desert/switch3_unlocked 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/desert/handle3
{
    {
        map $lightmap
    }
    {
        map models/map_objects/desert/handle3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/desert/handle3_glw
        blendFunc GL_ONE GL_ONE
        rgbGen wave triangle 0 1 0 1
    }
}

models/map_objects/desert/landing_light_glow_b
{
	qer_editorimage	models/map_objects/desert/landing_light_glow
	q3map_nolightmap
    {
        map models/map_objects/desert/landing_light_glow
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/desert/landing_light_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/desert/dome
{
	qer_editorimage	textures/desert/stucco_grime_top_bottom.tga
	q3map_nolightmap
    {
        map textures/desert/stucco_grime_top_bottom
        rgbGen lightingDiffuse
    }
}

models/map_objects/desert/view_panel_screen_desert
{
	q3map_nolightmap
    {
        map models/map_objects/desert/view_panel_screen_desert
    }
    {
        map models/map_objects/desert/view_panel_screen_desert_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 1
    }
    {
        map models/map_objects/desert/view_panel_screen_desert_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 5
    }
    {
        map models/map_objects/desert/view_panel_screen_desert_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 1 0 1
    }
    {
        map models/map_objects/desert/view_panel_screen_desert_glow3
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0 0.35
    }
}

models/map_objects/desert/view_panel_effect_desert
{
    {
        map models/map_objects/desert/view_panel_effect_glow1
        rgbGen wave sawtooth 0 1 0 1
        tcMod scroll 4 0
    }
    {
        map models/map_objects/desert/view_panel_effect_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave inversesawtooth 0 1 0 1
        tcMod scroll 0 0.5
    }
}

models/map_objects/desert/view_panel_frame_desert
{
    {
        map models/map_objects/desert/view_panel_frame_desert
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/desert/view_panel_frame_desert_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 1
    }
    {
        map models/map_objects/desert/view_panel_frame_desert_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 1 0 0.75
    }
    {
        map models/map_objects/desert/view_panel_frame_desert_glow3
        blendFunc GL_ONE GL_ONE
        rgbGen wave sawtooth 0 1 0 1
    }
}

models/map_objects/ships/falcon_disk
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/ships/falcon_disk
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/catw
{
	surfaceparm	trans
	q3map_nolightmap
    {
        map models/map_objects/factory/catw
        blendFunc GL_ONE GL_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

models/map_objects/factory/power18a
{
	surfaceparm	trans
	q3map_nolightmap
    {
        map models/map_objects/factory/power18a
        depthWrite
        rgbGen vertex
        tcMod rotate 10
        tcMod scroll 0 10
    }
    {
        map models/map_objects/factory/llinep
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        tcMod rotate 300
        tcMod scroll 3 0
    }
    {
        map models/map_objects/factory/llinep
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ONE
        tcMod rotate 100
        tcMod scroll 3 0
    }
    {
        map models/map_objects/factory/rmask
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        tcMod stretch sin 1 0.05 0 7
    }
}

models/map_objects/factory/ceiling_light_flare
{
	q3map_flare	textures/flares/flare_lt_blue
	q3map_nolightmap
    {
        map models/map_objects/factory/ceiling_light_flare
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
    }
}

models/map_objects/factory/light_post_sm
{
	q3map_nolightmap
    {
        map models/map_objects/factory/light_post_sm
        blendFunc GL_ONE GL_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

models/map_objects/factory/f_door
{
	q3map_nolightmap
    {
        map models/map_objects/factory/f_door
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
    }
    {
        map models/map_objects/factory/f_door_glow
        blendFunc GL_ONE GL_ONE
        rgbGen vertex
    }
}

models/map_objects/factory/brace2
{
	q3map_nolightmap
    {
        map models/map_objects/factory/brace2
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
    }
    {
        map models/map_objects/factory/brace2_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/factory/power_glow
{
	q3map_nolightmap
    {
        map $whiteimage
        rgbGen const ( 0.001000 0.000000 0.000000 )
    }
    {
        map models/map_objects/factory/power_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 1 0 0.2
        tcMod scroll 0 -0.1
    }
    {
        map models/map_objects/factory/power_glow
        blendFunc GL_ONE GL_ONE
        detail
        tcMod scroll -0.04 -0.08
    }
    {
        map models/map_objects/factory/power_glow
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen wave sin 0.7 1 0 0.07
        tcMod scroll -0.004 -0.04
    }
    {
        map models/map_objects/factory/power_glow
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen const ( 0.007843 0.800000 0.584314 )
        tcMod scale 0.7 0.7
        tcMod scroll 0 -0.03
    }
}

models/map_objects/factory/s_light_bulbs
{
	q3map_nolightmap
    {
        map models/map_objects/factory/s_light_bulbs
        rgbGen vertex
    }
    {
        map models/map_objects/factory/s_light_bulbs_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen vertex
    }
}

models/map_objects/factory/s_light
{
	q3map_flare	textures/flares/flare_lt_blue
	q3map_nolightmap
    {
        map models/map_objects/factory/s_light
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
    }
}

models/map_objects/factory/s_crate_03_liquid
{
	surfaceparm	trans
	q3map_nolightmap
    {
        map models/map_objects/factory/s_crate_03_liquid
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
        alphaGen const 0.5
    }
}

models/map_objects/factory/s_crate_03_glass
{
	surfaceparm	trans
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/factory/s_crate_03_glass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/s_tank_large
{
	q3map_nolightmap
    {
        map models/map_objects/factory/s_tank_large
        rgbGen vertex
    }
    {
        map models/map_objects/factory/s_tank_large_glow
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/factory/hpart
{
	q3map_nolightmap
    {
        map models/map_objects/factory/hpart
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
    }
}

models/map_objects/factory/window_frame
{
	q3map_nolightmap
    {
        map models/map_objects/factory/window_frame
        rgbGen vertex
    }
}

models/map_objects/factory/glass
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/factory/glass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/glass_reflect
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        alphaGen const 0.05
        tcGen environment
        tcMod scale 1.5 1.5
    }
}

models/map_objects/factory/brace_new_light
{
	q3map_nolightmap
    {
        map models/map_objects/factory/brace_new_light
        rgbGen vertex
    }
    {
        map models/map_objects/factory/brace_new_light_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/factory/brace_new
{
	q3map_nolightmap
    {
        map models/map_objects/factory/brace_new
        rgbGen vertex
    }
}

models/map_objects/factory/ceiling_light
{
	q3map_nolightmap
    {
        map models/map_objects/factory/ceiling_light
        rgbGen vertex
    }
    {
        map models/map_objects/factory/ceiling_light_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/factory/terrain
{
// q3map_lightsubdivide	32

	q3map_shadeangle	160
	qer_editorimage	models/map_objects/factory/fterbake
	q3map_nolightmap
	q3map_nonplanar
	q3map_forcemeta
	q3map_onlyvertexlighting
    {
        map models/map_objects/factory/terrain
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
        tcMod scale 4 4
    }
    {
        map models/map_objects/factory/terrain
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen vertex
    }
}

models/map_objects/factory/ceiling_light_new
{
	q3map_nolightmap
    {
        map models/map_objects/factory/ceiling_light_new
        rgbGen vertex
    }
    {
        map models/map_objects/factory/ceiling_light_new_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/factory/pilar2
{
	q3map_nolightmap
    {
        map textures/factory/basemetal2
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
        tcMod scale 2 2
    }
    {
        map models/map_objects/factory/pilar2
        blendFunc GL_ONE GL_ONE_MINUS_SRC_COLOR
        rgbGen vertex
    }
    {
        map textures/factory/basemetal2
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        detail
        tcMod scale 4 4
    }
}

models/map_objects/factory/pilar
{
	q3map_nolightmap
    {
        map textures/factory/basic5
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
        tcMod scale 4 4
    }
    {
        map models/map_objects/factory/pilar
        blendFunc GL_ONE GL_ONE_MINUS_SRC_COLOR
        rgbGen vertex
    }
    {
        map textures/factory/basemetal2
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        tcMod scale 10 10
    }
}

models/map_objects/factory/s_crane_pipes
{
	q3map_nolightmap
    {
        map textures/factory/crane_pipe
        rgbGen lightingDiffuse
        tcMod scale 10 10
    }
    {
        map models/map_objects/factory/s_crane_pipes
        blendFunc GL_DST_COLOR GL_ZERO
        detail
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/s_crane_cables
{
	q3map_nolightmap
    {
        map textures/factory/crane_coil
        rgbGen lightingDiffuse
        tcMod scale 3 3
    }
    {
        map models/map_objects/factory/s_crane_cables
        blendFunc GL_DST_COLOR GL_ZERO
        detail
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/s_crane_parts
{
	q3map_nolightmap
    {
        map textures/factory/basic1
        rgbGen lightingDiffuse
        tcMod scale 10 10
    }
    {
        map models/map_objects/factory/s_crane_parts
        blendFunc GL_DST_COLOR GL_ZERO
        detail
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/s_crane_body
{
	q3map_nolightmap
    {
        map textures/factory/inside_floor
        rgbGen lightingDiffuse
        tcMod scale 5 10
    }
    {
        map models/map_objects/factory/s_crane_body
        blendFunc GL_DST_COLOR GL_ZERO
        detail
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/s_crane_motor
{
	q3map_nolightmap
    {
        map textures/factory/darkfloor
        rgbGen lightingDiffuse
        tcMod scale 10 10
    }
    {
        map models/map_objects/factory/s_crane_motor
        blendFunc GL_DST_COLOR GL_ZERO
        detail
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/catbig
{
	qer_editorimage	models/map_objects/factory/catbig
	surfaceparm	trans
	q3map_nolightmap
    {
        map models/map_objects/factory/catbig
        blendFunc GL_ONE GL_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

models/map_objects/factory/f_door_b
{
	qer_editorimage	models/map_objects/factory/f_door
	q3map_nolightmap
    {
        map models/map_objects/factory/f_door
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/f_door_glow
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/factory/hpart_b
{
	qer_editorimage	models/map_objects/factory/hpart
	q3map_nolightmap
    {
        map models/map_objects/factory/hpart
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/brace_new_light_b
{
	qer_editorimage	models/map_objects/factory/brace_new_light
	q3map_nolightmap
    {
        map models/map_objects/factory/brace_new_light
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/brace_new_light_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/factory/brace_new_b
{
	qer_editorimage	models/map_objects/factory/brace_new
	q3map_nolightmap
    {
        map models/map_objects/factory/brace_new
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/ceiling_light_new_b
{
	qer_editorimage	models/map_objects/factory/ceiling_light_new
	q3map_nolightmap
    {
        map models/map_objects/factory/ceiling_light_new
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/ceiling_light_new_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/factory/pilar2_b
{
	qer_editorimage	textures/factory/basemetal2
	q3map_nolightmap
    {
        map textures/factory/basemetal2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
        tcMod scale 2 2
    }
    {
        map models/map_objects/factory/pilar2
        blendFunc GL_ONE GL_ONE_MINUS_SRC_COLOR
        rgbGen identity
    }
    {
        map textures/factory/basemetal2
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        detail
        tcMod scale 4 4
    }
}

models/map_objects/factory/pilar_b
{
	qer_editorimage	textures/factory/basic5
	q3map_nolightmap
    {
        map textures/factory/basic5
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
        tcMod scale 4 4
    }
    {
        map models/map_objects/factory/pilar
        blendFunc GL_ONE GL_ONE_MINUS_SRC_COLOR
        rgbGen identity
    }
    {
        map textures/factory/basemetal2
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        tcMod scale 10 10
    }
}

models/map_objects/factory/s_light_b
{
	qer_editorimage	models/map_objects/factory/s_light
	q3map_flare	textures/flares/flare_lt_blue
	q3map_nolightmap
    {
        map models/map_objects/factory/s_light
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/s_light_bulbs_b
{
	qer_editorimage	models/map_objects/factory/s_light_bulbs
	q3map_nolightmap
    {
        map models/map_objects/factory/s_light_bulbs
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/s_light_bulbs_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/factory/f_con1_screen
{
    {
        map $lightmap
    }
    {
        map models/map_objects/factory/f_con1_screen
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/factory/f_con1_screen_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/factory/f_con1_screen_glowr
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.35 0 0.6
    }
}

models/map_objects/factory/f_con2_screenunlocked
{
    {
        map $lightmap
    }
    {
        map models/map_objects/factory/f_con2_screenunlocked
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/factory/f_con2_screen_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map models/map_objects/factory/f_con2_screeng
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/factory/f_con2_screenlocked
{
    {
        map $lightmap
    }
    {
        map models/map_objects/factory/f_con2_screen
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/factory/f_con2_screen_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map models/map_objects/factory/f_con2_screenr
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.35 0 0.6
    }
}

models/map_objects/factory/fgen_beam
{
    {
        map gfx/effects/stunpass
        tcMod scroll 0.5 0.8
        tcMod scale 1 0.2
    }
    {
        map models/map_objects/factory/fgen_beam
        blendFunc GL_ONE GL_SRC_ALPHA
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/fgen_beam_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/factory/fgen_center
{
    {
        map models/map_objects/factory/fgen_center
        rgbGen lightingDiffuse
    }
    {
        map gfx/effects/stunpass
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 0.3 0 3
        tcMod scale 1 3
        tcMod scroll 0.3 1
    }
    {
        map gfx/effects/blueline
        blendFunc GL_ONE GL_ONE
        rgbGen wave noise 0 0.5 0 6
    }
    {
        map models/map_objects/factory/fgen_center
        blendFunc GL_ONE GL_SRC_ALPHA
        rgbGen identity
    }
    {
        map models/map_objects/factory/fgen_center_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/factory/fgen_bottom
{
    {
        map models/map_objects/factory/fgen_bottom
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/fgen_bottom
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/factory/fgen_top
{
    {
        map models/map_objects/factory/fgen_top
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/fgen_top
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/factory/glass_b
{
	qer_editorimage	models/map_objects/factory/glass
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/factory/glass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/glass_reflect
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        alphaGen const 0.05
        tcGen environment
        tcMod scale 1.5 1.5
    }
}

models/map_objects/factory/bomb_new
{
	q3map_nolightmap
    {
        map models/map_objects/factory/bomb_new
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/bomb_new_lights
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 1
    }
}

models/map_objects/factory/bomb_new_glow
{
	q3map_nolightmap
    {
        map models/map_objects/factory/bomb_new_glow
        tcMod scroll 0.3 0
    }
    {
        map textures/factory/ggoo3
        blendFunc GL_ONE_MINUS_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll 0.1 0
    }
    {
        map models/map_objects/factory/bomb_new_frame
        blendFunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/factory/view_panel_screen_fact
{
	q3map_nolightmap
    {
        map models/map_objects/factory/view_panel_screen_fact
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/view_panel_screen_fact_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
    {
        map models/map_objects/factory/view_panel_screen_fact_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 1 0 1
    }
    {
        map models/map_objects/factory/view_panel_screen_fact_glow3
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0.5 0
    }
}

models/map_objects/factory/emod_broken
{
	qer_editorimage	models/map_objects/factory/bomb_new
	q3map_nolightmap
    {
        map models/map_objects/factory/emod_broken
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/emod_broken_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/factory/emod_broken_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.5 0 0.3
    }
}

models/map_objects/factory/emod_broken2
{
	qer_editorimage	models/map_objects/factory/bomb_new
	q3map_nolightmap
    {
        map models/map_objects/factory/emod_broken2
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/factory/emod_broken2_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.4 0 0.3
    }
    {
        map models/map_objects/factory/emod_broken2_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/cairn/container
{
	q3map_nolightmap
    {
        map models/map_objects/cairn/container
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/cairn/container_glow1
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/h_evil/wal_mech2
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/wal_mech2
        rgbGen lightingDiffuse
    }
}

models/map_objects/h_evil/wal_mech2_bulbs
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/wal_mech2_bulbs
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/h_evil/wal_mech2_bulbs_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.6 0 5
    }
    {
        map models/map_objects/h_evil/wal_mech2_bulbs_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.5 0.5 5
    }
}

models/map_objects/h_evil/alcove_lights
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/alcove_lights
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/h_evil/alcove_lights
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/h_evil/crawl_frame_lights
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/crawl_frame_lights
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/h_evil/crawl_frame_lights_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/h_evil/ring
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/ring
        rgbGen vertex
    }
    {
        map models/map_objects/h_evil/ring_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/h_evil/ring_e
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/ring_e
        rgbGen vertex
    }
    {
        map models/map_objects/h_evil/ring_e_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.9 0 0.5
    }
}

models/map_objects/h_evil/ring_window_old
{
	q3map_nolightmap
    {
        map textures/colors/black
    }
    {
        map models/map_objects/h_evil/pulse
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 1 0
    }
    {
        map models/map_objects/h_evil/pulse2
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        animMap 10 models/map_objects/h_evil/ring_window_glow1 models/map_objects/h_evil/ring_window_glow2 models/map_objects/h_evil/ring_window_glow3 models/map_objects/h_evil/ring_window_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 1
        tcMod scroll 1 0
    }
    {
        animMap 10 models/map_objects/h_evil/ring_window_glow5 models/map_objects/h_evil/ring_window_glow6 models/map_objects/h_evil/ring_window_glow7 models/map_objects/h_evil/ring_window_glow8 
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 10 2
        tcMod scroll 2 0
    }
}

models/map_objects/h_evil/beam
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/beam
        rgbGen vertex
    }
    {
        map models/map_objects/h_evil/beam_glow
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen identity
    }
}

models/map_objects/h_evil/ring_window_1_old
{
	qer_editorimage	textures/colors/black
	q3map_nolightmap
    {
        map models/map_objects/h_evil/p1a
        tcMod scroll 0 0.4
    }
    {
        map models/map_objects/h_evil/rg1
        blendFunc GL_DST_COLOR GL_SRC_ALPHA
        tcMod scroll 4 0
    }
}

models/map_objects/h_evil/ring_window
{
	qer_editorimage	textures/colors/black
	q3map_nolightmap
    {
        map textures/colors/black
    }
    {
        map models/map_objects/h_evil/pulse
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0.25 0
    }
    {
        map models/map_objects/h_evil/pulse2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.9 0 0.5
    }
    {
        animMap 10 models/map_objects/h_evil/ring_window_glow1 models/map_objects/h_evil/ring_window_glow2 models/map_objects/h_evil/ring_window_glow3 models/map_objects/h_evil/ring_window_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 1
        tcMod scroll 0.25 0
    }
    {
        animMap 10 models/map_objects/h_evil/ring_window_glow5 models/map_objects/h_evil/ring_window_glow6 models/map_objects/h_evil/ring_window_glow7 models/map_objects/h_evil/ring_window_glow8 
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 10 2
        tcMod scroll 0.012 0
    }
    {
        map models/map_objects/h_evil/rg1
        blendFunc GL_DST_COLOR GL_SRC_ALPHA
        detail
        tcMod scroll 0.25 0
    }
}

models/map_objects/h_evil/bridge
{
    {
        map $lightmap
    }
    {
        map models/map_objects/h_evil/bridge
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/h_evil/bridge_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/h_evil/alcove_mech
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/blue_effect
        blendFunc GL_ONE GL_SRC_COLOR
        depthWrite
        rgbGen identity
        tcMod scroll 0.2 2
    }
    {
        map models/map_objects/h_evil/alcove_mech
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/h_evil/wal_mech
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/blue_effect
        blendFunc GL_ONE GL_SRC_COLOR
        depthWrite
        rgbGen identity
        tcMod scroll 0.1 0.3
    }
    {
        map models/map_objects/h_evil/wal_mech
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/h_evil/control_station_panel2
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/control_station_panel2
        rgbGen lightingDiffuse
    }
    {
        animMap 6 models/map_objects/h_evil/control_station_panel2_glow1 models/map_objects/h_evil/control_station_panel2_glow1 models/map_objects/h_evil/control_station_panel2_glow2 models/map_objects/h_evil/control_station_panel2_glow2 models/map_objects/h_evil/control_station_panel2_glow3 models/map_objects/h_evil/control_station_panel2_glow3 models/map_objects/h_evil/control_station_panel2_glow4 models/map_objects/h_evil/control_station_panel2_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/h_evil/control_station_panel3
{
    {
        map models/map_objects/h_evil/control_station_panel3
        rgbGen lightingDiffuse
    }
    {
        animMap 2 models/map_objects/vjun/control_station_panel3_glow1 models/map_objects/vjun/control_station_panel3_glow1 models/map_objects/vjun/control_station_panel3_glow2 models/map_objects/vjun/control_station_panel3_glow2 models/map_objects/vjun/control_station_panel3_glow3 models/map_objects/vjun/control_station_panel3_glow3 models/map_objects/vjun/control_station_panel3_glow4 models/map_objects/vjun/control_station_panel3_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/h_evil/control_station_panel5
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/control_station_panel5
        rgbGen lightingDiffuse
    }
    {
        animMap 2 models/map_objects/vjun/control_station_panel5_glow1 models/map_objects/vjun/control_station_panel5_glow1 models/map_objects/vjun/control_station_panel5_glow2 models/map_objects/vjun/control_station_panel5_glow2 models/map_objects/vjun/control_station_panel5_glow3 models/map_objects/vjun/control_station_panel5_glow3 models/map_objects/vjun/control_station_panel5_glow4 models/map_objects/vjun/control_station_panel5_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/h_evil/control_station_panel4
{
	q3map_nolightmap
    {
        map models/map_objects/h_evil/control_station_panel4
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/h_evil/control_station_panel4_glow
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/h_evil/cutbody
{
	qer_editorimage	models/map_objects/h_evil/beam
	q3map_nolightmap
    {
        map models/map_objects/h_evil/cutbody
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/h_evil/cutbodyglow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/map_objects/h_evil/cutstrut
{
	qer_editorimage	models/map_objects/h_evil/beam
	q3map_nolightmap
    {
        map models/map_objects/h_evil/cutstrut
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/h_evil/cutstrutglow
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen identity
    }
}

models/map_objects/hoth/generator_shell
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/generator_shell
        rgbGen vertex
        tcMod scale 10 10
    }
    {
        map models/map_objects/hoth/generator_shell_lmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

models/map_objects/hoth/generator_body
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/generator_body
        rgbGen vertex
        tcMod scale 20 20
    }
    {
        map models/map_objects/hoth/generator_body_lmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

models/map_objects/hoth/hothhall_clip
{
// q3map_clipmodel

	qer_editorimage	models/map_objects/hoth/hothhall
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/hoth/hothhall
        rgbGen lightingDiffuse
    }
}

models/map_objects/hoth/hall_3ds
{
// q3map_clipmodel

	qer_editorimage	models/map_objects/hoth/hothhall
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/hoth/hothhall
        rgbGen lightingDiffuse
    }
}

models/map_objects/hoth/hall
{
// q3map_clipmodel

	qer_editorimage	models/map_objects/hoth/hothhall
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/hoth/hothhall
        rgbGen lightingDiffuse
    }
}

models/map_objects/hoth/bacta_tank_shell
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/bacta_tank_shell
        rgbGen lightingDiffuse
    }
}

models/map_objects/hoth/bacta_tank_light
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/bacta_tank_light
        rgbGen vertex
    }
    {
        map models/map_objects/hoth/bacta_tank_light_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/hoth/bacta_tank_liquid
{
	surfaceparm	nomarks
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/hoth/bacta_tank_liquid
        blendFunc GL_ONE GL_SRC_ALPHA
        tcMod stretch sin 1 0.2 0 0.03
        tcMod scroll 0 0.05
    }
    {
        map models/map_objects/hoth/bac_small
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll 0 0.45
    }
    {
        map models/map_objects/hoth/bac_medium
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod turb 1 0.05 0 0.08
        tcMod scroll 0 0.2
    }
    {
        map models/map_objects/hoth/bac_large
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod turb 1 0.05 0 0.1
        tcMod scroll 0 0.1
    }
}

models/map_objects/hoth/bacta_tank_glass
{
    {
        map models/map_objects/hoth/bacta_tank_glass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
    {
        map textures/common/env_chrome
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        alphaGen const 0.5
        tcGen environment
    }
}

models/map_objects/hoth/light_wall_bulb
{
    {
        map $lightmap
    }
    {
        map models/map_objects/hoth/light_wall_bulb
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/hoth/light_wall_bulb_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/hoth/light_floor_bulbs
{
	qer_editorimage	models/map_objects/hoth/light_floor_bulbs
    {
        map $lightmap
    }
    {
        map models/map_objects/hoth/light_floor_bulbs
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/hoth/light_floor_bulbs_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/hoth/ioncannon
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/ioncan
        rgbGen vertex
    }
}

models/map_objects/hoth/generator_grate_b
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/generator_grate
        rgbGen lightingDiffuse
        tcMod scale 10 10
    }
}

models/map_objects/hoth/control_panel_broken_glass
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/hoth/control_panel_broken_glass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

models/map_objects/hoth/ion_nut
{
    {
        map models/map_objects/hoth/ion_nut
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/ion_nut
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map gfx/effects/stunpass_rotated
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen wave sin 0.6 0.5 0 2
        tcMod scale 0.25 1
        tcMod scroll 0.25 0.5
    }
    {
        map gfx/effects/stunpass_rotated2
        blendFunc GL_ONE GL_ONE
        detail
        tcMod scale 1.5 6
        tcMod scroll 0.1 1
    }
}

models/map_objects/hoth/ion_bigfin
{
    {
        map models/map_objects/hoth/ion_bigfin
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/ion_bigfin_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/hoth/ion_bigfin_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/hoth/console_desktop_on
{
    {
        map $lightmap
    }
    {
        map models/map_objects/hoth/console_desktop
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/hoth/console_desktop_on
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/hoth/console_monitor_on
{
    {
        map $lightmap
    }
    {
        map models/map_objects/hoth/console_monitor_on
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/hoth/console_monitor_on
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.5 5 11
    }
}

models/map_objects/hoth/light_wallbeam
{
    {
        map models/map_objects/hoth/light_wallbeam
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/light_wallbeam_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/hoth/heater_coil
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/heater_coil
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/heater_coil_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sawtooth 0 0.5 0 30
    }
    {
        map models/map_objects/hoth/heater_coil_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 0.5 0.5 30
    }
}

models/map_objects/hoth/light_wallbeam_lens
{
	q3map_nolightmap
    {
        map models/map_objects/hoth/light_wallbeam_lens
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/hoth/light_wallbeam_lens_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 0.3 0 40
    }
    {
        map models/map_objects/hoth/light_wallbeam_lens_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 0.3 0.5 40
    }
}

models/map_objects/hoth/hothhall
{
// q3map_clipmodel

	qer_editorimage	models/map_objects/hoth/hothhall
	surfaceparm	nodlight
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/hoth/hothhall
        rgbGen lightingDiffuse
    }
}

models/map_objects/hoth/bed_lamp_glass
{
    {
        map $lightmap
    }
    {
        map models/map_objects/hoth/bed_lamp_glass
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/hoth/bed_lamp_glass_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/weapons2/detpack/lights
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/weapons2/detpack/lights
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/detpack/lightsglow
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 2
    }
}

models/weapons2/detpack/nolights
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/weapons2/detpack/lights
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/items/medpac
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/medpac
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/medpacglow
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 1 0 0.75
    }
}

models/items/power_converter_panelon
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/power_converter_panelon
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/power_converter_panel1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0.5 1
    }
    {
        map models/items/power_converter_panel2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 1 0.5
    }
}

models/items/shieldpackon
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/shieldpackon
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/shieldpackglow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.5 0 2
    }
}

models/items/battery
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/battery
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/battery_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.4 0.4 0 0.5
    }
}

models/items/bacta
{
	q3map_nolightmap
	q3map_onlyvertexlighting
	sort	seeThrough
    {
        map textures/kejim/coolant
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.25 0 0.25
        tcMod scroll 0.15 0
    }
    {
        map models/items/bacta
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/items/power_converter_panel
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/power_converter_panel
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/power_converter_panel1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 1 0.5 1
    }
    {
        map models/items/power_converter_panel2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 1 -1 0.5
    }
}

models/items/a_shield
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/a_shield
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/a_shield_glow
        blendFunc GL_ONE GL_ONE
    }
    {
        animMap 2 models/items/a_shield_glow2 gfx/colors/black 
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 2 0.5 1.5
    }
}

models/items/a_pwr_converter
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/items/a_pwr_converter
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/a_pwr_converter_glow
        blendFunc GL_ONE GL_ONE
    }
    {
        animMap 2 models/items/a_pwr_converter_glow2 gfx/colors/black 
        blendFunc GL_ONE GL_ONE
        rgbGen wave sawtooth 0.25 2 0 2
    }
}

models/items/psgun
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/imp_mine/psgunlight
        blendFunc GL_ONE GL_ZERO
        tcMod scroll 0 1
    }
    {
        map models/map_objects/imp_mine/psgunlight
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 2
        tcMod scroll 0 1
    }
    {
        map models/items/psgun
        alphaFunc GE128
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/items/forcegem
{
	q3map_nolightmap
    {
        map models/items/forcegem
        blendFunc GL_ONE GL_ZERO
    }
    {
        map models/items/forcegem
        blendFunc GL_SRC_ALPHA GL_ONE
        alphaGen lightingSpecular
    }
    {
        map models/items/forcegem
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.4 0.28 0.5 0.45
        tcMod rotate 16
    }
}

models/items/antenna
{

	q3map_nolightmap
    {
        map models/items/antenna
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/items/antenna_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1.4 1 0.7 2
    }
}

models/map_objects/korriban/korportal
{
	q3map_nolightmap
    {
        map textures/korriban/os_rockb
        rgbGen vertex
        tcMod scale 8 8
    }
    {
        map models/map_objects/korriban/korportal
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
    }
}

models/map_objects/korriban/kportill
{
	qer_editorimage	textures/korriban/os_rockb
	q3map_nolightmap
    {
        map textures/korriban/os_rockb
        rgbGen vertex
        tcMod scale 8 8
    }
    {
        map models/map_objects/korriban/kportill
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
    }
}

models/map_objects/mp/flag_base
{
    {
        map $lightmap
    }
    {
        map models/map_objects/mp/flag_base
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/mp/flag_base_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/mp/emitter_dish
{
    {
        map models/map_objects/mp/emitter_dish
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/emitter_dish_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/mp/emitter
{
    {
        map models/map_objects/mp/emitter
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/mp/emitter_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}


models/map_objects/roof_top/podpanels
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/podpanels
    }
    {
        map models/map_objects/roof_top/podpanelsglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.32 0 0.5
    }
    {
        map models/map_objects/roof_top/podpanelsglow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/roof_top/podbod
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/podbod
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/roof_top/podbod_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/roof_top/podbod_glw2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/roof_top/podcar
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/podcar
        rgbGen vertex
    }
    {
        map models/map_objects/roof_top/podcar_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/roof_top/podcar_glw2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/roof_top/podcar2
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/podcar2
    }
    {
        map models/map_objects/roof_top/podcar2_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/roof_top/podcar2_glw2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/roof_top/crate4
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/crate4
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/roof_top/crate4_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/roof_top/mech2
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/mech2
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/roof_top/mech2_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/roof_top/skiffaces
{
	q3map_nolightmap
    {
        map gfx/colors/black
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/roof_top/bryar_blob
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.35 0 0.6
        tcMod scroll 0.5 0
        tcMod scale 6 1
    }
    {
        map models/map_objects/roof_top/bryar_blob
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.25 0 0.7
        tcMod scroll -0.25 0
        tcMod scale 6 1
    }
    {
        map models/map_objects/roof_top/skiffaces
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/map_objects/roof_top/skiff
{
	q3map_nolightmap
    {
        map models/map_objects/roof_top/skiff
        rgbGen vertex
    }
    {
        map models/map_objects/roof_top/skiff_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/roof_top/skiff_glw2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.35 0 0.6
    }
}

models/map_objects/roof_top/mech1
{
	qer_editorimage	models/map_objects/roof_top/mech2
	q3map_nolightmap
    {
        map models/map_objects/roof_top/mech1
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/roof_top/mech1_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/roof_top/storage_rack_grate
{
	qer_editorimage	models/map_objects/roof_top/crate4
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/roof_top/storage_rack_grate
        rgbGen lightingDiffuse
    }
}

models/map_objects/rail/view_panel_screen
{
	q3map_nolightmap
    {
        map models/map_objects/rail/view_panel_screen
    }
    {
        map models/map_objects/rail/view_panel_glow1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 1
    }
    {
        map models/map_objects/rail/view_panel_glow2
        blendFunc GL_ONE GL_ONE
        glow
        detail
    }
    {
        map models/map_objects/rail/view_panel_glow3
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen wave noise 0 1 0 1
    }
}

models/map_objects/rail/view_panel_effect
{
    {
        map models/map_objects/rail/view_panel_effect_glow1
        tcMod scroll 2 0
    }
    {
        map models/map_objects/rail/view_panel_effect_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave random 0 1 0 0.75
        tcMod scroll 0 1
    }
}

models/map_objects/rail/view_panel_frame
{
	q3map_nolightmap
    {
        map models/map_objects/rail/view_panel_frame
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/rail/view_panel_glow6
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 1 0 1
    }
    {
        map models/map_objects/rail/view_panel_glow8
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/map_objects/rail/view_panel_glow9
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave inversesawtooth 0 1 0 1
    }
    {
        map models/map_objects/rail/view_panel_glow5
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/map_objects/rift/crystal_lamp_alpha
{
	surfaceparm	trans
    {
        map models/map_objects/rift/crystal_lamp
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
        alphaGen const 0
    }
    {
        map textures/rift/env_crystal
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
        tcGen environment
    }
}

models/map_objects/rift/crystal_wall
{
    {
        map $lightmap
    }
    {
        map models/map_objects/rift/crystal_wall
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/rift/crystal_wall_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/rift/crystal_floor
{
    {
        map $lightmap
    }
    {
        map models/map_objects/rift/crystal_floor
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/rift/crystal_floor_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/rift/crystal_pilar
{
	q3map_nolightmap
    {
        map textures/cfoster/etest4
        tcGen environment
    }
    {
        map models/map_objects/rift/crystal_pilar
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/rocky_ruins/light_rancor_cage
{
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/rocky_ruins/light_rancor_cage
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

models/map_objects/rocky_ruins/light_rancor_bulb
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/rocky_ruins/light_rancor_bulb
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/rocky_ruins/light_rancor
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/rocky_ruins/light_rancor
        rgbGen lightingDiffuse
    }
}

models/map_objects/rocky_ruins/monitor_buttons
{
    {
        map $lightmap
    }
    {
        map models/map_objects/rocky_ruins/monitor_buttons
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/rocky_ruins/monitor_buttons_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/rocky_ruins/monitor_screen_03
{
    {
        map models/map_objects/rocky_ruins/monitor_screen_03
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/rocky_ruins/monitor_screen_03_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map models/map_objects/rocky_ruins/monitor_screen_03_wipe
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0 -0.125
    }
}

models/map_objects/rocky_ruins/monitor_screen_02
{
    {
        map models/map_objects/rocky_ruins/monitor_screen_02
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/rocky_ruins/monitor_screen_02_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/rocky_ruins/monitor_screen_01
{
    {
        map models/map_objects/rocky_ruins/monitor_screen_01
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/rocky_ruins/monitor_screen_01_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/rocky_ruins/floorlight
{
    {
        map models/map_objects/rocky_ruins/floorlight
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/rocky_ruins/floorlight_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/rocky_ruins/bone_pile_flesh
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/rocky_ruins/bone_pile_flesh
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/rocky_ruins/switch
{
    {
        map $lightmap
    }
    {
        map models/map_objects/rocky_ruins/switch
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 models/map_objects/rocky_ruins/switch_r models/map_objects/rocky_ruins/switch_g 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/ships/cart
{
	q3map_nolightmap
    {
        map models/map_objects/ships/cart
        rgbGen lightingDiffuse
    }
}

models/map_objects/imp_mine/xwings
{
	q3map_nolightmap
    {
        map models/map_objects/imp_mine/xwings
        rgbGen vertex
    }
}

models/map_objects/imp_mine/xwglass_shd
{
	q3map_nolightmap
    {
        map models/map_objects/imp_mine/xwglass_shd
        rgbGen vertex
    }
}

models/map_objects/imp_mine/xwbody
{
	q3map_nolightmap
    {
        map models/map_objects/imp_mine/xwbody
        rgbGen vertex
    }
}

models/map_objects/taspir/lamp_bulb
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/lamp_bulb
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/taspir/lamp_bulb_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/taspir/control_station
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/control_station
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/control_station_screen
{
    {
        map textures/colors/black
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/taspir/control_station_screen2_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 -0.5 1 0.24
        tcMod stretch sin 2.5 0.5 0 0.32
        tcMod rotate 20
    }
    {
        map models/map_objects/taspir/control_station_screen2_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.5 1 0.24
        tcMod rotate -10
    }
    {
        map models/map_objects/taspir/control_station_screen
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen const ( 0.000000 0.000000 0.000000 )
    }
}

models/map_objects/taspir/siding2_2_2
{
	q3map_material	HollowMetal
	q3map_nolightmap
    {
        map textures/taspir/siding2
        rgbGen vertex
        tcMod scale 2 2
    }
}

models/map_objects/taspir/newdoor1_b_1_1
{
	q3map_nolightmap
    {
        map textures/taspir/newdoor1_b
        rgbGen vertex
    }
}

models/map_objects/taspir/floor_joist_cap
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/floor_joist_cap
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/lava_tube_claw
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/lava_tube_claw
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/lava_tube_3_1
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/lava_tube
        rgbGen lightingDiffuse
        tcMod scale 3 1
    }
}

models/map_objects/taspir/lava_tube_tile2_4_25
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/lava_tube_tile02
        rgbGen lightingDiffuse
        tcMod scale 8 1
    }
}

models/map_objects/taspir/lava_tube_tile1_1_1
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/lava_tube_tile01
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/lava_tube_tile1_4_25
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/lava_tube_tile01
        rgbGen lightingDiffuse
        tcMod scale 6 1
    }
}

models/map_objects/taspir/pipe_small_5_5
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/pipe_small_5_5
        rgbGen lightingDiffuse
        tcMod scale 5 5
    }
}

models/map_objects/taspir/steam_jet_parts
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/steam_jet_parts
        rgbGen lightingDiffuse
    }
    {
        animMap 10 models/map_objects/taspir/jet_frame1 models/map_objects/taspir/jet_frame1 models/map_objects/taspir/jet_frame2 models/map_objects/taspir/jet_frame2 models/map_objects/taspir/jet_frame3 models/map_objects/taspir/jet_frame3 models/map_objects/taspir/jet_frame4 models/map_objects/taspir/jet_frame4 models/map_objects/taspir/jet_frame5 models/map_objects/taspir/jet_frame5 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/taspir/siding2_1_1
{
	q3map_material	HollowMetal
	q3map_nolightmap
    {
        map textures/taspir/siding2
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/wallnew2_1_1
{
	q3map_material	HollowMetal
	q3map_nolightmap
    {
        map textures/taspir/wallnew2
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/seam_30_1
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/taspir/seam_30_1
        rgbGen lightingDiffuse
        tcMod scale 60 1
    }
}

models/map_objects/taspir/tank_top_top_7_7
{
	q3map_material	HollowMetal
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/taspir/tank_top_top
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/tank_top_5_154
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/tank_top
        rgbGen lightingDiffuse
        tcMod scale 7 1
    }
}

models/map_objects/taspir/tank_top_top_1_1
{
	q3map_material	HollowMetal
	q3map_nolightmap
	cull	twosided
    {
        clampmap models/map_objects/taspir/tank_top_top
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/basefloor_1_1
{
	q3map_material	HollowMetal
	q3map_nolightmap
    {
        map textures/taspir/basefloor
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/control_station_screen2
{
	qer_editorimage	textures/colors/black
	q3map_nolightmap
    {
        map models/map_objects/taspir/control_station_screen2_glow
        blendFunc GL_ONE GL_SRC_COLOR
        rgbGen wave sin 1 -0.5 1 0.24
        tcMod stretch sin 2.5 0.5 0 0.32
        tcMod rotate 20
    }
    {
        map models/map_objects/taspir/control_station_screen2_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.5 1 0.24
        tcMod rotate -10
    }
    {
        map models/map_objects/taspir/control_station_screen2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/map_objects/taspir/lamp2_bulb
{
	qer_editorimage	textures/taspir/lamp2_bulb
	q3map_nolightmap
    {
        map models/map_objects/taspir/lamp2_bulb
        blendFunc GL_ONE GL_ZERO
    }
}

models/map_objects/taspir/lava_ring
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/lava_ring
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/taspir/lava_ring_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/taspir/strut
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/strut
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/taspir/strut_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/taspir/strut_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0 1 0 5
    }
}

models/map_objects/taspir/steam_jets
{
	q3map_nolightmap
    {
        map models/map_objects/taspir/steam_jets
        rgbGen lightingDiffuse
    }
    {
        animMap 4 models/map_objects/taspir/jetside_frame1 models/map_objects/taspir/jetside_frame1 models/map_objects/taspir/jetside_frame2 models/map_objects/taspir/jetside_frame2 models/map_objects/taspir/jetside_frame3 models/map_objects/taspir/jetside_frame3 models/map_objects/taspir/jetside_frame4 models/map_objects/taspir/jetside_frame4 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/taspir/steam_jet_lightmap
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/taspir/airpure
{
    {
        map models/map_objects/taspir/airpure
        rgbGen lightingDiffuse
    }
    {
        animMap 4 models/map_objects/taspir/airpure_frame4 models/map_objects/taspir/airpure_frame4 models/map_objects/taspir/airpure_frame3 models/map_objects/taspir/airpure_frame3 models/map_objects/taspir/airpure_frame2 models/map_objects/taspir/airpure_frame2 models/map_objects/taspir/airpure_frame1 models/map_objects/taspir/airpure_frame1 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/taspir/tank_top_top
{
	qer_editorimage	models/map_objects/taspir/tank_top_top
	q3map_material	HollowMetal
	q3map_nolightmap
	cull	twosided
    {
        clampmap models/map_objects/taspir/tank_top_top
        rgbGen lightingDiffuse
    }
}

models/map_objects/vjun/egg_console
{
    {
        map $lightmap
    }
    {
        map models/map_objects/vjun/egg_console
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/vjun/egg_console_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/vjun/lamp
{
    {
        map $lightmap
    }
    {
        map models/map_objects/vjun/lamp
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/vjun/lamp_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/vjun/vj4_b
{
	qer_editorimage	models/map_objects/vjun/vj4
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/vjun/vj4
        rgbGen lightingDiffuse
        tcMod scale 4 4
    }
}

models/map_objects/vjun/door_frame
{
	q3map_nolightmap
    {
        map models/map_objects/vjun/door_frame
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/vjun/door_frame_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/vjun/prong
{
    {
        map $lightmap
    }
    {
        map models/map_objects/vjun/prong
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/vjun/prong_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/vjun/globe_grid
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/vjun/globe_grid
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/vjun/globe_continents
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map models/map_objects/vjun/globe_blink1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 10 1.5
    }
    {
        map models/map_objects/vjun/globe_blink2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 2 0.5
    }
}

models/map_objects/vjun/electric_pipe_shdr
{
    {
        map models/map_objects/vjun/electric_pipe_shdr
        blendFunc GL_ONE GL_ZERO
        tcMod scroll 0 2
    }
    {
        map models/map_objects/vjun/pipe_effect2
        blendFunc GL_ONE GL_ONE
        rgbGen wave triangle 0 1 0 1
        tcMod scroll 0 1.5
    }
    {
        map models/map_objects/vjun/pipe_effect3
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 1 0 9
        tcMod scroll 0 2
        tcMod scale 0.5 1
    }
}

models/map_objects/vjun/window_frame
{
    {
        map models/map_objects/vjun/window_frame
        rgbGen lightingDiffuse
    }
}

models/map_objects/vjun/control_station_panel3
{
    {
        map models/map_objects/vjun/control_station_panel3
        rgbGen lightingDiffuse
    }
    {
        animMap 4 models/map_objects/vjun/control_station_panel3_glow1 models/map_objects/vjun/control_station_panel3_glow2 models/map_objects/vjun/control_station_panel3_glow3 models/map_objects/vjun/control_station_panel3_glow4 models/map_objects/vjun/control_station_panel3_glow2 models/map_objects/vjun/control_station_panel3_glow4 models/map_objects/vjun/control_station_panel3_glow3 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/vjun/control_station_panel4
{
    {
        map models/map_objects/vjun/control_station_panel4
        rgbGen lightingDiffuse
    }
    {
        animMap 2 models/map_objects/vjun/control_station_panel4_glow1 models/map_objects/vjun/control_station_panel4_glow2 models/map_objects/vjun/control_station_panel4_glow3 models/map_objects/vjun/control_station_panel4_glow4 models/map_objects/vjun/control_station_panel4_glow3 models/map_objects/vjun/control_station_panel4_glow4 models/map_objects/vjun/control_station_panel4_glow2 models/map_objects/vjun/control_station_panel4_glow3 models/map_objects/vjun/control_station_panel4_glow1 models/map_objects/vjun/control_station_panel4_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/vjun/control_station_panel2
{
	q3map_nolightmap
    {
        map models/map_objects/vjun/control_station_panel2
        rgbGen lightingDiffuse
    }
    {
        animMap 2 models/map_objects/vjun/control_station_panel2_glow1 models/map_objects/vjun/control_station_panel2_glow1 models/map_objects/vjun/control_station_panel2_glow2 models/map_objects/vjun/control_station_panel2_glow2 models/map_objects/vjun/control_station_panel2_glow3 models/map_objects/vjun/control_station_panel2_glow3 models/map_objects/vjun/control_station_panel2_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/vjun/rubble_glow
{
    {
        map models/map_objects/vjun/rubble_glow
        blendFunc GL_ONE GL_ONE
    }
}

models/map_objects/vjun/control_station_panel5
{
	q3map_nolightmap
    {
        map models/map_objects/vjun/control_station_panel5
        rgbGen lightingDiffuse
    }
    {
        animMap 1 models/map_objects/vjun/control_station_panel5_glow1 models/map_objects/vjun/control_station_panel5_glow1 models/map_objects/vjun/control_station_panel5_glow2 models/map_objects/vjun/control_station_panel5_glow2 models/map_objects/vjun/control_station_panel5_glow3 models/map_objects/vjun/control_station_panel5_glow3 models/map_objects/vjun/control_station_panel5_glow4 models/map_objects/vjun/control_station_panel5_glow4 
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

models/map_objects/vjun/block_light
{
    {
        map $lightmap
    }
    {
        map models/map_objects/vjun/block_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/vjun/block_light_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/vjun/ceiling_light_glass
{
    {
        map $lightmap
    }
    {
        map models/map_objects/vjun/ceiling_light_glass
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/vjun/ceiling_light_glass_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/vjun/reflector
{
    {
        map models/map_objects/vjun/reflector
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/vjun/reflector_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/imperial/implight2
{
    {
        map models/map_objects/imperial/implight2
    }
    {
        map models/map_objects/imperial/implight2_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/weapons2/blaster_pistol/blaster_pistol_inworld
{
	q3map_nolightmap
    {
        map models/weapons2/blaster_pistol/blaster_pistol_inworld
        rgbGen lightingDiffuse
    }
}

models/weapons2/blaster_pistol/blaster_pistol_inview_alpha
{
	q3map_nolightmap
    {
        map models/weapons2/blaster_pistol/blaster_pistol_inview_alpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/blaster_pistol/w_suppressor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/blaster_pistol/blaster_pistol_inview
{
	q3map_nolightmap
    {
        map models/weapons2/blaster_pistol/blaster_pistol_inview
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/blaster_pistol/w_blaster_pistol_inview_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/concussion/rifle_energy
{
    {
        map models/weapons2/concussion/power32
        tcMod scroll 0 6
    }
    {
        map models/weapons2/concussion/power38
        blendFunc GL_DST_COLOR GL_SRC_ALPHA
        tcMod scroll 8 1
    }
}

models/weapons2/concussion/rifle_inview
{
	q3map_nolightmap
    {
        map models/weapons2/concussion/rifle_inview
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/concussion/concussion_rifle_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/concussion/rifle_energy_old
{
	qer_editorimage	models/weapons2/concussion/rifle_energy3
    {
        map models/weapons2/concussion/rifle_energy3
        tcMod scroll 5 0
        tcMod scale 5 1
    }
    {
        map models/weapons2/concussion/rifle_energy1
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0 4
        tcMod transform 0.5 0 0 1 0 0
        tcMod turb 0 1 0 1
    }
    {
        map models/weapons2/concussion/rifle_energy2
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0 -5
        tcMod stretch square 0.5 1 0 6
        tcMod turb 0 4 0 1
    }
}

models/weapons2/blaster_r/blaster_r
{
	q3map_nolightmap
    {
        map models/weapons2/blaster_r/blaster_r
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/blaster_r/blaster_r_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/blaster_r/scope
{
	q3map_nolightmap
    {
        map models/weapons2/blaster_r/scope
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/blaster_r/scope_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/disruptor/disruptor
{
	q3map_nolightmap
    {
        map models/weapons2/disruptor/disruptor
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/disruptor/disprutor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/disruptor/hand
{
	q3map_nolightmap
    {
        map models/weapons2/disruptor/hand
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/disruptor/hand
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/bowcaster/bowcaster
{
	q3map_nolightmap
    {
        map models/weapons2/bowcaster/bowcaster
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/bowcaster/bow_caster_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/heavy_repeater/heavy_repeater
{
	q3map_nolightmap
    {
        map models/weapons2/heavy_repeater/heavy_repeater
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/heavy_repeater/heavy_repeater_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/golan_arms/golan_arms
{
	q3map_nolightmap
    {
        map models/weapons2/golan_arms/golan_arms
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/golan_arms/golan_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/golan_arms/canister2
{
	q3map_nolightmap
    {
        map models/weapons2/golan_arms/canister2
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/golan_arms/canister2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/merr_sonn/merr_sonn_inview
{
	q3map_nolightmap
    {
        map models/weapons2/merr_sonn/merr_sonn_inview
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/merr_sonn/merr_sonn_inview_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/thermal/thermal
{
	q3map_nolightmap
    {
        map models/weapons2/thermal/thermal
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/thermal/thermal_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/thermal/hand
{
	q3map_nolightmap
    {
        map models/weapons2/thermal/hand
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/thermal/hand_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/laser_trap/laser_trap
{
	q3map_nolightmap
    {
        map models/weapons2/laser_trap/laser_trap
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/laser_trap/trip_mine_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/laser_trap/hand
{
	q3map_nolightmap
    {
        map models/weapons2/laser_trap/hand
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/laser_trap/hand_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/detpack/pack
{
	q3map_nolightmap
    {
        map models/weapons2/detpack/pack
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/detpack/detpack_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/detpack/lights
{
	q3map_nolightmap
    {
        map models/weapons2/detpack/lights
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/detpack/detpak_light_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/demp2/demp2
{
	q3map_nolightmap
    {
        map models/weapons2/demp2/demp2
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/demp2/demp2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/saber/saber
{
    {
        map models/weapons2/saber/saber
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber/saber_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/weapons2/saber/saber_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/weapons2/saber_2/saber_2
{
    {
        map models/weapons2/saber_2/saber_2
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_2/saber_2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/saber_3/saber_3
{
    {
        map models/weapons2/saber_3/saber_3
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_3/saber_3_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/saber_4/saber_4
{
    {
        map models/weapons2/saber_4/saber_4
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_4/saber_4_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/saber_5/saber_5
{
    {
        map models/weapons2/saber_5/saber_5
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_5/saber_5_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/weapons2/saber_5/saber_5_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/weapons2/saber_6/saber_6
{
    {
        map models/weapons2/saber_6/saber_6
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_6/saber_6_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/saber_7/saber_7
{
    {
        map models/weapons2/saber_7/saber_7
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_7/saber_7_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/weapons2/saber_8/saber_8
{
    {
        map models/weapons2/saber_8/saber_8
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_8/saber_8_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/weapons2/saber_8/saber_8_glow
        blendFunc GL_ONE GL_ONE
        detail
        rgbGen identity
    }
}

models/weapons2/saber_9/saber_9
{
    {
        map models/weapons2/saber_9/saber_9
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_9/saber_9_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/weapons2/saber_9/saber_9_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/weapons2/saber_1/saber_1
{
    {
        map models/weapons2/saber_1/saber_1
        rgbGen lightingDiffuse
    }
    {
        map models/weapons2/saber_1/saber_1_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
    {
        map models/weapons2/saber_1/saber_1_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
}

models/map_objects/wedge/w_light_floor_bulbs
{
    {
        map $lightmap
    }
    {
        map models/map_objects/wedge/w_light_floor_bulbs
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/wedge/w_light_floor_bulbs_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.25 0.125 0 3
    }
}

models/map_objects/wedge/clamp
{
    {
        map $lightmap
    }
    {
        map models/map_objects/wedge/clamp
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/wedge/clamp_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/wedge/w_door
{
    {
        map $lightmap
    }
    {
        map models/map_objects/wedge/w_door
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/wedge/w_door_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/wedge/turbine_effect
{
	q3map_nolightmap
	cull	twosided
    {
        map models/map_objects/wedge/turbine_effect
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 0.6 0 4
    }
    {
        map models/map_objects/wedge/turbine_effect3
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 0.6 0.33 4
    }
    {
        map models/map_objects/wedge/turbine_effect2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 0.6 0.66 4
    }
    {
        map models/map_objects/wedge/turbine_effect4
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scroll 0.5 0
    }
}

models/map_objects/wedge/blue
{
	q3map_nolightmap
    {
        map models/map_objects/wedge/blue
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/wedge/power38
        blendFunc GL_ONE GL_ONE
        tcMod scale 0.002 0.002
        tcMod scroll 0 0.2
    }
    {
        map models/map_objects/wedge/power38
        blendFunc GL_ONE GL_SRC_COLOR
        tcMod scale 0.002 0.002
        tcMod scroll 0.2 -0.2
    }
}

models/map_objects/wedge/minelamp_on2
{
    {
        map models/map_objects/wedge/minelamp_on2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/wedge/tank_lamp
{
	q3map_nolightmap
    {
        map models/map_objects/wedge/tank_lamp
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/wedge/tank_lamp_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/wedge/laser_cannon
{
	q3map_nolightmap
    {
        map models/map_objects/wedge/laser_cannon
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/wedge/laser_cannon_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 0.25
    }
    {
        map models/map_objects/wedge/laser_cannon_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 1
    }
}

models/map_objects/yavin/ypboxill
{
    {
        map textures/yavin/jung8
        rgbGen identity
        tcMod scale 8 8
    }
    {
        map models/map_objects/yavin/ypboxill
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/skies/cloudlayer4
        blendFunc GL_DST_COLOR GL_SRC_ALPHA
        tcMod scroll 0 0.02
    }
}

models/map_objects/yavin/ymix
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/yavin/ymix
        rgbGen vertex
    }
    {
        map textures/common/detail8
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        detail
        rgbGen const ( 0.752941 0.752941 0.752941 )
        tcMod scale 16 16
    }
}

models/map_objects/yavin/fern3b
{
	q3map_alphashadow
    {
        map models/map_objects/yavin/fern3b
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

models/map_objects/yavin/plant
{
	qer_editorimage	models/map_objects/yavin/plant
	q3map_alphashadow
	cull	twosided
    {
        map models/map_objects/yavin/plant
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
    {
        map models/map_objects/yavin/plant_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/yavin/plant_b
{
	qer_editorimage	models/map_objects/yavin/plant
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/plant
        alphaFunc GE128
        depthWrite
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/yavin/plant_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/yavin/tree02_b
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map models/map_objects/yavin/tree2
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
    {
        map models/map_objects/yavin/tree2
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/map_objects/yavin/tree05_vines_b
{
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
    {
        map models/map_objects/yavin/tree05_vines
        alphaFunc GE128
        rgbGen lightingDiffuse
    }
}

models/map_objects/yavin/locker_light
{
    {
        map $lightmap
    }
    {
        map models/map_objects/yavin/locker_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map models/map_objects/yavin/locker_light_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/map_objects/yavin/ymix_b
{
	qer_editorimage	models/map_objects/yavin/ymix
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map models/map_objects/yavin/ymix
        rgbGen lightingDiffuse
    }
    {
        map textures/common/detail8
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        detail
        rgbGen const ( 0.752941 0.752941 0.752941 )
        tcMod scale 16 16
    }
}

models/players/sentry/sentry
{
    {
        map models/players/sentry/sentry
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/players/sentry/red_light
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 1 5
    }
    {
        map textures/common/environ1
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        detail
        tcGen environment
    }
}

models/players/protocol/c3po_leg
{
    {
        map models/players/protocol/c3po_leg
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map gfx/effects/chr_inv
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        tcGen environment
    }
    {
        map models/players/protocol/c3po_leg_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/protocol/c3po_hand
{
    {
        map models/players/protocol/c3po_hand
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map gfx/effects/chr_inv
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        tcGen environment
    }
    {
        map models/players/protocol/c3po_hand_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/protocol/c3po_face
{
    {
        map models/players/protocol/c3po_face
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/players/protocol/c3po_face_glow
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map gfx/effects/chr_inv
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        detail
        tcGen environment
    }
    {
        map models/players/protocol/c3po_face_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/protocol/c3po_arm_torso
{
    {
        map models/players/protocol/c3po_arm_torso
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map gfx/effects/chr_inv
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        tcGen environment
    }
    {
        map models/players/protocol/c3po_arm_torso_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/protocol/imp_leg
{
    {
        map models/players/protocol/imp_leg
        blendFunc GL_ONE GL_ZERO
    }
    {
        map gfx/effects/chr_white_add_mild
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map models/players/protocol/imp_leg_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/protocol/imp_hand
{
    {
        map models/players/protocol/imp_hand
        blendFunc GL_ONE GL_ZERO
    }
    {
        map gfx/effects/chr_white_add_mild
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map models/players/protocol/imp_hand_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/protocol/imp_head
{
    {
        map models/players/protocol/imp_head
        blendFunc GL_ONE GL_ZERO
    }
    {
        map gfx/effects/chr_white_add_mild
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map models/players/protocol/imp_head_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/protocol/imp_arm_torso
{
    {
        map models/players/protocol/imp_arm_torso
        blendFunc GL_ONE GL_ZERO
    }
    {
        map gfx/effects/chr_white_add_mild
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map models/players/protocol/imp_arm_torso_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormpilot/helmet
{
    {
        map models/players/stormpilot/helmet
    }
    {
        map gfx/effects/chr_white_add_mild
        blendFunc GL_SRC_ALPHA GL_ONE
        tcGen environment
    }
    {
        map models/players/stormpilot/helmet_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/mark1/torso
{
    {
        map models/players/mark1/torso
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/players/mark1/torso_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/mark1/legs
{
    {
        map models/players/mark1/legs
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/players/mark1/legs_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/mark1/arms
{
    {
        map models/players/mark1/arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/players/mark1/arms_s
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/armor
{
	cull	twosided
    {
        map models/players/stormtrooper/armor
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/armor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/helmet
{
    {
        map models/players/stormtrooper/helmet
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/helmet_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/torso_legs
{
    {
        map models/players/stormtrooper/torso_legs
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/torso_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/armor_blue
{
    {
        map models/players/stormtrooper/armor_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/armor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/armor_red
{
    {
        map models/players/stormtrooper/armor_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/armor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/helmet_blue
{
    {
        map models/players/stormtrooper/helmet_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/helmet_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/helmet_red
{
    {
        map models/players/stormtrooper/helmet_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/helmet_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/torso_legs_blue
{
    {
        map models/players/stormtrooper/torso_legs_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/torso_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/stormtrooper/torso_legs_red
{
    {
        map models/players/stormtrooper/torso_legs_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/stormtrooper/torso_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_cape
{
	cull	twosided
    {
        map models/players/snowtrooper/snowtrooper_cape
        rgbGen lightingDiffuse
    }
}

models/players/snowtrooper/snowtrooper_armor_blue
{
    {
        map models/players/snowtrooper/snowtrooper_armor_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_armor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_armor_red
{
    {
        map models/players/snowtrooper/snowtrooper_armor_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_armor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_cape_blue
{
	cull	twosided
    {
        map models/players/snowtrooper/snowtrooper_cape_blue
        rgbGen lightingDiffuse
    }
}

models/players/snowtrooper/snowtrooper_cape_red
{
	cull	twosided
    {
        map models/players/snowtrooper/snowtrooper_cape_red
        rgbGen lightingDiffuse
    }
}

models/players/snowtrooper/snowtrooper_legs
{
    {
        map models/players/snowtrooper/snowtrooper_legs
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_legs_blue
{
    {
        map models/players/snowtrooper/snowtrooper_legs_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_legs_red
{
    {
        map models/players/snowtrooper/snowtrooper_legs_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_torso
{
    {
        map models/players/snowtrooper/snowtrooper_torso
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_torso_blue
{
    {
        map models/players/snowtrooper/snowtrooper_torso_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/snowtrooper/snowtrooper_armor
{
    {
        map models/players/snowtrooper/snowtrooper_armor
        rgbGen lightingDiffuse
    }
    {
        map models/players/snowtrooper/snowtrooper_armor_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/jedi_tf/torso_03_arms
{
    {
        map models/players/jedi_tf/torso_03_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_03_hands
{
    {
        map models/players/jedi_tf/torso_03_hands
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_03_clothes
{
    {
        map models/players/jedi_tf/torso_03
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_03_skin
{
    {
        map models/players/jedi_tf/torso_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/face
{
    {
        map models/players/jedi_tf/face
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/face
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/head
{
    {
        map models/players/jedi_tf/head
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/tentacles
{
    {
        map models/players/jedi_tf/tentacles
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/tentacles_01
{
    {
        map models/players/jedi_tf/tentacles_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/tentacles_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/face_01
{
    {
        map models/players/jedi_tf/face_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/face_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/head_01
{
    {
        map models/players/jedi_tf/head_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/head_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/face_02
{
    {
        map models/players/jedi_tf/face_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/face_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/head_02
{
    {
        map models/players/jedi_tf/head_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/tentacles_02
{
    {
        map models/players/jedi_tf/tentacles_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/tentacles_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/face_03
{
    {
        map models/players/jedi_tf/face_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/face_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/head_03
{
    {
        map models/players/jedi_tf/head_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/head_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/tentacles_03
{
    {
        map models/players/jedi_tf/tentacles_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/tentacles_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_01_arms
{
    {
        map models/players/jedi_tf/torso_01_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_01_hands
{
    {
        map models/players/jedi_tf/torso_01_hands
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_01_clothes
{
    {
        map models/players/jedi_tf/torso_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_01_skin
{
    {
        map models/players/jedi_tf/torso_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_01_lower
{
	cull	twosided
    {
        map models/players/jedi_tf/torso_01_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_02_arms
{
    {
        map models/players/jedi_tf/torso_02_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_02_hands
{
    {
        map models/players/jedi_tf/torso_02_hands
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_02_clothes
{
    {
        map models/players/jedi_tf/torso_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_02_skin
{
    {
        map models/players/jedi_tf/torso_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/torso_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_06_arms
{
    {
        map models/players/jedi_tf/torso_06_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_06_clothes
{
    {
        map models/players/jedi_tf/torso_06
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_06_skin
{
    {
        map models/players/jedi_tf/torso_06
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/hips_02_clothes
{
    {
        map models/players/jedi_tf/hips_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/hips_02_skin
{
    {
        map models/players/jedi_tf/hips_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
}

models/players/jedi_tf/torso_02_lower
{
	cull	twosided
    {
        map models/players/jedi_tf/torso_02_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/icon_torso_f1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_torso_f1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_torso_f1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_a1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_a2
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_a2
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_a2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_a3
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_a3
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_a3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_a4
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_a4
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_a4
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_b1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_b2
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_b2
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_b2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_b3
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_b3
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_b3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_head_b4
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_head_b4
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_head_b4
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_lower_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_lower_b1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_lower_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_torso_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_torso_a1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_torso_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_torso_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_torso_b1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_torso_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_torso_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_torso_c1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_torso_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/torso_04
{
    {
        map models/players/jedi_tf/torso_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/torso_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/torso_05
{
    {
        map models/players/jedi_tf/torso_05
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/torso_05
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/hips_01
{
    {
        map models/players/jedi_tf/hips_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_tf/hips_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_tf/icon_torso_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_torso_d1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_torso_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_torso_e1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_torso_e1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_torso_e1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_lower_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_tf/icon_lower_a1
        rgbGen identity
    }
    {
        map models/players/jedi_tf/icon_lower_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_tf/icon_lower_c1
{
	nopicmip
	nomipmaps
	q3map_nolightmap
    {
        map models/players/jedi_tf/icon_lower_c1
        rgbGen identity
    }
}

models/players/jedi_tf/icon_lower_d1
{
	nopicmip
	nomipmaps
	q3map_nolightmap
    {
        map models/players/jedi_tf/icon_lower_d1
    }
}

models/players/rancor/rancor_head
{
    {
        map models/players/rancor/rancor_head
        rgbGen lightingDiffuse
    }
    {
        map models/players/rancor/rancor_head_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rancor/rancor_body
{
    {
        map models/players/rancor/rancor_body
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
    {
        map models/players/rancor/rancor_body_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rancor/rancor_teeth
{
    {
        map models/players/rancor/rancor_head
        rgbGen lightingDiffuse
    }
    {
        map models/players/rancor/rancor_head_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/chewbacca/chewbacca_2sided
{
	cull	twosided
    {
        map models/players/chewbacca/chewbacca_2sided
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/chewbacca/chewbacca_1sided
{
	cull	twosided
    {
        map models/players/chewbacca/chewbacca_1sided
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/rodian/fins
{
	cull	twosided
    {
        map models/players/rodian/fins
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/rodian/tint_torso
{
    {
        map models/players/rodian/tint_torso
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/rodian/tint_torso
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/rodian/tint_l_leg
{
    {
        map models/players/rodian/tint_l_leg
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/rodian/tint_l_leg
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/rodian/tint_boots_belt_vest
{
    {
        map models/players/rodian/tint_boots_belt_vest
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/rodian/tint_boots_belt_vest
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/rodian/tint_l_boot
{
    {
        map models/players/rodian/tint_l_boot
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/rodian/tint_l_boot
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/head03_alpha
{
	cull	twosided
    {
        map models/players/jedi_rm/head03_alpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/head02_alpha
{
	cull	twosided
    {
        map models/players/jedi_rm/head02_alpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/head01_alpha
{
	cull	twosided
    {
        map models/players/jedi_rm/head01_alpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_06_lower
{
	cull	twosided
    {
        map models/players/jedi_rm/torso_06_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_06_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/arms_01
{
    {
        map models/players/jedi_rm/arms_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/arms_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/arms_03_clothes
{
    {
        map models/players/jedi_rm/arms_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/arms_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_01
{
    {
        map models/players/jedi_rm/torso_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_03
{
    {
        map models/players/jedi_rm/torso_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_03_lower
{
	cull	twosided
    {
        map models/players/jedi_rm/torso_03_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_03_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_05
{
    {
        map models/players/jedi_rm/torso_05
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_05
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_06
{
    {
        map models/players/jedi_rm/torso_06
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_06
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/icon_lower_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_lower_a1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_lower_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/icon_lower_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_lower_c1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_lower_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/icon_torso_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_torso_a1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_torso_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/icon_torso_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_torso_c1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_torso_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/icon_torso_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_torso_d1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_torso_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/icon_torso_e1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_torso_e1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_torso_e1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/icon_torso_f1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_torso_f1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_torso_f1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/torso_04_lower
{
	cull	twosided
    {
        map models/players/jedi_rm/torso_04_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_04_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_04
{
    {
        map models/players/jedi_rm/torso_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/arms_04
{
    {
        map models/players/jedi_rm/arms_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/arms_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/torso_02
{
    {
        map models/players/jedi_rm/torso_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/torso_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/arms_02
{
    {
        map models/players/jedi_rm/arms_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/arms_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/icon_lower_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_lower_d1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_lower_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/pants01
{
	cull	twosided
    {
        map models/players/jedi_rm/pants01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/pants01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/pants02
{
	cull	twosided
    {
        map models/players/jedi_rm/pants02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/pants02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/pants03
{
	cull	twosided
    {
        map models/players/jedi_rm/pants03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/pants03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/pants04
{
	cull	twosided
    {
        map models/players/jedi_rm/pants04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/pants04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/icon_torso_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_torso_b1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_torso_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/arms_05_clothes
{
    {
        map models/players/jedi_rm/arms_05
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_rm/arms_05
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_rm/icon_lower_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_lower_b1
        rgbGen identity
    }
    {
        map models/players/jedi_rm/icon_lower_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_rm/icon_head_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_head_a1
        rgbGen identity
    }
}

models/players/jedi_rm/icon_head_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_head_b1
        rgbGen identity
    }
}

models/players/jedi_rm/icon_head_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_rm/icon_head_c1
        rgbGen identity
    }
}

models/players/rockettrooper/rockettrooper_torso
{
    {
        map models/players/rockettrooper/rockettrooper_torso
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_arms
{
    {
        map models/players/rockettrooper/rockettrooper_arms
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_legs
{
    {
        map models/players/rockettrooper/rockettrooper_legs
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_rocket
{
    {
        map models/players/rockettrooper/rockettrooper_rocket
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_rocket_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_torso_red
{
    {
        map models/players/rockettrooper/rockettrooper_torso_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_arms_blue
{
    {
        map models/players/rockettrooper/rockettrooper_arms_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_arms_red
{
    {
        map models/players/rockettrooper/rockettrooper_arms_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_legs_blue
{
    {
        map models/players/rockettrooper/rockettrooper_legs_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_legs_red
{
    {
        map models/players/rockettrooper/rockettrooper_legs_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_rocket_blue
{
    {
        map models/players/rockettrooper/rockettrooper_rocket_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_rocket_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_rocket_red
{
    {
        map models/players/rockettrooper/rockettrooper_rocket_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_rocket_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rockettrooper/rockettrooper_torso_blue
{
    {
        map models/players/rockettrooper/rockettrooper_torso_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/rockettrooper/rockettrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/jedi_hm/robes01
{
    {
        map models/players/jedi_hm/robes01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/robes01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/robes01_arms
{
    {
        map models/players/jedi_hm/robes01_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/robes01_lower
{
	cull	twosided
    {
        map models/players/jedi_hm/robes01_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/robes01_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/robes02
{
    {
        map models/players/jedi_hm/robes02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/robes02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/robes02_arms
{
    {
        map models/players/jedi_hm/robes02_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/robes02_arms
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/robes02_lower
{
	cull	twosided
    {
        map models/players/jedi_hm/robes02_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/robes02_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/teeth
{
	cull	twosided
    {
        map models/players/jedi_hm/teeth
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/vest01
{
    {
        map models/players/jedi_hm/vest01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/vest01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/vest01_arms
{
    {
        map models/players/jedi_hm/vest01_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/vest01_arms
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/vest01b
{
    {
        map models/players/jedi_hm/vest01b
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/vest01b
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/vest01b_arms
{
    {
        map models/players/jedi_hm/vest01b_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/vest01b_arms
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/vest03
{
    {
        map models/players/jedi_hm/vest03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/vest03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/vest03_arms_clothes
{
    {
        map models/players/jedi_hm/vest03_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/hair02_head_bang
{
	cull	twosided
    {
        map models/players/jedi_hm/hair02_head_bang
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/icon_lower_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_lower_a1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_lower_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_lower_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_lower_b1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_lower_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_torso_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_torso_a1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_torso_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_torso_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_torso_b1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_torso_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_torso_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_torso_c1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_torso_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_torso_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_torso_d1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_torso_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_torso_d2
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_torso_d2
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_torso_d2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_torso_f1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_torso_f1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_torso_f1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/robes03_arms
{
    {
        map models/players/jedi_hm/robes03_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/robes03_arms
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/robes03
{
    {
        map models/players/jedi_hm/robes03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/robes03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/pants01
{
    {
        map models/players/jedi_hm/pants01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/pants01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/pants02
{
    {
        map models/players/jedi_hm/pants02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/pants02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/pants03
{
    {
        map models/players/jedi_hm/pants03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/pants03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/pants04
{
    {
        map models/players/jedi_hm/pants04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/pants04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/icon_torso_e1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_torso_e1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_torso_e1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_lower_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_lower_c1
        rgbGen identity
    }
    {
        map models/players/jedi_hm/icon_lower_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/icon_lower_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_lower_d1
    }
    {
        map models/players/jedi_hm/icon_lower_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hm/vest02
{
    {
        map models/players/jedi_hm/vest02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/vest02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/vest02_arms
{
    {
        map models/players/jedi_hm/vest02_arms
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hm/vest02_arms
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hm/icon_head_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_head_a1
        rgbGen identity
    }
}

models/players/jedi_hm/icon_head_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_head_b1
        rgbGen identity
    }
}

models/players/jedi_hm/icon_head_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hm/icon_head_c1
        rgbGen identity
    }
}

models/players/jedi_hf/teeth
{
	cull	twosided
    {
        map models/players/jedi_hf/teeth
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_01
{
    {
        map models/players/jedi_hf/torso_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/torso_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_01_lower
{
	cull	twosided
    {
        map models/players/jedi_hf/torso_01_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_02
{
    {
        map models/players/jedi_hf/torso_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/torso_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_02_lower
{
	cull	twosided
    {
        map models/players/jedi_hf/torso_02_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_03_clothes
{
    {
        map models/players/jedi_hf/torso_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/torso_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_04
{
    {
        map models/players/jedi_hf/torso_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/torso_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/arms_01
{
    {
        map models/players/jedi_hf/arms_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/arms_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

models/players/jedi_hf/arms_04
{
    {
        map models/players/jedi_hf/arms_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/arms_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/hair_03_alpha
{
	cull	twosided
    {
        map models/players/jedi_hf/hair_03_alpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/hair_02_alpha
{
	cull	twosided
    {
        map models/players/jedi_hf/hair_02_alpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/icon_torso_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_torso_a1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_torso_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_torso_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_torso_b1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_torso_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_torso_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_torso_c1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_torso_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_torso_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_torso_d1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_torso_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_lower_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_lower_a1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_lower_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_lower_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_lower_b1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_lower_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/torso_05
{
    {
        map models/players/jedi_hf/torso_05
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/torso_05
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_06
{
    {
        map models/players/jedi_hf/torso_06
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/torso_06
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/torso_06_lower
{
	cull	twosided
    {
        map models/players/jedi_hf/torso_06_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/torso_06_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/arms_05
{
    {
        map models/players/jedi_hf/arms_05
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/arms_05
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/pants_01
{
    {
        map models/players/jedi_hf/pants_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/pants_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/pants_02
{
    {
        map models/players/jedi_hf/pants_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/pants_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/pants_03
{
    {
        map models/players/jedi_hf/pants_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/pants_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/pants_04
{
    {
        map models/players/jedi_hf/pants_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_hf/pants_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_hf/icon_torso_e1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_torso_e1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_torso_e1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_torso_f1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_torso_f1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_torso_f1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_lower_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_lower_c1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_lower_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_lower_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_lower_d1
        rgbGen identity
    }
    {
        map models/players/jedi_hf/icon_lower_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_hf/icon_head_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_head_a1
        rgbGen identity
    }
}

models/players/jedi_hf/icon_head_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_head_b1
        rgbGen identity
    }
}

models/players/jedi_hf/icon_head_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_hf/icon_head_c1
        rgbGen identity
    }
}

models/players/jedi_zf/torso_03_clothes
{
    {
        map models/players/jedi_zf/torso_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_03_lower
{
	cull	twosided
    {
        map models/players/jedi_zf/torso_03_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_03_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_04_clothes
{
    {
        map models/players/jedi_zf/torso_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_05_clothes
{
    {
        map models/players/jedi_zf/torso_05
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_05
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_05_lower
{
	cull	twosided
    {
        map models/players/jedi_zf/torso_05_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_06_clothes
{
    {
        map models/players/jedi_zf/torso_06
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_06
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_06_lower
{
	cull	twosided
    {
        map models/players/jedi_zf/torso_06_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_06_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/arms_06_clothes
{
    {
        map models/players/jedi_zf/arms_06
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/arms_06
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/hands_04_wrist_armor
{
    {
        map models/players/jedi_zf/hands_04_wrist_armor
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/hands_04_wrist_armor
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/icon_torso_e1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_torso_e1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_torso_e1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_torso_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_torso_c1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_torso_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_torso_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_torso_d1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_torso_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_torso_f1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_torso_f1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_torso_f1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_lower_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_lower_b1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_lower_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_lower_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_lower_a1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_lower_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/torso_01
{
    {
        map models/players/jedi_zf/torso_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_01_lower
{
	cull	twosided
    {
        map models/players/jedi_zf/torso_01_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_01_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_02_lower
{
	cull	twosided
    {
        map models/players/jedi_zf/torso_02_lower
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_02_lower
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/torso_02
{
    {
        map models/players/jedi_zf/torso_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/torso_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/hips_02
{
    {
        map models/players/jedi_zf/hips_02
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/hips_02
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/hips_01
{
    {
        map models/players/jedi_zf/hips_01
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/hips_01
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/hips_03
{
    {
        map models/players/jedi_zf/hips_03
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/hips_03
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/hips_04
{
    {
        map models/players/jedi_zf/hips_04
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_zf/hips_04
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/jedi_zf/icon_torso_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_torso_a1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_torso_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_torso_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_torso_b1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_torso_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_lower_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_lower_c1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_lower_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_lower_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_lower_d1
        rgbGen identity
    }
    {
        map models/players/jedi_zf/icon_lower_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_zf/icon_head_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_head_a1
        rgbGen identity
    }
}

models/players/jedi_zf/icon_head_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_head_b1
        rgbGen identity
    }
}

models/players/jedi_zf/icon_head_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_zf/icon_head_c1
        rgbGen identity
    }
}

models/players/saboteur/saboteur_face_plate
{
    {
        map textures/colors/black
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
        alphaGen const 0.72
    }
    {
        map textures/common/env_chrome
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        alphaGen const 0.13
        tcGen environment
    }
}

models/players/tauntaun/tauntaun_teeth_strap
{
	cull	twosided
    {
        map models/players/tauntaun/tauntaun_teeth_strap
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/torso_5
{
    {
        map models/players/jedi_kdm/torso_5
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/torso_5
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/torso_2
{
    {
        map models/players/jedi_kdm/torso_2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/torso_2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/torso_3
{
    {
        map models/players/jedi_kdm/torso_3
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/torso_3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/torso_4
{
    {
        map models/players/jedi_kdm/torso_4
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/torso_4
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/icon_lower_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_lower_a1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_lower_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/icon_lower_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_lower_c1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_lower_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/icon_torso_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_torso_a1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_torso_a1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/icon_torso_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_torso_b1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_torso_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/icon_torso_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_torso_c1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_torso_c1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/icon_torso_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_torso_d1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_torso_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/icon_torso_e1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_torso_e1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_torso_e1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/torso_1
{
    {
        map models/players/jedi_kdm/torso_1
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/torso_1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/arms_1
{
    {
        map models/players/jedi_kdm/arms_1
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/arms_1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/robe_1
{
	cull	twosided
    {
        map models/players/jedi_kdm/robe_1
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/robe_1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/arms_2
{
    {
        map models/players/jedi_kdm/arms_2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/arms_2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/arms_3
{
    {
        map models/players/jedi_kdm/arms_3
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/arms_3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/robe_3
{
	cull	twosided
    {
        map models/players/jedi_kdm/robe_3
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/robe_3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/arms_4
{
    {
        map models/players/jedi_kdm/arms_4
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/arms_4
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identityLighting
    }
}

models/players/jedi_kdm/torso_6
{
    {
        map models/players/jedi_kdm/torso_6
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/torso_6
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/arms_6
{
    {
        map models/players/jedi_kdm/arms_6
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/arms_6
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/icon_torso_f1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_torso_f1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_torso_f1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/robe_5
{
	cull	twosided
    {
        map models/players/jedi_kdm/robe_5
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/robe_5
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/icon_lower_d1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_lower_d1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_lower_d1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/pants_1
{
    {
        map models/players/jedi_kdm/pants_1
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/pants_1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/pants_4
{
    {
        map models/players/jedi_kdm/pants_4
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/pants_4
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/pants_2
{
    {
        map models/players/jedi_kdm/pants_2
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/pants_2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/pants_3
{
    {
        map models/players/jedi_kdm/pants_3
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/jedi_kdm/pants_3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/jedi_kdm/icon_lower_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_lower_b1
        rgbGen identity
    }
    {
        map models/players/jedi_kdm/icon_lower_b1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

models/players/jedi_kdm/icon_head_a1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_head_a1
        rgbGen identity
    }
}

models/players/jedi_kdm/icon_head_b1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_head_b1
        rgbGen identity
    }
}

models/players/jedi_kdm/icon_head_c1
{
	nopicmip
	nomipmaps
    {
        map models/players/jedi_kdm/icon_head_c1
        rgbGen identity
    }
}

models/players/jawa/jawa_eyes
{
    {
        map models/players/jawa/jawa_eyes
        rgbGen lightingDiffuse
    }
    {
        map models/players/jawa/jawa_eyes
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

models/players/x-wing/xwings
{
    {
        map models/players/x-wing/xwings
        rgbGen lightingDiffuse
    }
    {
        map models/players/x-wing/xwings_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/x-wing/xwglass_shd
{
    {
        map textures/colors/black
        rgbGen lightingDiffuse
    }
    {
        map textures/common/env_chrome
        blendFunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
        alphaGen const 0.9
        tcGen environment
    }
    {
        map models/players/x-wing/xwglass_shd_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        alphaGen lightingSpecular
    }
    {
        map models/players/x-wing/xwglass_shd
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/x-wing/xwbody
{
    {
        map models/players/x-wing/xwbody
        rgbGen lightingDiffuse
    }
    {
        map models/players/x-wing/xwbody_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/marka_ragnos/marka_robe
{
    {
        map models/players/marka_ragnos/marka_robe
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/marka_ragnos/marka_robe_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/marka_ragnos/marka_arms
{
    {
        map models/players/marka_ragnos/marka_arms
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/marka_ragnos/marka_arms_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/marka_ragnos/marka_head
{
    {
        map models/players/marka_ragnos/marka_head
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/marka_ragnos/marka_head_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/marka_ragnos/marka_torso
{
    {
        map models/players/marka_ragnos/marka_torso
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/marka_ragnos/marka_torso_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/tavion_new/torso_blue_glow
{
    {
        map models/players/tavion_new/torso_blue
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/tavion_new/torso_blue_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/tavion_new/head_glow
{
    {
        map models/players/tavion_new/head
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/tavion_new/head_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/tavion_new/feathers_glow
{
    {
        map models/players/tavion_new/feathers
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/tavion_new/feathers_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/tavion_new/face_glow
{
    {
        map models/players/tavion_new/face
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/tavion_new/face_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/tavion_new/arm_blue_glow
{
    {
        map models/players/tavion_new/arm_blue
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/tavion_new/arm_blue_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/tavion_new/hands_glow
{
    {
        map models/players/tavion_new/hands
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/tavion_new/hands_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/tavion_new/legs_blue_glow
{
    {
        map models/players/tavion_new/legs_blue
        blendFunc GL_ONE GL_ZERO
        glow
        rgbGen lightingDiffuse
    }
    {
        map models/players/tavion_new/legs_blue_glow2
        blendFunc GL_ONE GL_ONE
        glow
    }
}

models/players/lambdashuttle/shuttle_wing02
{
    {
        map models/players/lambdashuttle/shuttle_wing02
        rgbGen lightingDiffuse
    }
    {
        map models/players/lambdashuttle/wing_left_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/lambdashuttle/shuttle_nose
{
    {
        map models/players/lambdashuttle/shuttle_nose
        rgbGen lightingDiffuse
    }
    {
        map models/players/lambdashuttle/shuttle_nose_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/lambdashuttle/shuttle_wing01
{
    {
        map models/players/lambdashuttle/shuttle_wing01
        rgbGen lightingDiffuse
    }
    {
        map models/players/lambdashuttle/wing_center_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/lambdashuttle/shuttle_body
{
    {
        map models/players/lambdashuttle/shuttle_body
        rgbGen lightingDiffuse
    }
    {
        map models/players/lambdashuttle/shuttle_body_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
    {
        map models/players/lambdashuttle/shutttle_body_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_larmalpha
{
    {
        map models/players/boba_fett/boba_larmalpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/boba_fett/boba_alpha
{
    {
        map models/players/boba_fett/boba_alpha
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

models/players/boba_fett/boba_body
{
    {
        map models/players/boba_fett/boba_body
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_body_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_hands
{
    {
        map models/players/boba_fett/boba_hands
        rgbGen lightingDiffuse
    }
}

models/players/boba_fett/boba_head_revised
{
    {
        map models/players/boba_fett/boba_head_revised
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_head_revised_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_jetpack
{
    {
        map models/players/boba_fett/boba_jetpack
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_jetpack_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_head
{
    {
        map models/players/boba_fett/boba_head_revised
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_head_revised_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_body_red
{
    {
        map models/players/boba_fett/boba_body_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_body_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_body_blue
{
    {
        map models/players/boba_fett/boba_body_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_body_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_head_revised_red
{
    {
        map models/players/boba_fett/boba_head_revised_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_head_revised_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_head_revised_blue
{
    {
        map models/players/boba_fett/boba_head_revised_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_head_revised_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_jetpak_red
{
    {
        map models/players/boba_fett/boba_jetpack_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_jetpack_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/boba_fett/boba_jetpak_blue
{
    {
        map models/players/boba_fett/boba_jetpack_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/boba_fett/boba_jetpack_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_torso_red
{
    {
        map models/players/hazardtrooper/hazardtrooper_torso_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_arms_blue
{
    {
        map models/players/hazardtrooper/hazardtrooper_arms_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_arms_red
{
    {
        map models/players/hazardtrooper/hazardtrooper_arms_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_legs
{
    {
        map models/players/hazardtrooper/hazardtrooper_legs
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_legs_blue
{
    {
        map models/players/hazardtrooper/hazardtrooper_legs_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_legs_red
{
    {
        map models/players/hazardtrooper/hazardtrooper_legs_red
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_torso
{
    {
        map models/players/hazardtrooper/hazardtrooper_torso
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_torso_blue
{
    {
        map models/players/hazardtrooper/hazardtrooper_torso_blue
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_torso_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/hazardtrooper/hazardtrooper_arms
{
    {
        map models/players/hazardtrooper/hazardtrooper_arms
        rgbGen lightingDiffuse
    }
    {
        map models/players/hazardtrooper/hazardtrooper_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/howler/howler
{
    {
        map models/players/howler/howler
        rgbGen lightingDiffuse
    }
    {
        map models/players/howler/howler_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/saber_droid/saber_droid_legs
{
    {
        map models/players/saber_droid/saber_droid_legs
        rgbGen lightingDiffuse
    }
    {
        map models/players/saber_droid/saber_droid_legs_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/saber_droid/saber_droid_head
{
    {
        map models/players/saber_droid/saber_droid_head
        rgbGen lightingDiffuse
    }
    {
        map models/players/saber_droid/saber_droid_head_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/saber_droid/saber_droid_arms
{
    {
        map models/players/saber_droid/saber_droid_arms
        rgbGen lightingDiffuse
    }
    {
        map models/players/saber_droid/saber_droid_arms_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/r2d2/legs_r2d2
{
    {
        map models/players/r2d2/legs_r2d2
        rgbGen lightingDiffuse
    }
    {
        map models/players/r2d2/legs_r2d2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/r2d2/imp_body_r2d2
{
    {
        map models/players/r2d2/imp_body_r2d2
        rgbGen lightingDiffuse
    }
    {
        map models/players/r2d2/imp_body_r2d2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/r2d2/imp_legs_r2d2
{
    {
        map models/players/r2d2/imp_legs_r2d2
        rgbGen lightingDiffuse
    }
    {
        map models/players/r2d2/imp_legs_r2d2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/r2d2/body_r2d2
{
    {
        map models/players/r2d2/body_r2d2
        rgbGen lightingDiffuse
    }
    {
        map models/players/r2d2/body_r2d2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/remote/remote
{
    {
        map models/players/remote/remote
        rgbGen lightingDiffuse
    }
    {
        map models/players/remote/remote_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/mutant_rancor/pistons2
{
    {
        map models/players/mutant_rancor/pistons2
        rgbGen lightingDiffuse
    }
    {
        map models/players/mutant_rancor/pistons2_glow
        blendFunc GL_ONE GL_ONE
        glow
        detail
        rgbGen identity
    }
    {
        map models/players/mutant_rancor/pistons2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/mutant_rancor/head2
{
    {
        map models/players/mutant_rancor/head2
        rgbGen lightingDiffuse
    }
    {
        map models/players/mutant_rancor/head2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/mutant_rancor/body2
{
    {
        map models/players/mutant_rancor/body2
        rgbGen lightingDiffuse
    }
    {
        map models/players/mutant_rancor/body2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/r5d2/legs_r5d2
{
    {
        map models/players/r5d2/legs_r5d2
        rgbGen lightingDiffuse
    }
    {
        map models/players/r5d2/legs_r5d2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/r5d2/body_r5d2
{
    {
        map models/players/r5d2/body_r5d2
        rgbGen lightingDiffuse
    }
    {
        map models/players/r5d2/body_r5d2_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/weequay/tint_torso
{
    {
        map models/players/weequay/tint_torso
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/weequay/tint_torso
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/trandoshan/tint_trandoshan_torso
{
    {
        map models/players/trandoshan/tint_trandoshan_torso
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/trandoshan/tint_trandoshan_torso
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/trandoshan/tint_trandoshan_legs
{
    {
        map models/players/trandoshan/tint_trandoshan_legs
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/trandoshan/tint_trandoshan_legs
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/gran/tint_torso
{
    {
        map models/players/gran/tint_torso
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/gran/tint_torso
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/gran/tint_gran_legs
{
    {
        map models/players/gran/tint_gran_legs
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/gran/tint_gran_legs
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/gran/tint_r_arm
{
    {
        map models/players/gran/tint_r_arm
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/gran/tint_r_arm
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/gran/tint_l_arm
{
    {
        map models/players/gran/tint_l_arm
        rgbGen lightingDiffuseEntity
    }
    {
        map models/players/gran/tint_l_arm
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        detail
        rgbGen lightingDiffuse
    }
}

models/players/sand_creature/worm
{
    {
        map models/players/sand_creature/worm
        rgbGen lightingDiffuse
    }
    {
        map models/players/sand_creature/worm_spec
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

models/players/rebel_pilot/googles
{
    {
        map models/players/rebel_pilot/googles
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen lightingDiffuse
    }
}

models/players/reborn_new/head_hat
{
	qer_editorimage	models/players/reborn_new/head
	q3map_nolightmap
	cull	twosided
    {
        map models/players/reborn_new/head_hat
        rgbGen lightingDiffuse
    }
}

models/map_objects/imp_mine/turret_chair_dmg
{
    {
        map models/map_objects/imp_mine/turret_chair_dmg
        blendFunc GL_ONE GL_ZERO
        rgbGen lightingDiffuse
    }
}