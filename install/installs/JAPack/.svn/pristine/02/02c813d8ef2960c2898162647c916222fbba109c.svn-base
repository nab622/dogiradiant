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
 
textures/jnegretetest/water2
{
	qer_editorimage	textures/common/water_1
	qer_trans	0.6
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	water
	surfaceparm	trans
	q3map_material	Water
    {
        map textures/common/water4
        blendFunc GL_ONE GL_SRC_ALPHA
        alphaGen const 0.5
        tcMod turb 0.5 0.03 0 0.3
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/jnegretetest/ice_phong
{
	qer_editorimage textures/hoth/h_basicwall.tga
	q3map_nonplanar
	q3map_shadeAngle 120
	q3map_splotchfix
	q3map_forcemeta

    {
	map textures/hoth/h_basicwall.tga
	//tcMod scale 0.25 0.25
	rgbGen identity
    }
    {
	map $lightmap
	blendFunc GL_DST_COLOR GL_ZERO
	rgbGen identity
    }
}

textures/jnegretetest/cut_ice_phong
{
	qer_editorimage textures/hoth/h_basicwall_2.tga
	q3map_nonplanar
	q3map_shadeAngle 120
	q3map_splotchfix
	q3map_forcemeta

    {
	map textures/hoth/h_basicwall_2.tga
	//tcMod scale 0.25 0.25
	rgbGen identity
    }
    {
	map $lightmap
	blendFunc GL_DST_COLOR GL_ZERO
	rgbGen identity
    }
}


textures/jnegretetest/chiseled_phong
{
	qer_editorimage textures/hoth/h_wallchunk

	q3map_nonplanar
	q3map_shadeAngle 120
	q3map_splotchfix
	q3map_forcemeta

    {
	map textures/hoth/h_wallchunk
	//tcMod scale 0.25 0.25
	rgbGen identity
    }
    {
	map $lightmap
	blendFunc GL_DST_COLOR GL_ZERO
	rgbGen identity
    }
}

textures/jnegretetest/ice_rock_phong
{
	qer_editorimage textures/hoth/rock_huge_snow.tga

	q3map_nonplanar
	q3map_shadeAngle 120
	q3map_splotchfix
	q3map_forcemeta

    {
	map textures/hoth/rock_huge_snow.tga
	//tcMod scale 0.25 0.25
	rgbGen identity
    }
    {
	map $lightmap
	blendFunc GL_DST_COLOR GL_ZERO
	rgbGen identity
    }
}


textures/jnegretetest/grey_snow_phong
{
	qer_editorimage textures/hoth/h_floor.tga

	q3map_nonplanar
	q3map_shadeAngle 120	
	q3map_splotchfix
	q3map_forcemeta
    {
	map textures/hoth/h_floor.tga
	//tcMod scale 0.25 0.25
	rgbGen identity
    }
    {
	map $lightmap
	blendFunc GL_DST_COLOR GL_ZERO
	rgbGen identity
    }
}

textures/jnegretetest/standard_flare
{
	qer_editorimage textures/flares/standard_flare.tga
	surfaceparm	nonsolid
	surfaceparm	trans
	q3map_nolightmap
	deformvertexes	autoSprite	
    {
        map textures/flares/standard_flare.jpg
	  rgbGen vertex        		  
	  blendFunc GL_ONE GL_ONE
	  depthFunc disable    
    }
}


// Test sky

// q3map_sun <red> <green> <blue> <intensity> <degrees> <elevation>

// intensity falls off with angle but not distance 100 is a fairly bright sun

// degree of 0 = from the east, 90 = north, etc.  altitude of 0 = sunrise/set, 90 = noon

textures/jnegretetest/boba_night
{
	qer_editorimage	textures/skies/sky.tga
	//q3map_surfacelight	220
	//sun 0.219608 0.176471 0.635294 220 75 75
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	q3map_novertexshadows
	skyParms	textures/skies/stars 512 -
}

textures/jnegretetest/boba_late_afternoon
{
	qer_editorimage	textures/skies/sky.tga
	//q3map_surfacelight	220
	//sun 0.219608 0.176471 0.635294 220 75 75
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	q3map_novertexshadows
	skyParms	textures/skies/bespin 512 -
}

textures/jnegretetest/boba_afternoon
{
	qer_editorimage	textures/skies/sky.tga
	//q3map_surfacelight	220
	//sun 0.219608 0.176471 0.635294 220 75 75
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	q3map_novertexshadows
	skyParms	textures/skies/yavin 512 -
}


textures/jnegretetest/rancor_sky
{
	qer_editorimage	textures/skies/sky.tga
	q3map_surfacelight	85
	sun 1 0.624712 0.371286 80 75 80
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	q3map_novertexshadows
	skyParms	textures/skies/desert 512 -
}

textures/jnegretetest/hoth_sky
{
	qer_editorimage	textures/skies/sky.tga
	q3map_surfacelight	75
	sun 1 0.624712 0.371286 80 75 80
	surfaceparm	sky
	surfaceparm	noimpact
	surfaceparm	nomarks
	notc
	q3map_nolightmap
	q3map_novertexshadows
	skyParms	textures/skies/hoth 512 -
}

textures/jnegretetest/rock_huge_snow
{
	q3map_nolightmap
    {
        map textures/jnegretetest/rock_huge_snow
        rgbGen exactVertex
    }
}