///@description scr_create_quiz_response
///@arg0 response text
///@arg1 quizzer id
///@arg2 quiz_manager_id

var response_text = argument0;
var quizzer_id = argument1;

var n_response = array_length_1d(response_text);
var dialogue_ids = array_create(n_response, quizzer_id);

response_text[n_response] = ["EXIT", "EXIT"];
response_text[n_response + 1] = dialogue_ids;

text = ds_map_create();
text[? "GREET"] = response_text;
text[? "EXIT"] = ["Ok.", [], [polka]]

scr_create_textbox(text, quizzer_id.name, quizzer_id.portrait, [[scr_change_variable, obj_quiz_manager.id, "response", false]]);