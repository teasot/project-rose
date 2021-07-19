// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Helpers_DrawOptionsBox(){
	// First, draw the dialogue box
	Helpers_DrawDialogueBox(DialogueX, DialogueY, "", "", 0, false, 0)
	
	// Draw the "Select" header in the top middle of the spr_TextBox sprite
	draw_sprite_ext(spr_SelectHeader, 0, global.UniversalScale*96, global.UniversalScale*132, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
}