function DialogueScene_BeginNextLine(){
	
	// First stop playing voice line
	if(PlayingDialogueSound)
	{
		DialogueScene_StopPlayingVoiceLine();
	}
	
	CurrentLineTextToRender = "";
	
	show_debug_message("Reading line: " + string(DialogueItemNextLineIndex));
	// Fetch the current line
	CurrentDialogueItemLine = ds_list_find_value(DialogueItemLines, DialogueItemNextLineIndex);
	
	
	DialogueItemLineText = ds_map_find_value(CurrentDialogueItemLine, "Text");
	DialogueItemLineVoice = ds_map_find_value(CurrentDialogueItemLine, "VoiceLine");
	DialogueItemLineTextLength = string_length(DialogueItemLineText);
	
	// Play the voice clip
	var VoiceFileName = working_directory + "VOICE\\" + string_copy(DialogueItemLineVoice, 0, 5) + "\\" + DialogueItemLineVoice + ".ogg";
	DialogueSound = GetSoundFromFile(VoiceFileName);
	audio_play_sound(DialogueSound, 0, false);
	PlayingDialogueSound = true;
	
	// We are rendering a line now
	IncrementingDialogueItemLineText = true;
	CharacterRenderPriorDelta = 0;
	// Note, we are never NOT rendering a line... until maybe we do options
	RenderingDialogueItemLine = true;
	
	// We are NOT awaiting user input
	AwaitingUserInput = false;
	// Increment the index of the line to fetch next
	DialogueItemNextLineIndex = DialogueItemNextLineIndex + 1;
	
	// Reset the spr_Next frame to 0
	NextIconFrame = 0;
}