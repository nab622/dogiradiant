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
 
textures/korriban/kor1_breakablechainclip
{
// surfaceparm	trans

	qer_editorimage	textures/system/physics_clip
	qer_trans	0.3
	surfaceparm	nodraw
	q3map_nolightmap
}

textures/korriban/k_basic_statue
{
	qer_editorimage	textures/korriban/k_basic
	q3map_nolightmap
    {
        map textures/korriban/os_rock3
        rgbGen vertex
        tcMod scale 6 6
    }
    {
        map textures/korriban/marble_pass
        blendFunc GL_ZERO GL_SRC_COLOR
        rgbGen identity
        tcMod scale 2 2
    }
    {
        map models/map_objects/korriban/ragnos_statue
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
    }
}

textures/korriban/sand_phong1
{
	q3map_shadeangle	179
	qer_editorimage	textures/korriban/os_sand
	q3map_nonplanar
	q3map_splotchfix
    {
        map textures/korriban/os_sand
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

textures/korriban/cracktext2
{
	qer_editorimage	textures/korriban/cracktext2
	polygonOffset
	q3map_nolightmap
    {
        map textures/korriban/cracktext2
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

textures/korriban/os_outsidebaseb
{
	qer_editorimage	textures/korriban/os_outsidebaseb
    {
        map textures/korriban/os_outsidebaseb
        tcMod scale 4 4
    }
    {
        map textures/korriban/rockdetail
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/korriban/rockdetail
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scale 0.5 0.5
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/os_outsidebasef
{
	qer_editorimage	textures/korriban/os_outsidebasef
    {
        map textures/korriban/os_outsidebasef
        tcMod scale 4 4
    }
    {
        map textures/korriban/rockdetail
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/os_rockb
{
	qer_editorimage	textures/korriban/os_outsidebasef
    {
        map textures/korriban/os_rockb
        tcMod scale 4 4
    }
    {
        map textures/korriban/rockdetail2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/os_sand
{
	qer_editorimage	textures/korriban/os_outsidebasef
    {
        map textures/korriban/os_sand
        tcMod scale 4 4
    }
    {
        map textures/korriban/rockdetail3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/chain
{
	cull	twosided
	deformvertexes	autoSprite2	
    {
        map textures/korriban/chain
        alphaFunc GE128
        depthWrite
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}

textures/korriban/chain_deform
{
// deformvertexes	autoSprite2

	qer_editorimage	textures/korriban/chain
	q3map_tesssize	16
	cull	twosided
	deformvertexes	wave	50 sin 0 1 0.5 0.25
    {
        map textures/korriban/chain
        alphaFunc GE128
        depthWrite
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}

textures/korriban/chain_deform_autosprite
{
	qer_editorimage	textures/korriban/chain
	q3map_tesssize	16
	cull	twosided
	deformvertexes	autoSprite2	
    {
        map textures/korriban/chain
        alphaFunc GE128
        depthWrite
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        depthFunc equal
    }
}

textures/korriban/ragnos_statue_body
{
	qer_editorimage	textures/korriban/k_basic
	q3map_nolightmap
    {
        map textures/korriban/os_rock3
        rgbGen vertex
        tcMod scale 6 6
    }
    {
        map textures/korriban/marble_pass
        blendFunc GL_ZERO GL_SRC_COLOR
        rgbGen identity
        tcMod scale 2 2
    }
    {
        map models/map_objects/korriban/ragnos_statue_body
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
    }
}

textures/korriban/ragnos_statue_head
{
	qer_editorimage	textures/korriban/k_basic
	q3map_nolightmap
    {
        map textures/korriban/os_rock3
        rgbGen vertex
        tcMod scale 6 6
    }
    {
        map textures/korriban/marble_pass
        blendFunc GL_ZERO GL_SRC_COLOR
        rgbGen identity
        tcMod scale 2 2
    }
    {
        map models/map_objects/korriban/ragnos_statue_head
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
    }
}

textures/korriban/ragnos_statue_hands
{
	qer_editorimage	textures/korriban/k_basic
	q3map_nolightmap
    {
        map textures/korriban/os_rock3
        rgbGen vertex
        tcMod scale 6 6
    }
    {
        map textures/korriban/marble_pass
        blendFunc GL_ZERO GL_SRC_COLOR
        rgbGen identity
        tcMod scale 2 2
    }
    {
        map models/map_objects/korriban/ragnos_statue_hands
        blendFunc GL_DST_COLOR GL_SRC_COLOR
        rgbGen identity
    }
}

textures/korriban/korriban1_phong
{
	q3map_shadeangle	150
	qer_editorimage	textures/h_evil/evil_rock12
	q3map_lightsubdivide	32
	q3map_nonplanar
	q3map_splotchfix
    {
        map textures/h_evil/evil_rock12
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map textures/h_evil/evil_rock13
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
}

textures/korriban/korriban1_phongdirt
{
	q3map_shadeangle	180
	qer_editorimage	textures/yavin/dugdirt
	q3map_lightsubdivide	32
	q3map_nonplanar
	q3map_splotchfix
    {
        map $lightmap
    }
    {
        map textures/yavin/dugdirt
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/os_outsidebased
{
	qer_editorimage	textures/korriban/os_outsidebased
    {
        map textures/common/etest4
        tcGen environment
    }
    {
        map textures/korriban/os_outsidebased
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/k_wall9b
{
	qer_editorimage	textures/korriban/k_wall9b
    {
        map textures/common/etest4
        tcGen environment
    }
    {
        map textures/korriban/k_wall9b
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/os_basic_pillarb
{
	qer_editorimage	textures/korriban/os_basic_pillarb
    {
        map textures/common/etest4
        tcGen environment
    }
    {
        map textures/korriban/os_basic_pillarb
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/door
{
	qer_editorimage	textures/korriban/door
    {
        map textures/common/etest4
        tcGen environment
    }
    {
        map textures/korriban/door
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/entrance_top
{
	qer_editorimage	textures/korriban/entrance_top
    {
        map textures/common/etest4
        tcGen environment
    }
    {
        map textures/korriban/entrance_top
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
    {
        map $lightmap
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/orn_grate
{
	qer_editorimage	textures/korriban/orn_grate
	cull	twosided
    {
        map textures/korriban/orn_grate
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

textures/korriban/k_floorlava
{
    {
        map $lightmap
    }
    {
        map textures/korriban/k_floorlava
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/korriban/k_floorlava_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/korriban/env_crystal
{
	surfaceparm	nonopaque
	q3map_nolightmap
    {
        map textures/korriban/env_crystal
        blendFunc GL_ONE GL_ONE
        tcGen environment
    }
}

textures/korriban/k_basic
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/korriban/k_basic
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/k_basic2
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/korriban/k_basic2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/k_basic3
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/korriban/k_basic3
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/k_basicfloor
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/korriban/k_basicfloor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/k_basicfloor2
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/korriban/k_basicfloor2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/os_basewalk
{
	q3map_material	Rock
    {
        map $lightmap
    }
    {
        map textures/korriban/os_basewalk
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/korriban/sand_phong1_vertex
{
	q3map_shadeangle	120
	qer_editorimage	textures/korriban/os_sand
	q3map_nolightmap
	q3map_nonplanar
	q3map_splotchfix
	q3map_onlyvertexlighting
    {
        map textures/korriban/os_sand
        rgbGen identity
    }
}