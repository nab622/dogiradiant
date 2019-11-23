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

textures/yavin/s_rock1_vines
{
	qer_editorimage	textures/yavin/rockmossy
	q3map_nolightmap
	q3map_onlyvertexlighting
	cull	twosided
    {
        map textures/yavin/rockmossy
    }
    {
        map gfx/sprites/ss_hangvine
            surfaceSprites vertical 10 15 42 600
            ssFademax 1400
            ssVariance 2 6
            ssHangDown
            ssWind 0.4
            ssWindidle 0.3
        alphaFunc GE192
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
    {
        map gfx/sprites/ss_hangvine2
            surfaceSprites vertical 6 12 49 500
            ssFademax 1200
            ssVariance 1 6
            ssHangDown
            ssWind 0.4
            ssWindidle 0.3
        alphaFunc GE192
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

textures/yavin/gravel
{
	qer_editorimage	textures/yavin/dugdirt
	surfaceparm	slick
	q3map_material	Gravel
	q3map_nolightmap
	q3map_vlight
    {
        map textures/yavin/dugdirt
    }
}

textures/yavin/light
{
	q3map_flare	gfx/misc/flare
	q3map_nolightmap
    {
        map textures/yavin/light
        alphaFunc GE128
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
    }
}

textures/yavin/light_blue
{
	q3map_flare	gfx/misc/flare
	q3map_nolightmap
    {
        map textures/yavin/light_blue
        alphaFunc GE128
        blendFunc GL_ONE GL_ONE_MINUS_SRC_ALPHA
    }
}

textures/yavin/crate03
{
    {
        map $lightmap
    }
    {
        map textures/yavin/crate03
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/yavin/crate03_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/yavin/control01
{
    {
        map $lightmap
    }
    {
        map textures/yavin/control01
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/yavin/control01_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/yavin/stone_tile2
{
    {
        map $lightmap
    }
    {
        map textures/yavin/stone_tile2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/yavin/stone_tile2_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/yavin/temple_illusion
{
	qer_editorimage	textures/yavin/temple_interiorsmall2
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/yavin/temple_interiorsmall2
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod turb 0 0.03 0 0.075
    }
}

textures/yavin/mud_shadow
{
	qer_editorimage	textures/yavin/s_mud2
	q3map_material	Mud
    {
        map textures/yavin/s_mud2
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/yavin/lshadow
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod turb 2 0.05 0 0.1
    }
}

textures/yavin/ground_grasssprite
{
	qer_editorimage	textures/yavin/ground
	q3map_material	ShortGrass
	cull	twosided
    {
        map $lightmap
    }
    {
        map textures/yavin/ground
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map gfx/sprites/grass2
            surfaceSprites vertical 32 24 42 500
            ssFademax 1500
            ssFadescale 1
            ssVariance 1 2
            ssWind 0.5
        alphaFunc GE192
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

textures/yavin/mud_sprites
{
	qer_editorimage	textures/yavin/dugdirt
	q3map_material	Mud
	q3map_nolightmap
	cull	twosided
    {
        map textures/yavin/dugdirt
    }
    {
        map gfx/sprites/grass_cattail
            surfaceSprites vertical 24 36 75 500
            ssFademax 1500
            ssFadescale 1
            ssVariance 1 2
            ssWind 0.5
        alphaFunc GE192
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

textures/yavin/tree1
{
	qer_editorimage	textures/yavin/tree1
	surfaceparm	noimpact
	surfaceparm	nomarks
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	trans
	q3map_nolightmap
	q3map_onlyvertexlighting
    {
        map textures/yavin/tree1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
}

textures/yavin/ground
{
	qer_editorimage	textures/yavin/ground
	q3map_material	ShortGrass
	cull	twosided
    {
        map $lightmap
    }
    {
        map textures/yavin/ground
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/yavin/groundplants
{
    {
        map textures/yavin/groundplants
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map textures/yavin/groundplants
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

textures/yavin/bblock3_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/bblock3
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/bblock3
        rgbGen vertex
    }
}

textures/yavin/stone_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/stone
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/stone
        rgbGen vertex
    }
}

textures/yavin/stone_walk_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/stone_walk
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/stone_walk
        rgbGen vertex
    }
}

textures/yavin/gardenwall3_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/gardenwall3
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/gardenwall3
        rgbGen vertex
    }
}

textures/yavin/ceiling_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/ceiling
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/ceiling
        rgbGen vertex
    }
}

textures/yavin/stonewall2_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/stonewall2
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/stonewall2
        rgbGen vertex
    }
}

textures/yavin/strius_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/strius
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/strius
        rgbGen vertex
    }
}

textures/yavin/temple_interiorsmallwb_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/yavin/temple_interiorsmallwb
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/temple_interiorsmallwb
        rgbGen vertex
    }
}

textures/yavin/ground_Phong_vertex
{
	q3map_shadeangle	120
	qer_editorimage	textures/yavin/ground
	q3map_material	ShortGrass
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/ground
        rgbGen vertex
    }
}

textures/yavin/ground_grasssprite_Phong_vertex
{
	q3map_shadeangle	120
	qer_editorimage	textures/yavin/ground
	q3map_material	ShortGrass
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
	cull	twosided
    {
        map textures/yavin/ground
        rgbGen vertex
    }
    {
        clampmap gfx/sprites/y_grass_tall
            surfaceSprites vertical 24 24 42 500
//          ssFademax 1500
//          ssFadescale 1
            ssVariance 1 2
            ssWind 0.5
        alphaFunc GE192
        depthWrite
        rgbGen vertex
    }
}


// LIGHTMAPPED PHONG SHADERS

textures/yavin/dugdirt_Phong
{
	q3map_shadeangle	60
	qer_editorimage	textures/yavin/dugdirt
	q3map_material	Dirt
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/yavin/dugdirt
        rgbGen vertex
    }
}

textures/yavin/ground_Phong
{
// q3map_nolightmap

// q3map_onlyvertexlighting

	q3map_shadeangle	60
	qer_editorimage	textures/yavin/ground
	q3map_material	ShortGrass
	q3map_nonplanar
	q3map_splotchfix
    {
// rgbGen vertex

        map textures/yavin/ground
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

textures/yavin/ground_grasssprite_Phong
{
// q3map_nolightmap

// q3map_onlyvertexlighting

	q3map_shadeangle	60
	qer_editorimage	textures/yavin/ground
	q3map_material	ShortGrass
	q3map_nonplanar
	q3map_splotchfix
	cull	twosided
    {
// rgbGen vertex

        map textures/yavin/ground
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map gfx/sprites/y_grass_tall
            surfaceSprites vertical 24 24 42 500
            ssFademax 1500
            ssFadescale 1
            ssVariance 1 2
            ssWind 0.5
        alphaFunc GE192
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

textures/yavin/mud_sprites_Phong
{
	q3map_shadeangle	60
	qer_editorimage	textures/yavin/dugdirt
	q3map_material	Mud
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
	cull	twosided
    {
        map textures/yavin/dugdirt
        rgbGen vertex
    }
    {
        map gfx/sprites/grass_cattail
            surfaceSprites vertical 24 36 75 500
            ssFademax 1500
            ssFadescale 1
            ssVariance 1 2
            ssWind 0.5
        alphaFunc GE192
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

textures/yavin/supports_light
{
	qer_editorimage	textures/yavin/supports
    {
        map textures/yavin/supports
    }
    {
        map textures/yavin/light
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/yavin/supports
{
	qer_editorimage	textures/yavin/supports
    {
        map $lightmap
    }
    {
        map textures/yavin/supports
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/yavin/tree_leaves
{
// q3map_alphashadow

	qer_editorimage	textures/yavin/tree_leaves
	surfaceparm	noimpact
	surfaceparm	nomarks
	surfaceparm	trans
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
	cull	twosided
    {
        map textures/yavin/tree_leaves
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        depthWrite
        rgbGen vertex
    }
}

textures/yavin/ground_plants
{
// q3map_alphashadow

	qer_editorimage	textures/yavin/groundplants
	surfaceparm	noimpact
	surfaceparm	nomarks
	surfaceparm	trans
	polygonOffset
	q3map_nolightmap
	q3map_alphashadow
	q3map_onlyvertexlighting
    {
        map textures/yavin/groundplants
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        rgbGen vertex
    }
    {
        map textures/yavin/groundplants
        blendFunc GL_SRC_ALPHA GL_ONE
        detail
        alphaGen lightingSpecular
    }
}

textures/yavin/obsidian_templebasic2
{
	qer_editorimage	textures/yavin/obsidian_templebasic2
	q3map_nolightmap
    {
        map textures/yavin/obsidian_templebasic2
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
}

textures/yavin/obsidian_templebasic
{
	qer_editorimage	textures/yavin/obsidian_templebasic
	q3map_nolightmap
    {
        map textures/yavin/obsidian_templebasic
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
}

textures/yavin/obsidian_templebasic_trim
{
	qer_editorimage	textures/yavin/obsidian_templebasic_trim
	q3map_nolightmap
    {
        map textures/yavin/obsidian_templebasic_trim
        rgbGen vertex
    }
    {
        map textures/byss/env_large_floor2
        blendFunc GL_SRC_ALPHA GL_ONE
        rgbGen identity
        alphaGen const 0.25
        tcGen environment
    }
}

textures/rift/rock_color_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/rift/rock_color
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/rift/rock_color
        rgbGen vertex
    }
}

textures/bounty/basic1_dark_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/bounty/basic1_dark
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/bounty/basic1_dark
        rgbGen vertex
    }
}

textures/bounty/floor1_vertex
{
// q3map_shadeangle	120

	qer_editorimage	textures/bounty/floor1
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/bounty/floor1
        rgbGen vertex
    }
}

textures/yavin/map
{
	qer_trans	0.5
	surfaceparm	forcefield
	surfaceparm	trans
	q3map_nolightmap
    {
        map textures/yavin/map
        blendFunc GL_ONE GL_ONE
    }
}

textures/yavin/slipdirt
{
	qer_editorimage	textures/yavin/dugdirt
	surfaceparm	slick
	surfaceparm	nodamage
    {
        map $lightmap
    }
    {
        map textures/yavin/dugdirt
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/yavin/coolant_test
{
	qer_editorimage	textures/kejim/coolant
	q3map_tesssize	128
	surfaceparm	nomarks
	surfaceparm	nonsolid
	surfaceparm	nonopaque
	surfaceparm	water
	surfaceparm	trans
	q3map_material	Water
	q3map_nolightmap
	q3map_onlyvertexlighting
	q3map_novertexshadows
	sort	seeThrough
	deformvertexes	wave	100 sin 0 1 0 1
    {
        map textures/kejim/coolant
        blendFunc GL_ZERO GL_SRC_COLOR
        tcMod scroll 0.1 0.1
        tcMod turb 1 0.3 1 0.1
    }
}