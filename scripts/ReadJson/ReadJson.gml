// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ReadJson(file){
	show_debug_message("Loaded JSON file" + file);
	
	var f = file_text_open_read(file),
    jsonStr = "";
	while (!file_text_eof(f)) {
	  jsonStr += file_text_read_string(f);
	  file_text_readln(f);
	}
	file_text_close(f);
	
	show_debug_message("Finished loading JSON file" + file);
	return json_decode(jsonStr);
	
}