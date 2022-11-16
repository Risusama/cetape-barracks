textures/gamejunky_glass/Glass
{
	qer_trans 0.2
	qer_editorimage textures/gamejunky_glass/glass.tga
	surfaceparm trans
	surfaceparm nolightmap
	surfaceparm slick
	surfaceparm glass       	
	{
		map textures/gamejunky_glass/glass.tga
		blendfunc gl_src_alpha gl_one_minus_src_alpha 
		rgbgen identity
	}
}


textures/gamejunky_glass/HlgnBlb
{
	qer_editorimage textures/gamejunky_glass/hlgnblb.tga
	surfaceparm nolightmap
	surfaceparm slick
	surfaceparm glass       	
	{
		map textures/gamejunky_glass/hlgnblb.tga
		blendfunc gl_src_alpha gl_one_minus_src_alpha 
		rgbgen identity
	}
}