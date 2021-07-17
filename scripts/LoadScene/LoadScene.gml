// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function LoadScene(Id){

	show_debug_message("Loading Scene: " + Id);
	show_debug_message(global.ScenesJson);
	global.CurrentSceneObject = ds_map_find_value(global.ScenesJson, Id);
	
	show_debug_message(global.CurrentSceneObject);
	global.Scene_Type = ds_map_find_value(global.CurrentSceneObject, "Type");
	if(global.Scene_Type == "Movie")
	{
		global.Scene_MoviePath = ds_map_find_value(global.CurrentSceneObject, "Movie");
	}
	else if(global.Scene_Type == "Dialogue")
	{
		global.Scene_BG_Music = ds_map_find_value(global.CurrentSceneObject, "BG_Music");
		global.Scene_BG_Music_Loops = ds_map_find_value(global.CurrentSceneObject, "BG_Music_Loops");
		global.Scene_BG_Image = ds_map_find_value(global.CurrentSceneObject, "BG_Image");
		global.Scene_Dialogue_Array = ds_map_find_value(global.CurrentSceneObject, "Dialogue");;
		
	}
	else if(global.Scene_Type == "Dialogue_Pan"){
		global.Scene_BG_Music = ds_map_find_value(global.CurrentSceneObject, "BG_Music");
		global.Scene_BG_Music_Loops = ds_map_find_value(global.CurrentSceneObject, "BG_Music_Loops");
		global.Scene_BG_Image_Top = ds_map_find_value(global.CurrentSceneObject, "BG_Image_Top");
		global.Scene_BG_Image_Bottom = ds_map_find_value(global.CurrentSceneObject, "BG_Image_Bottom");
		global.Scene_Dialogue_Array = ds_map_find_value(global.CurrentSceneObject, "Dialogue");;
		
	}
	global.Scene_Id = Id;
	global.Scene_NextSceneId = ds_map_find_value(global.CurrentSceneObject, "Next_Scene_Id");
	show_debug_message("Scene Loaded: " + Id);
}