/// @description And so it begins

v = -1; is_playing = false;
fname = working_directory + global.Scene_MoviePath + ".webm";

show_debug_message("Playing movie: " + fname)

if (file_exists(fname)) {
  v = video_add(fname);
  video_play(v);
  w = video_get_width(v);
  h = video_get_height(v);

  chan = buffer_sizeof(buffer_u64); // size of one pixel
  buff = buffer_create(chan * w * h, buffer_fixed, chan);
  surf = -1; // surfaces should be created in Draw events only!

  // a hackfix for GM's internal 'used bytes' counter:
  buffer_poke(buff, buffer_get_size(buff) - 1, buffer_u8, 0);
  // just poke 0 at the very end, so we ensure everything is allocated properly.
  // probably not needed since GMS2.3+?
}

// fixes window close button on unix-likes with kwin/kde.
window_set_size(window_get_width(), window_get_height());
//audio_play_sound(Sound1, 1, false);