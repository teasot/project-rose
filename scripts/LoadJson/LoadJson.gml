function LoadJson(){	
	global.ScenesJson = ReadJson(global.ScenesJsonPath); // decode the json string
	global.ActorsJson = ReadJson(global.ActorsJsonPath); // decode the json string
	
	global.PhrasesJson = ReadJson(working_directory + "translations\\" + global.Language + "_phrases.json");
	global.OptionsJson = ReadJson(working_directory + "translations\\" + global.Language + "_options.json");
}