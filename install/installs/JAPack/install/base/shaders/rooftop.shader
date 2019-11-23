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

textures/rooftop/window_building_b
{
	qer_editorimage	textures/rooftop/window_building_b
    {
        map $lightmap
    }
    {
        map textures/rooftop/window_building_b
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/window_building_glow_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/lightpost
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/lightpost
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/lightpost_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/lightpostsurfacelight
{
	q3map_lightimage	textures/rooftop/lightpost
	qer_editorimage	textures/rooftop/lightpost
	q3map_surfacelight	2000
	q3map_lightsubdivide	512
	surfaceparm	nomarks
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/rooftop/lightpost
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/rooftop/lightpost_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/light_trim
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/light_trim
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/light_trim_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/light_trim2
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/light_trim2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/light_trim2_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.35 0 0.6
    }
}

textures/rooftop/light
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/light_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/building_ext3
{
	q3map_nolightmap
    {
        map textures/rooftop/building_ext3
        rgbGen identity
    }
    {
        map textures/rooftop/building_ext3_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map textures/rooftop/building_ext3_glwg
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.35 0 0.6
    }
    {
        map textures/rooftop/building_ext3_glwr
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0.5 0.35 0 0.6
    }
}

textures/rooftop/building_ext2test
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext2test
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/rooftop/building_ext2test_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map textures/rooftop/building_ext2test_glw2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/building_ext4
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext4
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/building_ext4_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/window_building_trim
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/window_building_trim
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/window_building_trim_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/building_ext1
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/building_ext1_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/window2
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/window2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/window2_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/light2
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/light2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/light2_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/groundlight
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/groundlight
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/groundlight_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/light_vert
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/light_vert
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/light_vert_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/roundplate1
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/roundplate1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/roundplate1_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/building_ext5
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext5
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/building_ext5_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
    {
        map textures/rooftop/building_ext5trim_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/building_ext6
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext6
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/building_ext6_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/traffica
{
	q3map_nolightmap
    {
        map textures/rooftop/traffica
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll -0.75 0
    }
    {
        map textures/rooftop/traffica_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scroll -0.75 0
    }
    {
        map textures/rooftop/trafficb
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll -0.65 0
    }
    {
        map textures/rooftop/trafficb_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scroll -0.65 0
    }
    {
        map textures/rooftop/trafficc
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll -1 0
    }
    {
        map textures/rooftop/trafficc_glw
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scroll -1 0
    }
}

textures/rooftop/trafficd
{
	q3map_nolightmap
    {
        map textures/rooftop/trafficd
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll -1.2 0
    }
    {
        map textures/rooftop/trafficd_glw
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scroll -1.2 0
    }
    {
        map textures/rooftop/traffice
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll -0.95 0
    }
    {
        map textures/rooftop/traffice_glw
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scroll -0.95 0
    }
    {
        map textures/rooftop/trafficf
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
        tcMod scroll -0.75 0
    }
    {
        map textures/rooftop/trafficf_glw
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scroll -0.75 0
    }
}

textures/rooftop/screen1
{
	q3map_nolightmap
    {
        map textures/rooftop/screen1
        blendFunc GL_DST_COLOR GL_ZERO
        depthWrite
    }
    {
        map textures/rooftop/screen1_txt
        blendFunc GL_ONE GL_ONE
        depthWrite
        rgbGen identity
    }
    {
        clampmap textures/rooftop/screen1_ring
        blendFunc GL_ONE GL_ONE
        depthWrite
        glow
        rgbGen identity
        tcMod scale 2 1
        tcMod rotate -10
    }
}

textures/rooftop/screen2
{
	q3map_nolightmap
    {
        map textures/rooftop/screen2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/screen2_glw
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
    {
        clampmap textures/rooftop/screen2_ring
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 2 1
        tcMod rotate 10
    }
}

textures/rooftop/building_ext5b
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext5b
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/building_ext5b_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/building_ext2test_new
{
	qer_editorimage	textures/rooftop/building_ext2test_new
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext2test_new
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map textures/rooftop/building_ext2test_glw_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 0.5 0.5
        tcMod entityTranslate
    }
    {
        map textures/rooftop/building_ext2test_glw2_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 0.5 0.5
    }
}

textures/rooftop/building_ext3_new
{
	qer_editorimage	textures/rooftop/building_ext3_new
	q3map_nolightmap
    {
        map textures/rooftop/building_ext3_new
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map textures/rooftop/building_ext3_glw_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 0.5 0.5
    }
}

textures/rooftop/building_ext4_new
{
	qer_editorimage	textures/rooftop/building_ext4_new
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext4_new
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scale 0.5 0.5
    }
    {
        map textures/rooftop/building_ext4_glw_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 0.5 0.5
    }
}

textures/rooftop/building_ext6_new
{
	qer_editorimage	textures/rooftop/building_ext6_new
    {
        map $lightmap
    }
    {
        map textures/rooftop/building_ext6_new
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scale 0.5 0.5
    }
    {
        map textures/rooftop/building_ext6_glw_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map textures/rooftop/building_ext6_glw2_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 0.5 0.5
    }
}

textures/rooftop/window_building_new
{
	qer_editorimage	textures/rooftop/window_building_b
    {
        map $lightmap
    }
    {
        map textures/rooftop/window_building_new
        blendFunc GL_DST_COLOR GL_ZERO
        tcMod scale 0.5 0.5
    }
    {
        map textures/rooftop/window_building_glow_new
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
        tcMod scale 0.5 0.5
    }
}

textures/rooftop/neon_circle
{
	q3map_nolightmap
	q3map_novertexshadows
    {
        map textures/rooftop/neon_circle
        glow
    }
}

textures/rooftop/windowplate
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/windowplate
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/windowplate_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/roof_basewall
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/roof_basewall
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/roof_basewall_glow
        blendFunc GL_ONE GL_ONE
    }
}

textures/rooftop/rooftop_light
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/rooftop_light
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/rooftop_light_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/windowplate_b
{
	qer_editorimage	textures/rooftop/windowplate_b
    {
        map $lightmap
    }
    {
        map textures/rooftop/windowplate_b
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rooftop/windowplate_b_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rooftop/baseground
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rooftop/baseground
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/landing_pad
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/rooftop/landing_pad
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/office_floor2
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/office_floor2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/office_floor_carpet_trim
{
	q3map_material	Carpet
    {
        map $lightmap
    }
    {
        map textures/rooftop/office_floor_carpet_trim
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/office_floor_carpet2
{
	q3map_material	Carpet
    {
        map $lightmap
    }
    {
        map textures/rooftop/office_floor_carpet2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/office_floor1
{
    {
        map $lightmap
    }
    {
        map textures/rooftop/office_floor1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/office_floor_carpet
{
	q3map_material	Carpet
    {
        map $lightmap
    }
    {
        map textures/rooftop/office_floor_carpet
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/walkway
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/rooftop/walkway
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/walkway_civilian
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/rooftop/walkway_civilian
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/window_building_ground3
{
	q3map_material	SolidMetal
    {
        map $lightmap
    }
    {
        map textures/rooftop/window_building_ground3
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rooftop/light_hangar_surfacelight
{
	q3map_lightimage	textures/imperial/light_hanger_glw
	qer_editorimage	textures/imperial/light_hanger
	q3map_surfacelight	8000
	q3map_lightsubdivide	2048
	surfaceparm	nomarks
    {
        map $lightmap
        rgbGen identity
    }
    {
        map textures/imperial/light_hanger
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen identity
    }
    {
        map textures/imperial/light_hanger_glw
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}