// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Global_LoadTranslation(LanguageKey){

	var TranslationItem  = ds_map_find_value(global.TranslationsJson, LanguageKey);
	global.TranslationFont  = ds_map_find_value(TranslationItem, "font");
	global.TranslationFontScale  = ds_map_find_value(TranslationItem, "fontScale");
	global.TranslationFontExtraPadding  = ds_map_find_value(TranslationItem, "extraTopPadding");
	global.CurrentDialogueFont = font_add("fonts\\" + global.TranslationFont, 12, false, false, 1, 1);
	
	var TranslationPhrasesLocation  = ds_map_find_value(TranslationItem, "phrases");
	var TranslationOptionsLocation  = ds_map_find_value(TranslationItem, "options");
	global.PhrasesJson = ReadJson(working_directory + "translations\\" + TranslationPhrasesLocation);
	global.OptionsJson = ReadJson(working_directory + "translations\\" + TranslationOptionsLocation);
}