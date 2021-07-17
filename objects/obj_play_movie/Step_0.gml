/// @description Update the frame buffer

if (video_exists(v)) {
  if (video_is_playing(v)) {
    video_grab_frame_buffer(v, buffer_get_address(buff));
    is_playing = true; // video takes roughly 1 step to load before playing
  } else if (is_playing && !video_is_paused(v)) {
    instance_destroy();
  }
} else if (is_playing) {
  instance_destroy();
}