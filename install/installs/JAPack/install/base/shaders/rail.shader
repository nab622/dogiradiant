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

textures/rail/windows
{
	q3map_nolightmap
    {
        map textures/rail/windows
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen vertex
    }
    {
        map textures/rail/windows_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/windows2
{
	q3map_nolightmap
    {
        map textures/rail/windows2
        blendFunc GL_DST_COLOR GL_ZERO
        rgbGen vertex
    }
    {
        map textures/rail/windows2_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 1 0 0.5
    }
    {
        map textures/rail/windows2_glowb
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 0 1 0 0.2
    }
}

textures/rail/windows3
{
	q3map_nolightmap
    {
        map textures/rail/windows3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/windows3_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave inversesawtooth 0 1 0 0.6
    }
    {
        map textures/rail/windows3_glowb
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 1 0 0.2
    }
}

textures/rail/windows_b
{
	qer_editorimage	textures/rail/windows
	q3map_nolightmap
    {
        map textures/rail/windows_b
        rgbGen identity
    }
    {
        map textures/rail/windows_glowb
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/gripper_exhaust
{
	qer_editorimage	textures/rail/gripper_exhaust
    {
        map $lightmap
    }
    {
        map textures/rail/gripper_exhaust
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/gripper_exhaust_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave inversesawtooth 0 2 0 2
    }
}

textures/rail/rail_tracklight
{
    {
        map $lightmap
    }
    {
        map textures/rail/rail_tracklight
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/rail_tracklight_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/gripper
{
	q3map_nolightmap
    {
        map textures/rail/gripper
        rgbGen vertex
    }
    {
        map textures/rail/gripper_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0.5 0.3 0.3 44
    }
    {
        map textures/rail/gripper_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/rail_console
{
    {
        map $lightmap
    }
    {
        map textures/rail/rail_console
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/rail_console_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 0.5
    }
    {
        map textures/rail/rail_console_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/rail_console2
{
    {
        map $lightmap
    }
    {
        map textures/rail/rail_console2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/rail_console2_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 0 1 0 0.5
    }
}

textures/rail/rail_console_large
{
    {
        map $lightmap
    }
    {
        map textures/rail/rail_console_large
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/rail_console_large_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave inversesawtooth 0 1 0 4
    }
}

textures/rail/thinlight
{
	q3map_nolightmap
    {
        map textures/rail/thinlight_glow1
        blendFunc GL_ONE GL_SRC_COLOR
        glow
    }
    {
        map textures/rail/thinlight_glow1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0 1 0 10
    }
    {
        map textures/rail/thinlight_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave noise 0 1 0 8
    }
}

textures/rail/windows4
{
	q3map_nolightmap
    {
        map textures/rail/windows4
        rgbGen identity
    }
    {
        map textures/rail/windows4_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sawtooth 0 1 0 0.5
    }
    {
        map textures/rail/windows4_glowb
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave inversesawtooth 0 1 0 0.5
    }
}

textures/rail/neon_ad_1
{
	q3map_nolightmap
    {
        animMap 1 textures/rail/neon_ad_1 textures/rail/neon_ad_2 textures/rail/neon_ad_3 textures/rail/neon_ad_4 textures/rail/neon_ad_5 textures/rail/neon_ad_6 
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/rail/railtrim4
{
	qer_editorimage	textures/rail/railtrim4
    {
        map $lightmap
    }
    {
        map textures/rail/railtrim4
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/railtrim4_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/rail/runner1
{
	qer_editorimage	textures/rail/gripper_exhaust
    {
        map $lightmap
    }
    {
        map textures/rail/runner1
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/runner1_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/rail/rail_light_inside
{
	qer_editorimage	textures/rail/gripper_exhaust
    {
        map $lightmap
    }
    {
        map textures/rail/rail_light_inside
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/rail_light_inside_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen const ( 0.700000 0.700000 0.700000 )
    }
    {
        map textures/rail/rail_light_inside_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.7 0 0.7
    }
}

textures/rail/vent_panel
{
    {
        map $lightmap
    }
    {
        map textures/rail/vent_panel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/vent_panel_glow
        blendFunc GL_ONE GL_ONE
    }
}

textures/rail/tanksymbol1
{
	surfaceparm	nonsolid
	q3map_nolightmap
    {
        map textures/rail/tanksymbol1
        blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
    }
}

textures/rail/tanksymbol2
{
	qer_editorimage	textures/rail/tanksymbol1
	surfaceparm	nonsolid
	q3map_nolightmap
    {
        map textures/rail/tanksymbol2
        blendFunc GL_ONE GL_ONE
    }
}

textures/rail/tanksymbol3
{
	qer_editorimage	textures/rail/tanksymbol1
	surfaceparm	nonsolid
	q3map_nolightmap
    {
        map textures/rail/tanksymbol3
        blendFunc GL_ONE GL_ONE
        rgbGen identity
    }
}

textures/rail/windows_new
{
	qer_editorimage	textures/rail/windows
	q3map_nolightmap
    {
        map textures/rail/windows
        rgbGen identity
    }
    {
        map textures/rail/windows_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/rail/windows2_new
{
	qer_editorimage	textures/rail/windows2
	q3map_nolightmap
    {
        map textures/rail/windows2
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map textures/rail/windows2_glow
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scale 0.5 0.5
    }
}

textures/rail/windows3_new
{
	qer_editorimage	textures/rail/windows3
	q3map_nolightmap
    {
        map textures/rail/windows3
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map textures/rail/windows3_glow
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scale 0.5 0.5
    }
}

textures/rail/windows4_new
{
	qer_editorimage	textures/rail/windows4
	q3map_nolightmap
    {
        map textures/rail/windows4
        rgbGen identity
        tcMod scale 0.5 0.5
    }
    {
        map textures/rail/windows4_glowb
        blendFunc GL_ONE GL_ONE
        glow
        tcMod scale 0.5 0.5
    }
}

textures/rail/rail_console4
{
	qer_editorimage	textures/rail/rail_console4
    {
        map $lightmap
    }
    {
        map textures/rail/rail_console4
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/rail_console4_glow1
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave square 0 1 0 0.5
    }
    {
        map textures/rail/rail_console4_glow2
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 1 0 0.25
    }
}

textures/rail/fusebox2
{
    {
        map $lightmap
    }
    {
        map textures/rail/fusebox2
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/fusebox2_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/fusebox2_dam
{
    {
        map $lightmap
    }
    {
        map textures/rail/fusebox2_dam
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/fusebox2_dam_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave random 0 0.85 0 1
    }
}

textures/rail/tunnel_lights
{
	qer_editorimage	textures/rail/tunnel_lights
	q3map_nolightmap
    {
        map textures/rail/tunnel_lights
        rgbGen identity
    }
    {
        map textures/rail/tunnel_lights_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/brasspanel
{
	qer_editorimage	textures/rail/brasspanel
    {
        map $lightmap
    }
    {
        map textures/rail/brasspanel
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/brasspanel_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/railing3
{
	qer_editorimage	textures/rail/railing3
    {
        map $lightmap
    }
    {
        map textures/rail/railing3
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/railing3_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen identity
    }
}

textures/rail/blue_siderail
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/blue_siderail
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/base_bronze_dark
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/base_bronze_dark
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/blue_base
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/blue_base
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/base_bronze
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/base_bronze
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/caboose
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/caboose
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_floor2
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_floor2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_floor
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_floor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_pipe2
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_pipe2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_pipe
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_pipe
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/railbase2
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/railbase2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/railbase1
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/railbase1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_walkway
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_walkway
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/roundplate4
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/roundplate4
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/roundplate2
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/roundplate2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/roundplate3
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/roundplate3
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/roundplate1
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/roundplate1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/trainbasic2
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/trainbasic2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/trainbasic1
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/trainbasic1
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/trainfloor
{
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/trainfloor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/railtrim4_blue
{
	qer_editorimage	textures/rail/railtrim4
    {
        map $lightmap
    }
    {
        map textures/rail/railtrim4
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/railtrim4_glow_old
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/rail/rail_console5
{
	q3map_nolightmap
    {
        map textures/rail/rail_console5
    }
    {
        map textures/rail/rail_console5_glow1
        blendFunc GL_ONE GL_ONE
        rgbGen wave sawtooth 0 1 0 0.85
    }
    {
        map textures/rail/rail_console5_glow2
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 1 0 1
    }
    {
        map textures/rail/rail_console5_glow3
        blendFunc GL_ONE GL_ONE
        rgbGen wave inversesawtooth 0 1 0 1
    }
}

textures/rail/railing2_noclip
{
	qer_editorimage	textures/rail/railing2
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/railing2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/roundplate2_noclip
{
	qer_editorimage	textures/rail/roundplate2
	surfaceparm	nonsolid
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/roundplate2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/roundplate4_noclip
{
	qer_editorimage	textures/rail/roundplate4
	surfaceparm	nonsolid
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/roundplate4
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_floor_noclip
{
	qer_editorimage	textures/rail/rail_floor
	surfaceparm	nonsolid
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_floor
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/base_bronze_dark_noclip
{
	qer_editorimage	textures/rail/base_bronze_dark
	surfaceparm	nonsolid
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/base_bronze_dark
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/hull_noclip
{
	qer_editorimage	textures/rail/hull
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/hull
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/hull2_noclip
{
	qer_editorimage	textures/rail/hull2
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/hull2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/hull3_noclip
{
	qer_editorimage	textures/rail/hull3
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/hull3
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/pipe_noclip
{
	qer_editorimage	textures/rail/pipe
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/pipe
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/pipes_noclip
{
	qer_editorimage	textures/rail/pipes
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/pipes
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_basic_noclip
{
	qer_editorimage	textures/rail/rail_basic
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/rail_basic
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_light_inside_noclip
{
	qer_editorimage	textures/rail/gripper_exhaust
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/rail_light_inside
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/rail_light_inside_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen const ( 0.700000 0.700000 0.700000 )
    }
    {
        map textures/rail/rail_light_inside_glow
        blendFunc GL_ONE GL_ONE
        glow
        rgbGen wave sin 0 0.7 0 0.7
    }
}

textures/rail/rail_pipe_noclip
{
	qer_editorimage	textures/rail/rail_pipe
	surfaceparm	nonsolid
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_pipe
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/rail_pipe2_noclip
{
	qer_editorimage	textures/rail/rail_pipe2
	surfaceparm	nonsolid
	q3map_material	HollowMetal
    {
        map $lightmap
    }
    {
        map textures/rail/rail_pipe2
        blendFunc GL_DST_COLOR GL_ZERO
    }
}

textures/rail/railtrim4_noclip
{
	qer_editorimage	textures/rail/railtrim4
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/railtrim4
        blendFunc GL_DST_COLOR GL_ZERO
    }
    {
        map textures/rail/railtrim4_glow
        blendFunc GL_ONE GL_ONE
        glow
    }
}

textures/rail/tanker_noclip
{
	qer_editorimage	textures/rail/tanker
	surfaceparm	nonsolid
    {
        map $lightmap
    }
    {
        map textures/rail/tanker
        blendFunc GL_DST_COLOR GL_ZERO
    }
}