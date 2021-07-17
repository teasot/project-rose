// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitialiseGlobals(){
	// The scaling number. Set to 2 by default for double resolution
	global.UniversalScale = 2;
	
	// The language.
	global.Language = "TEST";
	
	global.ScenesJsonPath = working_directory + "scenes.json";
	global.ActorsJsonPath = working_directory + "actors.json";
	
	// Used for first "step", otherwise always false
	global.LoadNextScene = true;
	
	// Now initialise game state
	global.Scene_NextSceneId = "Opening";
	// Load JSON
	LoadJson();
	
}