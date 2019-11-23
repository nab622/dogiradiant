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
 
textures/imperial/holotarget1
{
	q3map_nolightmap
    {
        map textures/imperial/holotarget1
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map textures/imperial/holotarget2
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod rotate 5
    }
    {
        map textures/imperial/holotarget3
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod rotate -2
    }
}

textures/imperial/dp_ground
{
	qer_editorimage	textures/imperial/grass_ground
	q3map_material	LongGrass
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imperial/grass_ground
        rgbGen vertex
        tcMod scale 0.75 0.75
    }
    {
        map textures/imperial/grass
            surfaceSprites flattened 48 24 45 400
            ssFademax 3000
            ssFadescale 2.5
            ssVariance 1 2
            ssWind 0.8
        alphaFunc GE192
        blendFunc GL_ONE GL_ZERO
        depthWrite
        rgbGen exactVertex
    }
}

textures/imperial/dp_ground_nosprites
{
// {

// map textures/imperial/grass

// surfaceSprites flattened 48 24 45 400

// ssFademax 3000

// ssFadescale 2.5

// ssVariance 1 2

// ssWind 0.8

// alphaFunc GE192

// blendFunc GL_ONE GL_ZERO

// depthWrite

// rgbGen exactVertex

// }

	qer_editorimage	textures/imperial/grass_ground
	q3map_material	LongGrass
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imperial/grass_ground
        rgbGen vertex
        tcMod scale 0.75 0.75
    }
}

textures/imperial/imp_forcefield
{
	qer_editorimage	textures/kejim/redfield1
	surfaceparm	forcefield
	surfaceparm	trans
	q3map_nolightmap
	cull	twosided
    {
        map textures/kejim/redfield1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 1 4 0 0.25
        tcMod scroll 10 10
    }
    {
        map textures/kejim/redfield2
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scale 2 2
        tcMod scroll 5 5
        tcMod stretch sin 0 1 0 1
    }
    {
        map textures/kejim/redfield2
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scale 2 2
        tcMod scroll -5 -5
        tcMod stretch sin 0.5 1 0.5 1
    }
}

textures/imperial/square
{
	q3map_material	SolidMetal
    {
        map textures/factory/enviro
        tcGen environment
    }
    {
        map textures/imperial/square
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imperial/wall_1
{
    {
        map textures/factory/enviro
        tcGen environment
    }
    {
        map textures/imperial/wall_1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imperial/wall_2
{
    {
        map textures/factory/enviro
        tcGen environment
    }
    {
        map textures/imperial/wall_2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imperial/light_tie
{
    {
        map $lightmap
    }
    {
        map textures/imperial/light_tie
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/light_tie_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/light_hanger
{
    {
        map $lightmap
    }
    {
        map textures/imperial/light_hanger
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/light_hanger_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/light_prison
{
    {
        map $lightmap
    }
    {
        map textures/imperial/light_prison
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/light_prison_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/switch_hangar_locked
{
    {
        map $lightmap
    }
    {
        map textures/imperial/switch_hangar_locked
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/switch_hangar_locked_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0.5 1
    }
    {
        map textures/imperial/switch_hangar_locked_anim
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 0 1 0 1
    }
}

textures/imperial/switch_hangar_unlocked
{
    {
        map $lightmap
    }
    {
        map textures/imperial/switch_hangar_unlocked
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/switch_hangar_unlocked_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/switch_door_locked
{
    {
        map $lightmap
    }
    {
        map textures/imperial/switch_door_locked
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/switch_door_locked_glw
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 1
    }
}

textures/imperial/switch_door_unlocked
{
    {
        map $lightmap
    }
    {
        map textures/imperial/switch_door_unlocked
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/switch_door_unlocked_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/imperial/switch_elevator_grn
{
    {
        map $lightmap
    }
    {
        map textures/imperial/switch_elevator_grn
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/switch_elevator_grn_glw
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.7
    }
}

textures/imperial/switch_elevator_red
{
    {
        map $lightmap
    }
    {
        map textures/imperial/switch_elevator_red
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/switch_elevator_red_glw
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.7
    }
}

textures/imperial/switch_elevator_sealed
{
	qer_editorimage	textures/imperial/switch_elevator_red
    {
        map $lightmap
    }
    {
        map textures/imperial/switch_elevator_red
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imperial/shiny_floor
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/imperial/shiny_floor
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/env_shiny_floor
        blendFunc GL_SRC_ALPHA GL_ONE
        alphaGen const 0.25
        tcGen environment
    }
}

textures/imperial/grate02
{
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_material	HollowMetal
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map textures/imperial/grate02
        alphaFunc GE128
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
    }
}

textures/imperial/grate02_broke
{
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_material	HollowMetal
    {
        map textures/imperial/grate02_broke
        alphaFunc LT128
        blendFunc GL_ONE GL_ZERO
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imperial/holotarget2_small
{
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/imperial/holotarget2_small
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod rotate 10
    }
    {
        map textures/imperial/holotarget2_small
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod rotate -5
    }
}

textures/imperial/mapd1
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imperial/mapd1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/mapd2
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imperial/mapd2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/door_2_onoff
{
    {
        map $lightmap
    }
    {
        map textures/imperial/door_2_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/imperial/door_2_onoffr textures/imperial/door_2_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/dpred_striplight
{
	q3map_lightimage	textures/impdetention/metalpanel1f1darkglow
	qer_editorimage	textures/impdetention/metalpanel1f1dark
	q3map_surfacelight	1700
	q3map_lightsubdivide	64
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/impdetention/metalpanel1f1dark
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/impdetention/metalpanel1f1darkglow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/dpred_stairlight
{
	q3map_lightimage	textures/impgarrison/metal1glow
	qer_editorimage	textures/impgarrison/metal1
	q3map_surfacelight	1000
	q3map_lightsubdivide	64
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/impgarrison/metal1
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/impgarrison/metal1glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.25 1 0.25
    }
}

textures/imperial/door_1new_onoff
{
    {
        map $lightmap
    }
    {
        map textures/imperial/door_1new_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/imperial/door_1_onoffr textures/imperial/door_1_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/door_1new_sealed
{
	qer_editorimage	textures/imperial/door_1new_onoff
    {
        map $lightmap
    }
    {
        map textures/imperial/door_1new_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imperial/door_2new_onoff
{
    {
        map $lightmap
    }
    {
        map textures/imperial/door_2new_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/imperial/door_2_onoffr textures/imperial/door_2_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/door_2new_sealed
{
	qer_editorimage	textures/imperial/door_2new_onoff
    {
        map $lightmap
    }
    {
        map textures/imperial/door_2new_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imperial/door_1new_locked
{
	qer_editorimage	textures/imperial/door_1new_onoff
    {
        map $lightmap
    }
    {
        map textures/imperial/door_1new_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/imperial/door_1_onoffr
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/camera_switch
{
	q3map_nolightmap
    {
        map textures/imperial/camera_switch
        rgbGen vertex
    }
    {
        map gfx/effects/decoystatic2
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scale 7 9
        tcMod scroll 5 2
    }
    {
        map gfx/effects/decoystatic2
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll -2 -2
        tcMod scale 1 4
    }
    {
        map textures/imperial/camera_switch
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map textures/imperial/camera_switch_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/imperial/door_2_onoff
{
    {
        map $lightmap
    }
    {
        map textures/imperial/door_2_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/imperial/door_2_onoffg textures/imperial/door_2_onoffr 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        alphaGen identity
    }
}