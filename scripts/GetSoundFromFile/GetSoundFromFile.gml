// For now only works with OGG
// We can add WAV later.
function GetSoundFromFile(fileName){
	snd = audio_create_stream(fileName);
	return snd;
}