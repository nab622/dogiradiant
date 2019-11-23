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

textures/h_evil/frameblue_grate
{
	qer_editorimage	textures/h_evil/frameblue_grate
	q3map_lightmapsamplesize	16
	surfaceparm	nonsolid
	q3map_material	HollowMetal
	q3map_alphashadow
	cull	twosided
    {
        map textures/h_evil/frameblue_grate
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
        rgbGen identity
    }
}

textures/h_evil/roundhole_grate
{
	qer_editorimage	textures/imperial/floorgrate
	q3map_lightmapsamplesize	16
	surfaceparm	nonsolid
	q3map_alphashadow
	cull	twosided
    {
        map textures/imperial/floorgrate
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
        rgbGen identity
    }
}

textures/h_evil/phong_black
{
	q3map_shadeangle	150
	qer_editorimage	textures/imperial/outside_wall_base
	q3map_lightmapsamplesize	16
	q3map_nonplanar
	q3map_splotchfix
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/imperial/outside_wall_base
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

textures/h_evil/phong_green
{
	q3map_shadeangle	150
	qer_editorimage	textures/h_evil/evil_basic2a
	q3map_lightmapsamplesize	16
	q3map_nonplanar
	q3map_splotchfix
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/h_evil/evil_basic2a
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

textures/h_evil/elecgrid
{
	qer_editorimage	textures/h_evil/elecgrid_base
	q3map_lightmapsamplesize	16
	surfaceparm	nonsolid
	q3map_alphashadow
    {
        map textures/h_evil/elecgrid_base
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
        rgbGen identity
    }
    {
        map textures/h_evil/elecgrid_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0.5 0.5 0.5 0.2
    }
    {
        map textures/h_evil/elecgrid_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0.5 0.5 1 0.2
    }
    {
        map textures/h_evil/elecgrid_glow3
        blendFunc GL_ONE GL_ONE
        rgbGen wave sawtooth 0 1 1 0.1
    }
}

textures/h_evil/crossbeam2
{
	qer_editorimage	textures/h_evil/crossbeam2
    {
        map textures/factory/enviro
        tcGen environment
    }
    {
        map textures/h_evil/crossbeam2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/stairtread
{
	qer_editorimage	textures/h_evil/frameblue_stairtread
    {
        map $lightmap
    }
    {
        map textures/h_evil/frameblue_stairtread
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/enviro
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
    }
}

textures/h_evil/stairriser
{
	qer_editorimage	textures/h_evil/frameblue_stairriser
    {
        map $lightmap
    }
    {
        map textures/h_evil/frameblue_stairriser
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/enviro
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
    }
}

textures/h_evil/blue_grate
{
	qer_editorimage	textures/h_evil/blue_grate
	q3map_material	HollowMetal
	q3map_alphashadow
	cull	twosided
    {
        map textures/h_evil/blue_grate
        alphaFunc GE128
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}

textures/h_evil/evil_door_basic_onoff
{
    {
        map $lightmap
    }
    {
        map textures/h_evil/evil_door_basic_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/h_evil/evil_door_basic_onoffr textures/h_evil/evil_door_basic_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        alphaGen identity
    }
}

textures/h_evil/energypipe1
{
	q3map_lightimage	textures/h_evil/energypipe1_glow1
	qer_editorimage	textures/h_evil/energypipe1
	q3map_surfacelight	350
    {
        map $lightmap
    }
    {
        map textures/h_evil/energypipe1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/h_evil/energypipe1_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
    {
        map textures/h_evil/energypipe1_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.45
    }
}

textures/h_evil/energypipe2
{
	q3map_lightimage	textures/h_evil/energypipe1_glow1
	qer_editorimage	textures/h_evil/energypipe1
	q3map_surfacelight	175
    {
        map $lightmap
    }
    {
        map textures/h_evil/energypipe1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/h_evil/energypipe1_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
    {
        map textures/h_evil/energypipe1_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.45
    }
}

textures/h_evil/light4
{
    {
        map $lightmap
    }
    {
        map textures/h_evil/light4
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/h_evil/light4_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/h_evil/fan_display
{
	q3map_nolightmap
    {
        map textures/h_evil/fan_display
    }
    {
        map textures/h_evil/fan_display_blade
        blendFunc GL_ONE GL_ONE
        tcMod rotate 40
    }
    {
        map textures/h_evil/fan_display_on
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 1
    }
}

textures/h_evil/fan_display_off
{
	qer_editorimage	textures/h_evil/fan_display
	q3map_nolightmap
    {
        map textures/h_evil/fan_display
    }
    {
        map textures/h_evil/fan_display_blade
        blendFunc GL_ONE GL_ONE
    }
    {
        map textures/h_evil/fan_display_off
        blendFunc GL_ONE GL_ONE
    }
}

textures/h_evil/evil_rock13
{
	q3map_shadeangle	150
	q3map_lightsubdivide	32
	q3map_nonplanar
	q3map_splotchfix
    {
        map textures/h_evil/evil_rock12
        blendFunc GL_ONE GL_ZERO
        tcMod scale 4 4
    }
    {
        map textures/h_evil/evil_rock13
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/light1
{
    {
        map $lightmap
    }
    {
        map textures/h_evil/light1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/h_evil/light1glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/h_evil/light2
{
    {
        map $lightmap
    }
    {
        map textures/h_evil/light2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/h_evil/light2_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/h_evil/light3
{
	q3map_nolightmap
    {
        map textures/h_evil/light3
        blendFunc GL_ONE GL_ZERO
        rgbGen vertex
    }
    {
        map textures/h_evil/light3_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/h_evil/wfall
{
	qer_editorimage	textures/h_evil/waterf1
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	water
	surfaceparm	trans
	q3map_material	Water
	cull	twosided
    {
        map textures/h_evil/wf3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll 0.02 -0.27
    }
    {
        map textures/h_evil/wfn2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll -0.02 -0.2
    }
    {
        map textures/h_evil/waterf1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll 0 -0.45
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/lakewater
{
	qer_editorimage	textures/h_evil/wfn2
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	water
	surfaceparm	trans
	q3map_material	Water
	cull	twosided
    {
        map textures/h_evil/wf3
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll 0.03 -0.13
    }
    {
        map textures/h_evil/wfn2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod stretch sin 1 0.02 0 0.1
        tcMod turb 1 0.02 0 0.15
        tcMod scroll -0.03 -0.1
    }
    {
        map textures/h_evil/waterf1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod turb 1 0.03 0 0.12
        tcMod scroll 0 -0.17
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/switch
{
    {
        map $lightmap
    }
    {
        map textures/h_evil/switch
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/h_evil/switch_on
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/h_evil/switch_off
{
	qer_editorimage	textures/h_evil/switch
    {
        map $lightmap
    }
    {
        map textures/h_evil/switch
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/h_evil/switch_off
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/h_evil/basicrocknew
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/h_evil/basicrocknew
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/floor_metal
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/h_evil/floor_metal
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/frameblue_floor
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/h_evil/frameblue_floor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/frameblue_smallconduit
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/h_evil/frameblue_smallconduit
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/waterf1
{
	q3map_material	Water
    {
        map $lightmap
    }
    {
        map textures/h_evil/waterf1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/wf3
{
	q3map_material	Water
    {
        map $lightmap
    }
    {
        map textures/h_evil/wf3
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/wfn2
{
	q3map_material	Water
    {
        map $lightmap
    }
    {
        map textures/h_evil/wfn2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/h_evil/wfall_opaque
{
	qer_editorimage	textures/h_evil/waterf1
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	water
	q3map_material	Water
	cull	twosided
    {
        map textures/h_evil/wf3
        tcMod scroll 0.02 -0.5
    }
    {
        map textures/h_evil/wfn2
        tcMod scroll -0.02 -0.2
    }
    {
        map textures/h_evil/waterf1
        tcMod scroll 0 -0.45
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}