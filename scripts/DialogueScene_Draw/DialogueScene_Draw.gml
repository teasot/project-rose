// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScene_Draw()
{
	// First draw the 
	draw_sprite_ext(asset_get_index(global.Scene_BG_Image), 0, 0, 0, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	
	// Then draw the text semit transparent rectangle
	var BoxX = global.UniversalScale*8;
	var BoxY = global.UniversalScale*154;
	var BoxHeight = global.UniversalScale*55;
	var BoxWidth = global.UniversalScale*300;
	
	// Set draw colour and alpha (transparency)
	draw_set_colour(c_black);
	draw_set_alpha(0.5);
	// Draw the rectangle
	draw_rectangle(BoxX, BoxY, BoxX + BoxWidth,BoxY+BoxHeight, false);
	
	// Draw the fancy border on top of that
	draw_sprite_ext(spr_TextBox, 0, global.UniversalScale*4, global.UniversalScale*148, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	
	// Set draw colour and alpha (transparency)
	draw_set_colour(c_white);
	draw_set_alpha(1);
	// Draw the text
	draw_text_transformed(global.UniversalScale*DialogueX, global.UniversalScale*DialogueY, CurrentLineTextToRender, global.UniversalScale*0.2,global.UniversalScale*0.2, 0);
	
	// Finally add next sprite
	if(AwaitingUserInput == true){
		draw_sprite_ext(spr_Next, NextIconFrame, global.UniversalScale*304, global.UniversalScale*207, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	}
	
	PriorTextToRender = CurrentLineTextToRender;
}