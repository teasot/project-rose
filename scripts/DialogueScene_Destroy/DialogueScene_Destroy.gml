// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScene_Destroy(){
	  // We want to do the next "thing"
	if(PlayingDialogueSound)
	{
		DialogueScene_StopPlayingVoiceLine();
	}
	audio_destroy_stream(MusicSound);
	global.LoadNextScene = true;

}