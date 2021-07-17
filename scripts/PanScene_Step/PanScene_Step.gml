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
	DialogueScene_Step();
}