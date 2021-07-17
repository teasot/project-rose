// "Inherits" DialogueScene - call its functions first
function PanScene_Step(){
	if(!PanningComplete){
		PanTimeInMicroseconds = PanTimeInMicroseconds - delta_time;
		if(PanTimeInMicroseconds <= 0){
			PanTimeInMicroseconds = 0;
			PanningComplete = true;
			ShowDialogueBox = true;
			MoveToNextDialogue = true;
		}
		
		// When PanTimeInMicrosecondsInitial, 0
		// When 0, global.UniversalScreenHeight
		PanPixelsUp = (PanTimeInMicrosecondsInitial - PanTimeInMicroseconds)*(global.UniversalScreenHeight/PanTimeInMicrosecondsInitial);
	}
	
	// Set the "frame" of the next icon
	NextRoseFrameCountdown = NextRoseFrameCountdown - delta_time;
	if(NextRoseFrameCountdown <= 0){
		NextRoseFrame = NextRoseFrame + 1;
		if(NextRoseFrame >= 16){
			NextRoseFrame = 0;	
		}
		NextRoseFrameCountdown = NextRoseMicrosecondsPerFrame;
	}
	
	DialogueScene_Step();
}