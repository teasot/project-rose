// "Inherits" DialogueScene - call its functions first
function PanScene_Draw(){
	var RoseFrame = 8;
	// First, draw "top" image
	draw_sprite_ext(asset_get_index(global.Scene_BG_Image_Top), 0, 0, PanPixelsUp - global.UniversalScreenHeight , global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	
	// Then, draw "bottom" image
	draw_sprite_ext(asset_get_index(global.Scene_BG_Image_Bottom), 0, 0, 0 + PanPixelsUp, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	
	// Now draw the border...
	if(global.Show_Roses_And_Border == true){
		// Top
		draw_sprite_ext(PANNING_FRAME_TOP, 0, 0, 0, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
		
		// Left
		draw_sprite_ext(PANNING_FRAME_LEFT, 0, 0, 38*global.UniversalScale, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
		// Right
		draw_sprite_ext(PANNING_FRAME_RIGHT, 0, global.UniversalScreenWidth - 96, 38*global.UniversalScale, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
		
		// Bottom
		draw_sprite_ext(PANNING_FRAME_BOTTOM, 0, 0, 178*global.UniversalScale, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
			
		// Roses
		// Top left
		draw_sprite_ext(
			F_ROSE01, 
			RoseFrame, 
			-8*global.UniversalScale, 
			-17*global.UniversalScale, 
			global.UniversalScale, 
			global.UniversalScale, 
			0, 
			c_white, 
			1
		);
		// Top right
		draw_sprite_ext(
			F_ROSE01,
			RoseFrame + 4,
			global.UniversalScreenWidth + 8*global.UniversalScale, 
			(-17 + 88)*global.UniversalScale,
			-1*global.UniversalScale, 
			-1*global.UniversalScale, 
			0, 
			c_white,
			1
		);
	}
	if(ShowDialogueBox == true){
		Helpers_DrawDialogueBox();
	}
}