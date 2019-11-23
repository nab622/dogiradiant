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

textures/taspir/taspir_phongrock
{
	q3map_shadeangle	150
	qer_editorimage	textures/taspir/taspir_rock2.tga
	q3map_lightmapsamplesize	64
	q3map_nonplanar
    {
        map textures/taspir/taspir_rock2
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

textures/taspir/grating_building2
{
	qer_editorimage	textures/imp_mine/grating
	q3map_material	HollowMetal
	q3map_alphashadow
	cull	twosided
    {
        map textures/imp_mine/grating
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

textures/taspir/taspir1_mapbase
{
	nopicmip
	q3map_nolightmap
    {
        map textures/taspir/taspir1_mapbase
    }
    {
        map textures/taspir/taspir1_mapglow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
}

textures/taspir/taspir1_mapbase2
{
	qer_editorimage	textures/taspir/taspir1_mapbase
	nopicmip
	q3map_nolightmap
    {
        map textures/taspir/taspir1_mapbase
    }
    {
        map textures/taspir/taspir1_mapglow3
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
}

textures/taspir/taspir1_mapbase3
{
	qer_editorimage	textures/taspir/taspir1_mapbase
	nopicmip
	q3map_nolightmap
    {
        map textures/taspir/taspir1_mapbase
    }
    {
        map textures/taspir/taspir1_mapglow4
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
}

textures/taspir/taspir1_mapbase4
{
	qer_editorimage	textures/taspir/taspir1_mapbase
	nopicmip
	q3map_nolightmap
    {
        map textures/taspir/taspir1_mapbase
    }
    {
        map textures/taspir/taspir1_mapglow5
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
}

textures/taspir/control1
{
    {
        map $lightmap
    }
    {
        map textures/taspir/control1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/control1_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/taspir/control2
{
	q3map_nolightmap
    {
        map textures/taspir/control2
        rgbGen vertex
    }
    {
        map textures/taspir/control2_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map textures/taspir/control2_glw2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 1
    }
    {
        map textures/taspir/control2_glw3
        blendFunc GL_ONE GL_ONE
        rgbGen wave triangle 0 1 0 1.5
    }
}

textures/taspir/control3
{
    {
        map $lightmap
    }
    {
        map textures/taspir/control3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/control3_pls
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.35 0 0.6
    }
    {
        map textures/taspir/control3_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/taspir/control4
{
    {
        map $lightmap
    }
    {
        map textures/taspir/control4
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/control4_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/taspir/control6
{
    {
        map $lightmap
    }
    {
        map textures/taspir/control6
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/control6_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/taspir/landing_pad
{
	q3map_nolightmap
    {
        map textures/taspir/landing_pad
        rgbGen vertex
    }
    {
        map textures/taspir/landingplat_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map textures/taspir/landing_wipeh
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0.25 0
    }
    {
        map textures/taspir/landing_wipev
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0 -0.25
    }
    {
        map textures/taspir/landing_pad
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

textures/taspir/taspir1_mapbase5
{
	qer_editorimage	textures/taspir/taspir1_mapbase
	nopicmip
	q3map_nolightmap
    {
        map textures/taspir/taspir1_mapbase
    }
    {
        map textures/taspir/taspir1_mapglow6
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.5
    }
}

textures/taspir/taspir1_mapbase_all
{
	qer_editorimage	textures/taspir/taspir1_mapbase
	nopicmip
	q3map_nolightmap
    {
        map textures/taspir/taspir1_mapbase
    }
    {
        map textures/taspir/taspir1_mapglow_all
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 0.5
    }
}

textures/taspir/rust_glow_y
{
	qer_editorimage	textures/taspir/512_512rust
    {
        map $lightmap
    }
    {
        map textures/taspir/512_512rust
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/512_512rust_glow_y
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/rust_glow_r
{
	qer_editorimage	textures/taspir/512_512rust
    {
        map $lightmap
    }
    {
        map textures/taspir/512_512rust
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/512_512rust_glow_r
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/rust_glow_g
{
	qer_editorimage	textures/taspir/512_512rust
    {
        map $lightmap
    }
    {
        map textures/taspir/512_512rust
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/512_512rust_glow_g
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/rust_glow_b
{
	qer_editorimage	textures/taspir/512_512rust
    {
        map $lightmap
    }
    {
        map textures/taspir/512_512rust
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/512_512rust_glow_b
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/light_ceiling
{
	qer_editorimage	textures/taspir/light
    {
        map $lightmap
    }
    {
        map textures/taspir/light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/light_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/taspir/t_wall5
{
    {
        map $lightmap
    }
    {
        map textures/taspir/t_wall5
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/t_wall5_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/lamp2_bulb
{
	qer_editorimage	textures/taspir/lamp2_bulb
    {
        map $lightmap
    }
    {
        map textures/taspir/lamp2_bulb
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/lamp2_bulb_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/display_controls
{
    {
        map $lightmap
    }
    {
        map textures/taspir/display_controls
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/display_controls_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map textures/taspir/display_controls_wp
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0.7 0.75
        tcMod scroll 0 -0.75
    }
    {
        map textures/taspir/display_controls_up
        blendFunc GL_ONE GL_ONE
        rgbGen wave triangle 0 1 0 1
    }
}

textures/taspir/display_controls2
{
    {
        map $lightmap
    }
    {
        map textures/taspir/display_controls2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/display_controls2_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map textures/taspir/display_controls2_glwa
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.75 1 0 0.75
    }
    {
        map textures/taspir/display_controls2_glwb
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 0.75
    }
    {
        map textures/taspir/display_controls2_glwc
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.75 1 0 0.85
    }
}

textures/taspir/display_controls3
{
    {
        map $lightmap
    }
    {
        map textures/taspir/display_controls3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/display_controls3_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map textures/taspir/display_controls3_glw2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 1 0 0.5
    }
}

textures/taspir/lift_switch
{
    {
        map $lightmap
    }
    {
        map textures/taspir/lift_switch
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/lift_switch_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/taspir/lift_switch_off
{
    {
        map $lightmap
    }
    {
        map textures/taspir/lift_switch_off
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/lift_switch_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        map textures/taspir/lift_switch_off_wp
        blendFunc GL_ONE GL_ONE
        rgbGen identity
        tcMod scroll 0 0.5
    }
    {
        map textures/taspir/lift_switch_off
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map textures/taspir/lift_switch_off_blb
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0.5 0.35 0 0.6
    }
}

textures/taspir/display_controls4
{
	q3map_nolightmap
    {
        map textures/taspir/display_controls4
    }
    {
        map textures/taspir/display_controls4_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 1 0 0.5
    }
    {
        map textures/taspir/display_controls4_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave square 0 1 0 0.55
    }
    {
        map textures/taspir/display_controls4_glow3
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1 0 0.85
    }
}

textures/taspir/power_tube
{
	qer_editorimage	textures/taspir/power_tube
	q3map_nolightmap
    {
        map textures/taspir/ggoo_blue
        blendFunc GL_ONE GL_SRC_COLOR
        tcMod scroll 0 0.5
    }
    {
        map textures/taspir/ggoo_blue
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scroll 0 0.1
    }
    {
        map textures/taspir/power_tube
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/taspir/256_128rustv
{
	qer_editorimage	textures/taspir/256_128rustv
    {
        map $lightmap
    }
    {
        map textures/taspir/256_128rustv
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/256_128rustv_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/panellong
{
	qer_editorimage	textures/taspir/panellong
    {
        map $lightmap
    }
    {
        map textures/taspir/panellong
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/panellong_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/smalltrim
{
	qer_editorimage	textures/taspir/smalltrim
    {
        map $lightmap
    }
    {
        map textures/taspir/smalltrim
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/smalltrim_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/t_trim2
{
	qer_editorimage	textures/taspir/t_trim2
    {
        map $lightmap
    }
    {
        map textures/taspir/t_trim2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/t_trim2_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/door
{
	qer_editorimage	textures/taspir/door
    {
        map $lightmap
    }
    {
        map textures/taspir/door
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/taspir/door_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/taspir/door_off
{
	qer_editorimage	textures/taspir/door
    {
        map $lightmap
    }
    {
        map textures/taspir/door
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/taspir/floor
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/taspir/floor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}