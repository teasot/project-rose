// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScene_Create(){
	var MicrosecondsPerSecond = 1000000;
	
	CharactersPerSecond = 15;
	MicrosecondsBetweenCharacters = MicrosecondsPerSecond/CharactersPerSecond;
	CharacterRenderCountDown = MicrosecondsBetweenCharacters

	AwaitingUserInput = false;
	DialogueNextIndex = 0;
	RenderingDialogueItem = false;
	RenderingDialogueItemLine = false;
	IncrementingDialogueItemLineText = false;
	MoveToNextDialogue = true;
	PlayingDialogueSound = false;
	
	DialogueLength = ds_list_size(global.Scene_Dialogue_Array);
	DialogueX = 25;
	DialogueY = 155;
	ShowDialogueBox = true;
	
	
	CharacterRenderPriorDelta = 0;
	
	NextIconFrame = 0;
	NextIconFrameCount = 8;
	NextIconFPS = 12;
	NextIconMicrosecondsPerFrame = (MicrosecondsPerSecond/NextIconFPS);
	NextIconFrameCountdown = NextIconMicrosecondsPerFrame;

	CurrentLineTextToRender = "";
	PriorTextToRender = "";
	DialogueItemLineTextLength = 0;
	
	DialogueItemActorNametag = "";
	DialogueItemActorNametagIndex = 0;

	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_set_alpha(1);

	// Play music
	var MusicFileName = working_directory + "BGM\\" + global.Scene_BG_Music + ".ogg";
	MusicSound = GetSoundFromFile(MusicFileName);
	audio_play_sound(MusicSound, 0, true);
}