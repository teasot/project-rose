// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DialogueScene_NoMoreDialogueItems(){
	if(DialogueNextIndex >= DialogueLength){
		return true;
	}else{
		return false;	
	}
}