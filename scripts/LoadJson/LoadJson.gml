function LoadJson(){
	show_debug_message("Loading JSON file" + global.JsonPath)
	
	
	global.ScenesJson = ReadJson(global.JsonPath); // decode the json string
	show_debug_message("Loaded JSON file" + global.JsonPath);
}