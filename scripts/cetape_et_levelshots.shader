levelshots/cetape_et_cc_automap
{
  nopicmip
  nocompress
  nomipmaps
  {	 
    clampmap levelshots/cetape_et_tracemap.tga
    depthFunc equal
    rgbGen identity
  }	 
}
levelshots/cetape_et_cc_trans
{
  nopicmip
  nocompress
  nomipmaps
  {
  clampmap levelshots/cetape_et_tracemap.tga
  blendfunc blend
  rgbGen identity
  alphaGen vertex
  }	 
}