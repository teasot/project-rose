// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function InitialiseGlobals(){
	// Is debug
	global.Debug = true;
	
	// The scaling number. Set to 2 by default for double resolution
	global.UniversalScreenWidth = 640;
	global.UniversalScreenHeight = 448;
	global.UniversalScale = 2;
	
	// The language.
	global.LanguageKey = "EN";
	
	global.ScenesJsonPath = working_directory + "scenes.json";
	global.ActorsJsonPath = working_directory + "actors.json";
	
	global.TranslationsJsonPath = working_directory + "translations.json";
	global.TranslationFont = ""; // To be loaded
	global.TranslationFontScale = 1;
	global.TranslationFontExtraPadding = 0;
	
	global.CurrentDialogueFont = noone; // To be loaded
	// Used for first "step", otherwise always false
	global.LoadNextScene = true;
	
	// Now initialise game state
	global.Scene_NextSceneId = "Opening";
	if(global.Debug){
		global.Scene_NextSceneId = "01_Family_Opening";
	}
	// Load JSON
	LoadJson();
	
}