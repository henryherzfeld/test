/// @description Insert description here

event_inherited();

questions = ds_list_create();
scr_quiz_list(questions);
scr_quiz_question(enum_question_type.evidence, noone, noone, enum_evi_type.evidence2);
scr_quiz_question_response("right! you're so awesome and funny", "wrong idiot");

scr_quiz_question(enum_question_type.evidence_multi, "Prompt evi_multi", ["Righttttt ttttttt ttttttt", "Wronggggggggg gggggg gggggggggg", "Wronggggggggg gggggggg ggggggggggg"], [enum_evi_type.evidence2, 0]);
scr_quiz_question_response("right! you're so awesome and funny", "wrong idiot");
scr_quiz_question_sprite(sprite249);

scr_quiz_question(enum_question_type.multi, "QUESTION PROMPT", ["Right", "Wrong", "Wrong",], 0);
scr_quiz_question_response(["Correct!!!!!", "You are very smart."], noone);

scr_quiz_question(enum_question_type.evidence_checkbox, "Prompt evi_checkbox", ["Right", "Wrong", "Right", "Right"], [enum_evi_type.evidence2, [0, 2, 3]]);

scr_quiz_question(enum_question_type.checkbox, "Prompt checkbox", ["Right", "Wrong", "Right", "Right"], [0, 2, 3]);
scr_quiz_question_response("right! you're so awesome and funny", "wrong idiot");

//

text = ds_map_create();

scr_dia_segment(text, "GREET");
scr_dia_line("Hey and hello....... ", polka);

scr_dia_line_quiz(questions, obj_npc_test);
scr_dia_line("Me an NPC", obj_npc_test);
scr_dia_options("EXIT", "A1", "EXIT");

scr_dia_segment(text, "A1");
scr_dia_line("We are having a convo", polka);
scr_dia_line("Yes we are having a convo", obj_npc_test);
scr_dia_options("EXIT", "EXIT");

scr_dia_segment(text, "EXIT");
scr_dia_line("Bye", polka);
scr_dia_line("Bye", id);


//scr_dia_line_script(scr_change_variable, obj_npc_weeraway, "crying", false);
//scr_dia_line_quiz(questions, id);


name = "Villy";
 portrait = spr_portrait;
scripts = [
	[scr_change_variable, game.id, "find_weeravay", true],
]