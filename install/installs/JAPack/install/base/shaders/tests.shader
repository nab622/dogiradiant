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

textures/tests/test1
{
	qer_editorimage	textures/impgarrison/new5
    {
        map $lightmap
    }
    {
        map textures/impgarrison/new5
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/tests/env_chrome_add2
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

// *****************************************

// *	Glass Shaders from Trek		*

// *****************************************


textures/tests/glass1
{
	qer_editorimage textures/tests/glass2
	qer_trans	0.5
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/tests/glass2
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
// tcMod scale 3 3

        map textures/tests/glass2
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

textures/tests/metal1
{
	qer_editorimage	textures/impgarrison/metal1
	q3map_surfacelight	300
	q3map_nolightmap
    {
        map textures/impgarrison/metal1
        rgbGen identity
    }
}

textures/tests/glass_reflective
{
	qer_editorimage	textures/tests/glass2.tga
	q3map_tesssize	48
	qer_trans	0.5
	surfaceparm	forcefield
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/tests/glass2
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
// tcMod scale 3 3

        map textures/tests/glass2
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

textures/tests/glass_portal
{
	qer_editorimage	textures/tests/glass2
	qer_trans	0.5
	surfaceparm	trans
	portal
	q3map_nolightmap
    {
        map textures/tests/glass2
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
        alphaGen portal 256
    }
    {
// tcMod scale 3 3

        map textures/tests/glass2
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

textures/tests/glass_security
{
	qer_editorimage	textures/tests/glass2
	qer_trans	0.5
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/tests/glass2
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
// tcMod scale 3 3

        map textures/tests/glass2
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map textures/kejim/security_glass
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

textures/tests/glass_security_border
{
	qer_editorimage	textures/tests/glass2
	qer_trans	0.5
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/tests/glass2
        blendFunc GL_ZERO GL_ONE_MINUS_SRC_COLOR
    }
    {
// tcMod scale 3 3

        map textures/tests/glass2
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
    {
        map textures/kejim/security_glass_border
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}