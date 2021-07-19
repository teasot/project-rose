// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScene_Draw()
{
	// First draw the 
	draw_sprite_ext(asset_get_index(global.Scene_BG_Image), 0, 0, 0, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	Helpers_DrawDialogueBox(DialogueX, DialogueY, CurrentLineTextToRender, DialogueItemActorNametag, DialogueItemActorNametagIndex, AwaitingUserInput, NextIconFrame);
}