// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Helpers_DrawDialogueBox(){

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
	
	// Set draw colour, font and alpha (transparency)
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_font(global.CurrentDialogueFont);
	// Draw the text
	draw_text_transformed(global.UniversalScale*DialogueX, global.UniversalScale*DialogueY + global.TranslationFontExtraPadding, CurrentLineTextToRender, global.UniversalScale*global.TranslationFontScale,  global.UniversalScale*global.TranslationFontScale, 0);
	
	// Draw the nametag on the top of the text box
	if(DialogueItemActorNametag != ""){
		draw_sprite_ext(asset_get_index(DialogueItemActorNametag), DialogueItemActorNametagIndex, global.UniversalScale*8, global.UniversalScale*124, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	}
	
	// Finally add next sprite
	if(AwaitingUserInput == true){
		draw_sprite_ext(spr_Next, NextIconFrame, global.UniversalScale*304, global.UniversalScale*207, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	}
	
	PriorTextToRender = CurrentLineTextToRender;
}