// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScene_Step(){
	
	
	if(MoveToNextDialogue == true){
		DialogueScene_BeginNextItem();	
	}
	
	if(IncrementingDialogueItemLineText){
		// The number of frames till something is done
		CharacterRenderCountDown = CharacterRenderCountDown - delta_time;
		if(IncrementingDialogueItemLineText && (CharacterRenderCountDown <= 0))
		{
			// Do something	
			if(string_length(CurrentLineTextToRender) < DialogueItemLineTextLength)
			{
				CurrentLineTextToRender = string_copy(DialogueItemLineText, 0, string_length(CurrentLineTextToRender) + 1);
			}else
			{
				IncrementingDialogueItemLineText = false;	
				AwaitingUserInput = true;
			}
			CharacterRenderCountDown = MicrosecondsBetweenCharacters;
		}
	}
	
	if(AwaitingUserInput){
		// Set the "frame" of the next icon
		NextIconFrameCountdown = NextIconFrameCountdown - delta_time;
		if(NextIconFrameCountdown <= 0){
			NextIconFrame = NextIconFrame + 1;
			if(NextIconFrame >= 8){
				NextIconFrame = 0;	
			}
			NextIconFrameCountdown = NextIconMicrosecondsPerFrame;
		}
	}
	
	// Handle user input
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || keyboard_check_pressed(ord("Z")) )
	{
		// If line finished rendering 
		if(AwaitingUserInput == true)
		{
			if(DialogueScene_NoMoreDialogueItemLines())
			{
				if(DialogueScene_NoMoreDialogueItems())
				{
						// Move to the next scene
						if(global.Scene_Has_Options){
							// Render options
							RenderingOptions = true;
						}
						else{
							global.LoadNextScene = true;
							instance_destroy();
						}
						
				}else{
					DialogueScene_BeginNextItem();	
				}
			}
			else
			{
				DialogueScene_BeginNextLine();
			}
		}else{
			// Line still rendering
			// Skip to end of line
			CurrentLineTextToRender = DialogueItemLineText;
			IncrementingDialogueItemLineText = false;	
			AwaitingUserInput = true;
		}
	}
	
	if(PlayingDialogueSound && !audio_is_playing(DialogueSound))
	{
		DialogueScene_StopPlayingVoiceLine();
	}
}