// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Game_Step(){
	
	if(global.LoadNextScene == true)
	{
		show_debug_message("Step");
		LoadScene(global.Scene_NextSceneId);
		if(global.Scene_Type == "Movie"){
			Game_PlayMovie();
		}
		else if(global.Scene_Type == "Dialogue"){
			Game_ShowDialogue();
		}
		else if(global.Scene_Type == "Dialogue_Pan"){
			Game_ShowPanScene();
		}
		global.LoadNextScene = false;
	}
}