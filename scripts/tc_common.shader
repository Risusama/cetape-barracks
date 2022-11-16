// Example sky_portal texture
textures/tc_common/sky_portal
{

      surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm noimpact
	q3map_sun .95 .95 1 55 65 60
	q3map_surfacelight 100
	qer_editorimage textures/common/sky_portal.tga
	{
	map textures/common/sky_portal.tga
	blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA
	depthWrite
	}
}
// Special shader for water edges

textures/tc_common/h20nodraw
{
	surfaceparm nodraw
	qer_trans 0.40
	surfaceparm nonsolid
	surfaceparm trans
	surfaceparm nomarks
	surfaceparm water
	qer_editorimage textures/common/h20nodraw.tga
}

// -----------------------------------------------
// truecombat ladder shader
// -----------------------------------------------

textures/tc_common/ladder
{
	qer_editorimage textures/tc_sfx/ladder.tga
	qer_trans 0.40
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nodraw
	surfaceparm nonsolid
  	surfaceparm playerclip
	surfaceparm noimpact
	surfaceparm ladder
}

textures/tc_common/ladder_step
{
	qer_editorimage textures/tc_sfx/ladder_step.tga
	surfaceparm alphaShadow
	surfaceparm noimpact
	surfaceparm playerclip
	surfaceparm nonsolid
	cull none
	{
		map textures/tc_sfx/ladder_step.tga
		alphaFunc GT0
		rgbgen identity  
		depthWrite
	}
	{
		map $lightmap
		rgbGen identity
		blendFunc GL_DST_COLOR GL_ZERO
		depthFunc equal
	}
}

// -----------------------------------------------
// fence shaders
// -----------------------------------------------

textures/tc_common/fence
{
	qer_editorimage textures/base_trim/proto_fence.tga
	surfaceparm trans
	surfaceparm nonsolid
	surfaceparm nomarks
	surfaceparm playerclip
	surfaceparm fence
	cull none
	nopicmip        
	{
		map textures/base_trim/proto_fence.tga
		tcmod scale 4 4
		blendfunc gl_one gl_zero
		alphafunc ge128
		depthwrite
		rgbgen identity
	}
	{
		map $lightmap
		rgbgen identity
		blendfunc gl_dst_color gl_zero
		depthfunc equal
	}
}
textures/tc_common/fenceclip
{	
	qer_trans 0.40
	qer_editorimage textures/tc_sfx/fenceclip.tga
	surfaceparm nolightmap
	surfaceparm nomarks
	surfaceparm nodraw
	surfaceparm nonsolid
	surfaceparm playerclip
	surfaceparm noimpact
	surfaceparm fence
}