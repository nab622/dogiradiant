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

textures/wedge/w_catwalk
{
	qer_editorimage	textures/wedge/w_catwalk
	surfaceparm	trans
	q3map_material	HollowMetal
	cull	twosided
    {
        map textures/wedge/w_catwalk
        alphaFunc GE192
        blendFunc GL_ONE GL_ZERO
        depthWrite
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/wedge/w_door_onoff
{
    {
        map $lightmap
    }
    {
        map textures/wedge/w_door_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/w_door_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        oneshotanimMap 1 textures/wedge/w_door_onoffr textures/wedge/w_door_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        alphaGen identity
    }
}

textures/wedge/powerpipe
{
	q3map_nolightmap
    {
        map textures/wedge/ggoo1
        blendFunc GL_ONE GL_SRC_COLOR
        tcMod scroll 0 1
    }
    {
        map textures/wedge/ggoo1
        blendFunc GL_ZERO GL_ONE
        tcMod scroll 0 0.2
    }
    {
        map textures/wedge/powerpipe
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
    {
        map textures/wedge/powerpipe_glw
        blendFunc GL_ONE GL_ONE
        alphaGen identity
    }
}

textures/wedge/w_door
{
    {
        map $lightmap
    }
    {
        map textures/wedge/w_door
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/w_door_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/wedge/w_con1
{
    {
        map $lightmap
    }
    {
        map textures/wedge/w_con1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/w_con1_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/wedge/w_con2
{
    {
        map $lightmap
    }
    {
        map textures/wedge/w_con2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/w_con2_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/wedge/w_con3
{
    {
        map $lightmap
    }
    {
        map textures/wedge/w_con3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/w_con3_glw
        blendFunc GL_ONE GL_ONE
    }
    {
        map textures/wedge/w_con3_glw1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 1.6 0.5 1.25
    }
    {
        map textures/wedge/w_con3_glw2
        blendFunc GL_ONE GL_ONE
        rgbGen wave sin 0 2 0.75 1
    }
}

textures/wedge/wall_tankcon
{
    {
        map $lightmap
    }
    {
        map textures/wedge/wall_tankcon
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/wall_tankcon_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/wedge/w_catwalk_r
{
	qer_editorimage	textures/wedge/w_catwalk_r
	surfaceparm	trans
	q3map_material	HollowMetal
	cull	twosided
    {
        map textures/wedge/w_catwalk_r
        alphaFunc GE128
        blendFunc GL_ONE GL_ZERO
        depthWrite
    }
    {
        map $lightmap
        blendFunc GL_ONE GL_ZERO
        depthFunc equal
    }
    {
        map textures/wedge/w_catwalk
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}

textures/wedge/largescreen2
{
    {
        map $lightmap
    }
    {
        map textures/wedge/largescreen2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/largescreen2_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/wedge/pillar_light
{
    {
        map $lightmap
    }
    {
        map textures/wedge/pillar_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/pillar_light_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.25 0 4
    }
    {
        map textures/wedge/pillar_light_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.25 0.5 3
    }
}

textures/wedge/w_btrim
{
	qer_editorimage	textures/wedge/w_btrim
    {
        map $lightmap
    }
    {
        map textures/wedge/w_btrim
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/w_btrim_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/wedge/w_door2_onoff
{
	qer_editorimage	textures/wedge/w_door_onoff
    {
        map $lightmap
    }
    {
        map textures/wedge/w_door2_onoff
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/wedge/w_door_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        oneshotanimMap 1 textures/wedge/w_door_onoffr textures/wedge/w_door_onoffg 
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        alphaGen identity
    }
}

textures/wedge/large_tank_grate
{
	q3map_nolightmap
    {
        map textures/wedge/tankeffect
        rgbGen identity
        tcMod scroll 0 8
    }
    {
        map textures/wedge/large_tank_grate
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen lightingDiffuse
    }
}

textures/wedge/large_tank_fins
{
	q3map_nolightmap
    {
        map textures/wedge/large_tank_fins
        rgbGen lightingDiffuse
    }
    {
        map textures/wedge/large_tank_fins_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/wedge/large_tank_cap
{
	q3map_nolightmap
    {
        map textures/wedge/large_tank_cap
        rgbGen lightingDiffuse
    }
    {
        map textures/wedge/large_tank_cap_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}