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
	
	// Draw the fancy border on top of that!
	
	PriorTextToRender = CurrentLineTextToRender;
}