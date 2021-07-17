// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitialiseGlobals(){
	global.UniversalScale = 2;
	
	//window_set_size(global.UniversalScale*320, global.UniversalScale*224) 
	
	global.ScenesJsonPath = "scenes.json";
	global.ActorsJsonPath = "actors.json";
	// Used for first "step", otherwise always false
	global.LoadNextScene = true;
	
	// Now initialise game state
	global.Scene_NextSceneId = "Opening";
	// Load JSON
	LoadJson();
	
}