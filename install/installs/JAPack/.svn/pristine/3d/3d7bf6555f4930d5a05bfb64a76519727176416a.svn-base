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
 
textures/imp_mine/basefloor2
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/imp_mine/basefloor2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imp_mine/kplate2
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/imp_mine/kplate2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imp_mine/kplatek
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/imp_mine/kplatek
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/imp_mine/grating
{
	q3map_material	HollowMetal
	cull	twosided
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

textures/imp_mine/lava2
{
	surfaceparm	lava
	deformvertexes	wave	100 sin 1 1 0 0.25
    {
        map textures/imp_mine/lava2
        blendFunc GL_ONE GL_ZERO
        tcMod scroll 0.01 0.01
        tcMod turb 1 0.1 1 0.005
        tcMod stretch noise 1 0.01 0 0.05
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_SRC_COLOR
    }
}

textures/imp_mine/lightmap5
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imp_mine/lightmap5
        blendFunc GL_ONE GL_ONE
    }
}

textures/imp_mine/lightmap3
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imp_mine/lightmap3
        blendFunc GL_ONE GL_ONE
    }
}

textures/imp_mine/lightmap4
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imp_mine/lightmap4
        blendFunc GL_ONE GL_ONE
    }
}

textures/imp_mine/lightmap2
{
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/imp_mine/lightmap2
        blendFunc GL_ONE GL_ONE
    }
}

textures/imp_mine/grating_noclip
{
	qer_editorimage	textures/imp_mine/grating
	surfaceparm	nonsolid
	q3map_material	HollowMetal
	cull	twosided
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