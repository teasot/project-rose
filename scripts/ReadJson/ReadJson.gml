// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ReadJson(file){
var f = file_text_open_read(working_directory + file),
    jsonStr = "";
	while (!file_text_eof(f)) {
	  jsonStr += file_text_read_string(f);
	  file_text_readln(f);
	}
	file_text_close(f);
	return json_decode(jsonStr);
}