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

textures/factory/T2_Wedge_floorgrate
{
	qer_editorimage	textures/imperial/floorgrate
	cull	twosided
    {
        map textures/imperial/floorgrate
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

textures/factory/wall10
{
    {
        map $lightmap
    }
    {
        map textures/factory/wall10
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/cfoster/etest1
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
    }
    {
        map textures/factory/wall10env
        blendFunc GL_SRC_ALPHA GL_ONE
        alphaGen lightingSpecular
    }
}

textures/factory/env_siding
{
	qer_editorimage	textures/factory/siding1
    {
        map textures/factory/enviro
        tcGen environment
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
    {
        map textures/factory/siding1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/cat_floor
{
	q3map_material	HollowMetal
	q3map_nolightmap
	cull	twosided
    {
        map textures/factory/cat_floor
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
        tcMod scale 2 2
    }
}

textures/factory/basic2_tiled
{
	qer_editorimage	textures/factory/basic2
	q3map_nolightmap
    {
        map textures/factory/basic2
        rgbGen vertex
        tcMod scale 7 7
    }
}

textures/factory/wall2
{
    {
        map gfx/effects/fl_blue2orange
        tcMod scroll 0 2
        tcMod stretch sin 0.7 0.01 0 1
    }
    {
        map textures/factory/wall2
        blendFunc GL_ONE GL_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_ZERO GL_SRC_COLOR
    }
}

textures/factory/cat_floor2
{
	q3map_material	HollowMetal
	q3map_nolightmap
	q3map_alphashadow
    {
        map textures/factory/cat_floor2
        blendFunc GL_ONE GL_SRC_ALPHA
        depthWrite
        rgbGen vertex
        tcMod scale 4 4
    }
}

textures/factory/basic4_railing
{
	qer_editorimage	textures/factory/basemetal1
	q3map_nolightmap
    {
        map textures/factory/basemetal1
        rgbGen vertex
    }
    {
        map textures/factory/enviro
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
    }
}

textures/factory/tracklight
{
    {
        map $lightmap
    }
    {
        map textures/factory/tracklight
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/tracklight_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 0.5
    }
}

textures/factory/wallliner
{
    {
        map textures/factory/wallliner_energya
        tcMod scroll 2.5 0
    }
    {
        map textures/factory/wallliner_energyb
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scroll 1 0
    }
    {
        map textures/factory/wallliner
        blendFunc GL_ONE_MINUS_SRC_ALPHA GL_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_ZERO GL_SRC_COLOR
    }
}

textures/factory/conveyor_belt
{
	q3map_material	SolidMetal
    {
        map $lightmap
        tcMod entityTranslate
    }
    {
        map textures/factory/conveyor_belt
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scroll 0 1.13
    }
}

textures/factory/tickertape
{
	q3map_nolightmap
	cull	twosided
    {
        map textures/factory/tickertape
        blendFunc GL_ONE GL_ONE
    }
    {
        map textures/factory/tickertape2
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0.075 0
    }
    {
        map textures/factory/tickertape3
        blendFunc GL_ONE GL_ONE
        tcMod scroll 0.05 0
    }
}

textures/factory/trimlight
{
    {
        map $lightmap
    }
    {
        map textures/factory/trimlight
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/trimlight_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/factory/walllinerb
{
    {
        map textures/factory/etest3
        tcGen environment
    }
    {
        map textures/factory/walllinerb
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basewall_vent
{
    {
        map textures/factory/etest3
        tcGen environment
    }
    {
        map textures/factory/basewall_vent
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/piller
{
    {
        map textures/factory/etest3
        tcGen environment
    }
    {
        map textures/factory/piller
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/pipe_current
{
	qer_editorimage	textures/factory/pipe
    {
        map $lightmap
    }
    {
        map textures/factory/pipe_electric
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/electrical2
        blendFunc GL_ONE GL_ONE
        rgbGen wave noise 0 1 0 85
        tcMod turb 0 0.1 0 0.1
        tcMod scroll 2 0
    }
    {
        map textures/factory/electrical2
        blendFunc GL_ONE GL_ONE
        rgbGen wave noise 0 1 0 85
        tcMod turb 0 0.1 0 0.1
        tcMod scroll -2 0
    }
    {
        map textures/factory/deconfield2
        blendFunc GL_ONE GL_ONE_MINUS_SRC_COLOR
        rgbGen wave noise 0 1 0 99
    }
}

textures/factory/other_field
{
	qer_editorimage	textures/factory/deconfield2
	surfaceparm	forcefield
	q3map_nolightmap
    {
        map textures/factory/deconfield2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.7 1 0 0.1
        tcMod stretch noise 0.2 0.01 0 1
    }
    {
        map textures/factory/deconfield2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.8 0.1 0 0.3
        tcMod stretch noise 0.2 0.05 0 0.1
    }
}

textures/factory/env_pipe
{
	qer_editorimage	textures/factory/basemetal2
    {
        map $lightmap
    }
    {
        map textures/factory/basemetal2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/enviro
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
    }
}

textures/factory/env_glass
{
	qer_editorimage	textures/system/etest4
	surfaceparm	nonopaque
	surfaceparm	forcefield
	q3map_nolightmap
    {
        map textures/system/etest4
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

textures/factory/trim_01
{
    {
        map $lightmap
    }
    {
        map textures/factory/trim_01
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/env4
        blendFunc GL_ONE GL_ONE
        rgbGen const ( 0.200000 0.200000 0.200000 )
        tcGen environment
    }
}

textures/factory/cat_floor_b
{
	qer_editorimage	textures/factory/cat_floor2
	q3map_material	HollowMetal
	q3map_nolightmap
	cull	twosided
    {
        map textures/factory/cat_floor
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen lightingDiffuse
    }
}

textures/factory/basic2_tiled_b
{
	qer_editorimage	textures/factory/basic2
	q3map_nolightmap
    {
        map textures/factory/basic2
        rgbGen lightingDiffuse
        tcMod scale 7 7
    }
}

textures/factory/ggoo1
{
	q3map_nolightmap
    {
        map textures/factory/ggoo1
        tcMod scroll 0.3 0
    }
    {
        map textures/factory/ggoo3
        blendFunc GL_DST_COLOR GL_SRC_ALPHA
        tcMod scroll 0.1 0
    }
}

textures/factory/door_onoff
{
    {
        map $lightmap
    }
    {
        map textures/factory/door_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/factory/door_onoffr textures/factory/door_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        alphaGen identity
    }
}

textures/factory/cul_door_onoff
{
    {
        map $lightmap
    }
    {
        map textures/factory/cul_door_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/factory/cul_door_onoffr textures/factory/cul_door_onoffg 
        blendFunc GL_ONE GL_ONE
        alphaGen identity
    }
}

textures/factory/newcrate1
{
    {
        map $lightmap
    }
    {
        map textures/factory/newcrate1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/newcrate1_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 1
    }
}

textures/factory/piller_base
{
    {
        map $lightmap
    }
    {
        map textures/factory/piller_base
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/piller_base_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/factory/newcrate3_trim
{
    {
        map $lightmap
    }
    {
        map textures/factory/newcrate3_trim
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/newcrate3_trim_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.45
    }
    {
        map textures/factory/newcrate3_trim_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.4
    }
}

textures/factory/newcrate4_side
{
    {
        map $lightmap
    }
    {
        map textures/factory/newcrate4_side
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/newcrate4_side_glow1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave inversesawtooth 0 1 0 0.75
    }
    {
        map textures/factory/newcrate4_side_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 1 0 0.8
    }
}

textures/factory/bomb_new_glow
{
	qer_editorimage	textures/factory/ggoo1
	q3map_nolightmap
    {
        map models/map_objects/factory/bomb_new_glow
        glow
        rgbGen identity
        tcMod scroll 0.3 0
    }
    {
        map textures/factory/bomb_new_glw2
        blendFunc GL_ONE_MINUS_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen identity
        tcMod scroll 0.1 0
    }
}

textures/factory/gooblue
{
	qer_editorimage	textures/factory/ggoo1
	q3map_nolightmap
    {
        map textures/factory/ggoo1
        tcMod scroll 0.3 0
    }
    {
        map textures/factory/ggoo3
        blendFunc GL_ONE_MINUS_DST_COLOR GL_ZERO
        tcMod scroll 0.1 0
    }
}

textures/factory/bomb_new_glow_deact
{
	qer_editorimage	textures/factory/ggoo1
	q3map_nolightmap
    {
        map models/map_objects/factory/bomb_new_glow_off
        glow
        rgbGen identity
        tcMod scroll 0.3 0
    }
    {
        map textures/factory/bomb_new_glw2_off
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0.1 0
    }
}

textures/factory/basemetal5
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basemetal5
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basefloor1
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basefloor1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basemetal1
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basemetal1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basemetal2
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basemetal2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basemetal4
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basemetal4
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/base
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/base
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basicmetal2_2
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basicmetal2_2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basic2
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basic2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basic3
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basic3
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basic4
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basic4
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basic5
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basic5
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basic6
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basic6
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basic1
{
	q3map_material	SolidWood
    {
        map $lightmap
    }
    {
        map textures/factory/basic1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/darkfloor
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/darkfloor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/darkmetal
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/darkmetal
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/grating
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/factory/grating
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/grate
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/factory/grate
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/inside_floor
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/inside_floor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/metalsec1
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/metalsec1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/outside_rock1b
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/factory/outside_rock1b
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/outside_floor1
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/factory/outside_floor1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/s_basic
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/s_basic
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/basic3_b
{
	qer_editorimage	textures/factory/basic4
	q3map_material	SolidMetal
	q3map_nolightmap
    {
        map textures/factory/basic4
        rgbGen lightingDiffuse
    }
}

textures/factory/conveyor_belt_off
{
	qer_editorimage	textures/factory/conveyor_belt
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/conveyor_belt
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/conveyor_belt_slow
{
	qer_editorimage	textures/factory/conveyor_belt
	q3map_material	SolidMetal
    {
        map $lightmap
        tcMod entityTranslate
    }
    {
        map textures/factory/conveyor_belt
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scroll 0 0.92
    }
}

textures/factory/basemetal5_noclip
{
	qer_editorimage	textures/factory/basemetal5
	surfaceparm	nonsolid
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/basemetal5
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/darkmetal_noclip
{
	qer_editorimage	textures/factory/darkmetal
	surfaceparm	nonsolid
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/factory/darkmetal
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/env_pipe_noclip
{
	qer_editorimage	textures/factory/basemetal2
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/factory/basemetal2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/factory/enviro
        blendFunc GL_DST_COLOR GL_ONE
        tcGen environment
    }
}

textures/factory/goldtop2_noclip
{
	qer_editorimage	textures/factory/goldtop2
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/factory/goldtop2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/factory/conveyor_belt_fast
{
	qer_editorimage	textures/factory/conveyor_belt
	q3map_material	SolidMetal
    {
        map $lightmap
        tcMod entityTranslate
    }
    {
        map textures/factory/conveyor_belt
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scroll 0 3
    }
}

textures/factory/conveyor_belt_fast_2
{
	qer_editorimage	textures/factory/conveyor_belt
	q3map_material	SolidMetal
    {
        map $lightmap
        tcMod entityTranslate
    }
    {
        map textures/factory/conveyor_belt
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scroll 0 1.87
    }
}

textures/factory/outside_floor1_phong
{
// q3map_forcemeta

	q3map_shadeangle	120
	qer_editorimage	textures/factory/outside_floor1
	q3map_material	Rock
	q3map_nolightmap
	q3map_nonplanar
	q3map_onlyvertexlighting
    {
        map textures/factory/outside_floor1
        rgbGen vertex
    }
}

textures/factory/basic1_vertex
{
// q3map_shadeangle	65

	qer_editorimage	textures/factory/basic1
	q3map_nolightmap
	q3map_nonplanar
    {
        map textures/factory/basic1
        rgbGen exactVertex
    }
}

textures/factory/outside_rock1b_vertex
{
	q3map_shadeangle	65
	qer_editorimage	textures/factory/outside_rock1b.tga
	q3map_nolightmap
	q3map_nonplanar
    {
        map textures/factory/outside_rock1b
        rgbGen exactVertex
    }
}