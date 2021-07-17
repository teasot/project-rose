// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_PlayMovie(){

		show_debug_message("Playing movie");
	instance_create_layer(0,0, "Instances", obj_play_movie);
}