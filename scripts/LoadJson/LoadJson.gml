function LoadJson(){	
	global.ScenesJson = ReadJson(global.ScenesJsonPath); // decode the json string
	global.ActorsJson = ReadJson(global.ActorsJsonPath); // decode the json string
}