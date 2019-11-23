  ///////////////////////////////////
  //                               // 
  //   **** Clean Shaders ****     //
  //         Nov. 6th, 2003        //
  //          By Astrocreep        //
  //          -------------        //
  //    For Level Editing info:    //
  //       www.map-center.com      //
  //          -------------        //
  //    For GtkRadiant Updates:    //
  //       www.qeradiant.com       //
  //                               //
  ///////////////////////////////////

textures/doomgiver/grating
{
	qer_editorimage	textures/imp_mine/grating
    {
        map textures/imp_mine/grating
        alphaFunc GE128
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        alphaFunc GE128
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

textures/doomgiver/forcefield
{
	qer_editorimage	textures/doomgiver/energything.tga
	surfaceparm	nomarks
	surfaceparm	nonsolid
	surfaceparm	playerclip
	surfaceparm	shotclip
	surfaceparm	forcefield
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/doomgiver/energything2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.65 0.35 0 0.2
        tcMod scroll -1 2
    }
    {
        map textures/doomgiver/energything2
        blendFunc GL_ONE GL_ONE
        tcMod scroll 2 1
    }
}

textures/doomgiver/oz_test
{
	qer_editorimage	textures/doomgiver/energything.tga
	surfaceparm	nomarks
	surfaceparm	forcefield
	q3map_nolightmap
    {
        animMap 1 textures/doomgiver/1 textures/doomgiver/2 textures/doomgiver/3 textures/doomgiver/4 textures/doomgiver/5 textures/doomgiver/6 textures/doomgiver/7 textures/doomgiver/8 
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.1 0.2 0.4
        tcMod scroll 10 15
    }
    {
        map gfx/effects/mp_b_forcefield_d
        blendFunc GL_DST_COLOR GL_ONE
        rgbGen wave sin 0.7 0.3 1 1
        tcMod scroll -20 -50
    }
}

textures/doomgiver/comp_panel
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comp_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/doomgiver/comp_panel1 textures/doomgiver/comp_panel1 
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen const ( 1.000000 0.000000 0.000000 )
    }
}

textures/doomgiver/cfield
{
	qer_editorimage	textures/cairn/lightning3
	surfaceparm	nomarks
	surfaceparm	forcefield
	q3map_nolightmap
    {
        map textures/cairn/lightning3
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.5 0 1
        tcMod stretch sin 0 0.1 0 1
        tcMod scroll 0 5
        tcMod scale 0.1 0.1
    }
    {
        map textures/cairn/lightning3
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.5 0.3 1
        tcMod stretch sin 0 0.1 0.7 1
        tcMod scroll 0 -5
        tcMod scale 0.3 0.3
    }
    {
        map textures/cairn/lightning3
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.5 0.7 1
        tcMod scroll 5 0
        tcMod stretch sin 0 1 0 1
        tcMod scale 0.3 0.3
    }
}

textures/doomgiver/conduit_field
{
	qer_editorimage	textures/cairn/lightning3
	surfaceparm	nomarks
	surfaceparm	forcefield
	q3map_nolightmap
    {
        map textures/doomgiver/enrgy1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.1 0.1 0 5
        tcMod scroll 0 -3
        tcMod scale 4 1
    }
    {
        map textures/doomgiver/enrgy1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.1 0.1 0.3 4
        tcMod scroll 0 0.5
        tcMod scale 2 1
    }
    {
        map textures/cairn/lightning3
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.1 0.5 0.7 5
        tcMod scroll 5 0
        tcMod stretch sin 0 0.5 0 5
        tcMod scale 2 2
    }
    {
        map textures/doomgiver/enrgy1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.25 0.1 0 10
        tcMod scroll 0 3
        tcMod scale 4 1
    }
    {
        map textures/doomgiver/enrgy1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.1 0.1 -0.3 4
        tcMod scroll 0 -0.5
        tcMod scale 2 1
    }
}

textures/doomgiver/oz_test2
{
	qer_editorimage	textures/doomgiver/energything.tga
	surfaceparm	nomarks
	surfaceparm	forcefield
	q3map_nolightmap
    {
        animMap 1 gfx/test/one gfx/test/two gfx/test/three gfx/test/four gfx/test/five gfx/test/six gfx/test/seven gfx/test/eight 
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.1 0.2 0.4
        tcMod scroll 10 15
    }
    {
        map gfx/effects/mp_b_forcefield_d
        blendFunc GL_DST_COLOR GL_ONE
        rgbGen wave sin 0.7 0.3 1 1
        tcMod scroll -20 -50
    }
}

textures/doomgiver/comp_panel_new_2
{
	qer_editorimage	textures/doomgiver/comp_panel_new_2
    {
        map textures/doomgiver/doom_display1
        blendFunc GL_ONE GL_ZERO
        tcMod scale 3 1
    }
    {
        map textures/doomgiver/doom_display1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.75 0.15 0 8
        tcMod scale 3 1
    }
    {
        map textures/tests/energything2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.25 0 8
        tcMod scroll 0 0.1
        tcMod scale 10 10
    }
    {
        map textures/doomgiver/comp_panel_new_2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

textures/doomgiver/comm_room
{
	qer_editorimage	textures/doomgiver/comm_room
    {
        map textures/doomgiver/energything
        blendFunc GL_ONE GL_ZERO
        rgbGen wave sin 1 0.5 0 5
        tcMod scroll 5 0.25
        tcMod scale 5 5
    }
    {
        map textures/doomgiver/comm_room
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map textures/doomgiver/comm_roomglow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.05 0 8
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

textures/doomgiver/deathcon1a
{
	qer_editorimage	textures/doomgiver/deathcon1a
    {
        map textures/doomgiver/screen03
        blendFunc GL_ONE GL_ZERO
        tcMod scale 5.5 5.5
    }
    {
        map textures/doomgiver/screen03
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.25 0 6
        tcMod scale 5.5 5.5
    }
    {
        map textures/tests/energything2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.15 0 8
        tcMod scroll 0 0.05
        tcMod scale 10 10
    }
    {
        map textures/doomgiver/deathcon1a
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

textures/doomgiver/doortrim01d
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/doortrim01d
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/doortrim01dglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.15 0 8
    }
}

textures/doomgiver/mapd
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/doomgiver/mapd
        blendFunc GL_ONE GL_ONE
    }
}

textures/doomgiver/mapd2
{
	qer_editorimage	textures/doomgiver/mapd2
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/doomgiver/mapd2
        blendFunc GL_ONE GL_ONE
    }
}

textures/doomgiver/mapd1
{
	qer_editorimage	textures/doomgiver/mapd1
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/doomgiver/mapd1
        blendFunc GL_ONE GL_ONE
    }
}

textures/doomgiver/doorhangar2
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/doorhangar2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/doorhangar2glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 0 1 0 1
    }
}

textures/doomgiver/fuel1
{
	qer_editorimage	textures/doomgiver/comp_panel7
    {
        map $lightmap
    }
    {
        map textures/doomgiver/fuel1
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen wave sin 1 0.1 0.1 1
        tcMod scroll 0 0.5
        tcMod turb 1 -0.05 -1 0.25
    }
}

textures/doomgiver/deathconlight
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/deathconlight
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/deathconlight
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.75 0.005 0 10
    }
}

textures/doomgiver/bigpipe1d
{
	qer_editorimage	textures/doomgiver/bpipe2d
    {
        map $lightmap
    }
    {
        map textures/doomgiver/bpipe2d
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/energything
        blendFunc GL_ONE GL_ONE
        rgbGen wave noise 0.25 0.25 0 5
        tcMod scroll 5 4
        tcMod scale 100 2
    }
    {
        map textures/doomgiver/energything2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.1 0.25 -0.5 10
        tcMod scroll -3 -4
        tcMod scale 100 1
    }
}

textures/doomgiver/flare_blue
{
// deformvertexes	autoSprite

	surfaceparm	nonsolid
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/doomgiver/flare_blue
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen wave noise 1 0.2 0 25
        alphaGen entity
    }
}

textures/doomgiver/light_whited
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/light_whited
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/light_whited_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.75 0.05 0 5
    }
}

textures/doomgiver/door_red
{
	qer_editorimage	textures/doomgiver/door1d
    {
        map $lightmap
    }
    {
        map textures/doomgiver/door1d
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/door1d_red
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.05 0 5
    }
}

textures/doomgiver/door1_locked
{
	qer_editorimage	textures/doomgiver/door1
    {
        map $lightmap
    }
    {
        map textures/doomgiver/door1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/door1_red
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.05 0 5
    }
}

textures/doomgiver/door_opener
{
	qer_editorimage	textures/doomgiver/door1d
    {
        map $lightmap
    }
    {
        map textures/doomgiver/door1d
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/doomgiver/door1d_red textures/doomgiver/door1d_green 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 1 0.05 0 5
    }
}

textures/doomgiver/pipe2
{

    {
        map $lightmap
    }
    {
        map textures/doomgiver/pipe2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/basic2
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/doomgiver/basic2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/basic
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/doomgiver/basic
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/floord
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/doomgiver/floord
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/metalsec1d
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/doomgiver/metalsec1d
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/new5d
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/doomgiver/new5d
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/new3d
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/doomgiver/new3d
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/new2d
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/doomgiver/new2d
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/lightnewd
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/lightnewd
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/lightnewdglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.75 0.025 0 10
    }
}

textures/doomgiver/deathcon2
{
	qer_editorimage	textures/doomgiver/deathcon2
    {
        map textures/doomgiver/deathcon2glow1
        blendFunc GL_ONE GL_ZERO
    }
    {
        map textures/doomgiver/energything2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.25 0.15 0 3
        tcMod scroll 5 0.1
        tcMod scale 5 5
    }
    {
        map textures/doomgiver/deathcon2
        alphaFunc GE128
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map textures/doomgiver/deathcon2glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.75 0.1 0 8
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

textures/doomgiver/deathcon1
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/deathcon1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/deathcon1glow
        blendFunc GL_ONE GL_ONE
    }
}

textures/doomgiver/d_switch
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/d_switch
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/d_switchg1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 1
    }
    {
        map textures/doomgiver/d_switchg2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 -0.5 1
    }
    {
        map textures/doomgiver/d_switchg3
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.1 0 5
    }
}

textures/doomgiver/d_switchon
{
	qer_editorimage	textures/doomgiver/d_switch
    {
        map $lightmap
    }
    {
        map textures/doomgiver/d_switch2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/doomgiver/d_switchg1
        blendFunc GL_ONE GL_ONE
    }
    {
        map textures/doomgiver/d_switchg2
        blendFunc GL_ONE GL_ONE
    }
    {
        map textures/doomgiver/d_switchg4
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 0.1 0 5
    }
}

textures/doomgiver/screen01
{
	q3map_nolightmap
    {
        animMap 4 textures/doomgiver/screen05 textures/doomgiver/screen03 textures/doomgiver/screen02 textures/doomgiver/screen07 textures/doomgiver/screen06 textures/doomgiver/screen08 textures/doomgiver/screen09 textures/doomgiver/screen01 
        blendFunc GL_ONE GL_ZERO
    }
}

textures/doomgiver/comp_panel_r
{
	qer_editorimage	textures/doomgiver/comp_panel
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comp_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/doomgiver/comp_panel1 textures/doomgiver/comp_panel2 textures/doomgiver/comp_panel3 textures/doomgiver/comp_panel4 textures/doomgiver/comp_panel5 textures/doomgiver/comp_panel6 textures/doomgiver/comp_panel7 textures/doomgiver/comp_panel8 
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 1.000000 0.000000 0.000000 )
    }
    {
        map textures/doomgiver/comp_panelcursor
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 0.5 0 2
    }
}

textures/doomgiver/comp_panel_g
{
	qer_editorimage	textures/doomgiver/comp_panel
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comp_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/doomgiver/comp_panel1 textures/doomgiver/comp_panel2 textures/doomgiver/comp_panel3 textures/doomgiver/comp_panel4 textures/doomgiver/comp_panel5 textures/doomgiver/comp_panel6 textures/doomgiver/comp_panel7 textures/doomgiver/comp_panel8 
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.000000 1.000000 0.000000 )
    }
    {
        map textures/doomgiver/comp_panelcursor
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 0.5 0 2
    }
}

textures/doomgiver/comp_panel_b
{
	qer_editorimage	textures/doomgiver/comp_panel
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comp_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/doomgiver/comp_panel1 textures/doomgiver/comp_panel2 textures/doomgiver/comp_panel3 textures/doomgiver/comp_panel4 textures/doomgiver/comp_panel5 textures/doomgiver/comp_panel6 textures/doomgiver/comp_panel7 textures/doomgiver/comp_panel8 
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.000000 0.000000 1.000000 )
    }
    {
        map textures/doomgiver/comp_panelcursor
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 0.5 0 2
    }
}

textures/doomgiver/comp_panel_ra
{
	qer_editorimage	textures/doomgiver/comp_panel
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comp_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        animMap 8 textures/doomgiver/comp_panel1 textures/doomgiver/comp_panel2 textures/doomgiver/comp_panel3 textures/doomgiver/comp_panel4 textures/doomgiver/comp_panel5 textures/doomgiver/comp_panel6 textures/doomgiver/comp_panel7 textures/doomgiver/comp_panel8 
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.500000 0.000000 0.000000 )
    }
    {
        map textures/doomgiver/comp_panelcursor1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 0.5 0 2
    }
}

textures/doomgiver/comp_panel_ga
{
	qer_editorimage	textures/doomgiver/comp_panel
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comp_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        animMap 8 textures/doomgiver/comp_panel1 textures/doomgiver/comp_panel2 textures/doomgiver/comp_panel3 textures/doomgiver/comp_panel4 textures/doomgiver/comp_panel5 textures/doomgiver/comp_panel6 textures/doomgiver/comp_panel7 textures/doomgiver/comp_panel8 
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.000000 0.500000 0.000000 )
    }
    {
        map textures/doomgiver/comp_panelcursor1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 0.5 0 2
    }
}

textures/doomgiver/comp_panel_ba
{
	qer_editorimage	textures/doomgiver/comp_panel
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comp_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        animMap 8 textures/doomgiver/comp_panel1 textures/doomgiver/comp_panel2 textures/doomgiver/comp_panel3 textures/doomgiver/comp_panel4 textures/doomgiver/comp_panel5 textures/doomgiver/comp_panel6 textures/doomgiver/comp_panel7 textures/doomgiver/comp_panel8 
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.000000 0.000000 0.500000 )
    }
    {
        map textures/doomgiver/comp_panelcursor1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 1 0.5 0 2
    }
}

textures/doomgiver/comm_panel
{
    {
        map $lightmap
    }
    {
        map textures/doomgiver/comm_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/doomgiver/comm_panel1
{
	qer_editorimage	textures/doomgiver/comm_panel
    {
        map gfx/effects/decoystatic
        blendFunc GL_ONE GL_ZERO
        tcMod scroll 1 1
        tcMod scale 25 30
    }
    {
        map textures/tests/energything2
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0 1
        tcMod scale 5 2
    }
    {
        map gfx/effects/decoystatic
        blendFunc GL_ONE GL_ONE
        rgbGen wave noise 1 0.75 0 5
        tcMod scroll -5 -3
        tcMod scale 5 10
    }
    {
        map textures/doomgiver/comm_panel
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

textures/doomgiver/comm_panel2
{
	qer_editorimage	textures/doomgiver/comm_panel
	q3map_nolightmap
    {
        map textures/tests/energything2
        blendFunc GL_ONE GL_ZERO
        tcMod scroll 2 0.25
        tcMod scale 1 5
    }
    {
        map textures/tests/energything2
        blendFunc GL_ONE GL_ONE
        tcMod scroll 4 1
        tcMod scale 5 2
    }
    {
        map textures/doomgiver/comm_panel
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
    {
        map textures/doomgiver/comm_panelglow
        blendFunc GL_ONE GL_ONE
    }
}