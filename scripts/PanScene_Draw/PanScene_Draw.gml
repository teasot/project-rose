// "Inherits" DialogueScene - call its functions first
function PanScene_Draw(){
	// First, draw "top" image
	draw_sprite_ext(asset_get_index(global.Scene_BG_Image_Top), 0, 0, PanPixelsUp - global.UniversalScreenHeight , global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	
	// Then, draw "bottom" image
	draw_sprite_ext(asset_get_index(global.Scene_BG_Image_Bottom), 0, 0, 0 + PanPixelsUp, global.UniversalScale, global.UniversalScale, 0, c_white, 1);
	
	if(ShowDialogueBox == true){
		Helpers_DrawDialogueBox();
	}
}