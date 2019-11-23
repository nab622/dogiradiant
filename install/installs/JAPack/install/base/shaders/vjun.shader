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

textures/vjun/grate
{
	qer_editorimage	textures/vjun/grate
	surfaceparm	nonopaque
	surfaceparm	trans
	cull	twosided
    {
        map textures/vjun/grate
        alphaFunc GE192
        blendFunc GL_ONE GL_ZERO
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}

textures/vjun/grate2
{
	qer_editorimage	textures/vjun/grate2
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_material	HollowMetal
	cull	twosided
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
    {
        map textures/vjun/grate2
        alphaFunc LT128
        blendFunc GL_ONE GL_ZERO
        depthWrite
        rgbGen identity
    }
}

textures/vjun/rocky_phong
{
	q3map_shadeangle	120
	qer_editorimage	textures/vjun/o_ground2
	q3map_nolightmap
	q3map_nonplanar
	q3map_onlyvertexlighting
    {
// tcMod scale 0.25 0.25

        map textures/vjun/o_ground2
        rgbGen vertex
        tcGen base
    }
}

textures/vjun/wall14
{
    {
        map $lightmap
    }
    {
        map textures/vjun/wall14
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/wall14_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/vj4vertexphong
{
// q3map_forcemeta

	q3map_shadeangle	120
	qer_editorimage	models/map_objects/vjun/vj4
	q3map_nolightmap
	q3map_nonplanar
	q3map_onlyvertexlighting
    {
        map models/map_objects/vjun/vj4
        rgbGen vertex
    }
}

textures/vjun/hangardoor
{
    {
        map $lightmap
    }
    {
        map textures/vjun/hangardoor
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/hangardoor_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0.125 0.5
    }
}

textures/vjun/hangar_console
{
    {
        map $lightmap
    }
    {
        map textures/vjun/hangar_console
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/hangar_console_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/hangar_console2
{
    {
        map $lightmap
    }
    {
        map textures/vjun/hangar_console2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/hangar_console2_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/hangar_console3
{
    {
        map $lightmap
    }
    {
        map textures/vjun/hangar_console3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/hangar_console3_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/light_strip
{
    {
        map $lightmap
    }
    {
        map textures/vjun/light_strip
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/light_strip_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/wall_saberroom
{
    {
        map $lightmap
    }
    {
        map textures/vjun/wall_saberroom
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/wall_saberroom_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/door1_onoff
{
    {
        map $lightmap
    }
    {
        map textures/vjun/door1_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/vjun/door1_onoffr textures/vjun/door1_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        alphaGen identity
    }
}

textures/vjun/door2_onoff
{
    {
        map $lightmap
    }
    {
        map textures/vjun/door2_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/vjun/door2_onoff_glowr textures/vjun/door2_onoff_glowg 
        blendFunc GL_ONE GL_ONE
        glow
        alphaGen identity
    }
}

textures/vjun/o_door_onoff
{
    {
        map $lightmap
    }
    {
        map textures/vjun/o_door_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        oneshotanimMap 1 textures/vjun/o_door_onoffr textures/vjun/o_door_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        alphaGen identity
    }
}

textures/vjun/lights3
{
    {
        map $lightmap
    }
    {
        map textures/vjun/lights3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/lights3_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/light_vjun
{
    {
        map $lightmap
    }
    {
        map textures/vjun/light_vjun
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/light_vjun_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/vader_floor2
{
	q3map_material	SolidMetal
	q3map_nolightmap
    {
        map textures/vjun/vader_floor2
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_ONE GL_ONE_MINUS_SRC_COLOR
        rgbGen identity
        tcGen environment
    }
    {
        map textures/vjun/vader_floor2_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
    {
        map textures/vjun/vader_floor2_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/vader_trim3
{
	q3map_nolightmap
    {
        map textures/vjun/vader_trim3
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        tcGen environment
    }
    {
        map textures/vjun/vader_trim3_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/vjun/floor3
{
    {
        map $lightmap
    }
    {
        map textures/vjun/floor3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/common/environ1
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        tcGen environment
    }
    {
        map textures/vjun/floor3_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map textures/vjun/floor3_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/wall8
{
	q3map_nolightmap
    {
        map textures/vjun/wall8
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        tcGen environment
    }
    {
        map textures/vjun/wall8_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/vjun/vader_floor
{
	q3map_material	SolidMetal
	q3map_nolightmap
    {
        map textures/vjun/vader_floor
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        tcGen environment
    }
    {
        map textures/vjun/vader_floor_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/vjun/walk_ceiling
{
	q3map_material	SolidMetal
	q3map_nolightmap
    {
        map textures/vjun/walk_ceiling
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        tcGen environment
    }
    {
        map textures/vjun/walk_ceiling_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/vjun/vader_walkway
{
	q3map_material	SolidMetal
	q3map_nolightmap
    {
        map textures/vjun/vader_walkway
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
    {
        map textures/vjun/vader_walkway_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/vjun/wall9
{
	q3map_nolightmap
    {
        map textures/vjun/wall9
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
    {
        map textures/vjun/wall9_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
    {
        map textures/vjun/wall9_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/vader_trim2
{
	q3map_nolightmap
    {
        map textures/vjun/vader_trim2
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        tcGen environment
    }
    {
        map textures/vjun/vader_trim2_mask
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/vjun/grate1
{
	qer_editorimage	textures/vjun/grate1
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_material	HollowMetal
	cull	twosided
    {
        map textures/vjun/grate1
        alphaFunc GE192
        blendFunc GL_ONE GL_ZERO
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

textures/vjun/light_vjun_amber
{
	qer_editorimage	textures/vjun/light_vjunamber
    {
        map $lightmap
    }
    {
        map textures/vjun/light_vjunamber
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/light_vjunamber_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/grate_light_amber
{
	qer_editorimage	textures/vjun/grateamber_light
    {
        map $lightmap
    }
    {
        map textures/vjun/grateamber_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/grateamber_light_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/screen1
{
	q3map_nolightmap
	q3map_novertexshadows
    {
        map textures/vjun/screen1
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/vjun/frametech
{
    {
        map $lightmap
    }
    {
        map textures/vjun/frametech
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/frametech_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/lightground
{
    {
        map $lightmap
    }
    {
        map textures/vjun/lightground
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/lightground_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/light2
{
    {
        map $lightmap
    }
    {
        map textures/vjun/light2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/light2_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/tech
{
	q3map_nolightmap
    {
        map textures/vjun/tech
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map textures/vjun/tech
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen const ( 0.700000 0.700000 0.700000 )
    }
}

textures/vjun/circle_light
{
    {
        map $lightmap
    }
    {
        map textures/vjun/circle_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/circle_light_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/vader_switch
{
    {
        map $lightmap
    }
    {
        map textures/vjun/vader_switch
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/vader_switch_on
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/vader_switch_off
{
	qer_editorimage	textures/vjun/vader_switch
    {
        map $lightmap
    }
    {
        map textures/vjun/vader_switch
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/vader_switch_off
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/redlight_vjun
{
	qer_editorimage	textures/vjun/redlight_vjun
    {
        map $lightmap
    }
    {
        map textures/vjun/redlight_vjun
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/redlight_vjun_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/redlight_strip
{
	qer_editorimage	textures/vjun/redlight_strip
    {
        map $lightmap
    }
    {
        map textures/vjun/redlight_strip
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/redlight_strip_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/redlights3
{
	qer_editorimage	textures/vjun/redlights3
    {
        map $lightmap
    }
    {
        map textures/vjun/redlights3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/redlights3_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/redgrate_light
{
	qer_editorimage	textures/vjun/redgrate_light
    {
        map $lightmap
    }
    {
        map textures/vjun/redgrate_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/vjun/redgrate_light_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/vjun/explosive_decal
{
	polygonOffset
    {
        map textures/vjun/explosive_decal
        blendFunc GL_ONE GL_ONE
    }
    {
        map textures/vjun/explosive_decal_glow
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
}