// "Inherits" DialogueScene - call its functions first
function PanScene_Create(){
	DialogueScene_Create();
	var MicrosecondsPerSecond = 1000000;
	
	// Pan Configuration
	PanTimeInSeconds = 3;
	PanTimeInMicrosecondsInitial = 3 * MicrosecondsPerSecond;
	PanTimeInMicroseconds = PanTimeInMicrosecondsInitial;
	PanPixelsUp = 0;
	
	// Don't show dialogue box until panning complete
	ShowDialogueBox = false;
	
	// We do not want to move to the next dialogue yet
	MoveToNextDialogue = false;
	
	PanningComplete = false;
}