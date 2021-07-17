/*
DialogueNextIndex = 0;
RenderingDialogueItem = false;
MoveToNextDialogue = true;

DialogueLength = ds_list_size(global.Scene_Dialogue_Array);
DialogueItems = ds_find_map(global.Scene_Dialogue_Array);*/
function DialogueScene_BeginNextItem()
{
	// Load the next dialogue item into the current item variable
	DialogueCurrentItem = ds_list_find_value(global.Scene_Dialogue_Array, DialogueNextIndex);
	DialogueItemActor = ds_map_find_value(DialogueCurrentItem, "Actor");
	DialogueItemLines = ds_map_find_value(DialogueCurrentItem, "Lines");
	
	DialogueItemActorNametag = ds_map_find_value(global.ActorsJson,DialogueItemActor);
	show_debug_message(DialogueItemActorNametag);
	
	DialogueItemNextLineIndex = 0;
	DialogueItemLinesCount = ds_list_size(DialogueItemLines);
	
	// Increment the index of the next dialogue
	DialogueNextIndex = DialogueNextIndex + 1;
	
	// Set the flag so we know we are currently rendering the dialogue
	RenderingDialogueItem = true;
	
	// We have moved to the next dialogue
	// We don't want to move to the next one yet - wait till the current one is finished
	MoveToNextDialogue = false;
	
	// Start rendering the first line
	DialogueScene_BeginNextLine();
}