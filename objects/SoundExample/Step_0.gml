/// @description Insert description here
// You can write your code in this editor
// AUDIO TEST
if(AudioIsPlaying && !audio_is_playing(snd)){
	AudioIsPlaying = false;
	 audio_destroy_stream(snd);
}
// END
