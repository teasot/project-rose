// "Inherits" DialogueScene - call its functions first
function PanScene_Step(){
	DialogueScene_Step();
	if(!PanningComplete){
		PanTimeInMicroseconds = PanTimeInMicroseconds - delta_time;
		if(PanTimeInMicroseconds <= 0){
			PanTimeInMicroseconds = 0;
			PanningComplete = true;
		}
		
		// When PanTimeInMicrosecondsInitial, 0
		// When 0, global.UniversalScreenHeight
		PanPixelsUp = (PanTimeInMicrosecondsInitial - PanTimeInMicroseconds)*(global.UniversalScreenHeight/PanTimeInMicrosecondsInitial);
		
		show_debug_message("Pixels Up: " + string(PanPixelsUp));
	}
}