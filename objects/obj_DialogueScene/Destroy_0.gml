/// @description End the dialogue scene
  // We want to do the next "thing"
if(PlayingDialogueSound)
{
	DialogueScene_StopPlayingVoiceLine();
}
audio_destroy_stream(MusicSound);
global.LoadNextScene = true;
