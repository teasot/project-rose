/// @description Don't forget to *always* free buffers and surfaces.

if (video_exists(v)) {

  buffer_delete(buff);
  surface_free(surf);

  video_stop(v);
  video_delete(v);
  
  // We want to do the next "thing"
  global.LoadNextScene = true;

}