/// @description Insert description here
// You can write your code in this editor

event_inherited();

if game.canvas_change {
	slot_start_x = (game.gui_width - slot_total_width)/2;
	slot_start_y = (game.gui_height - slot_total_height)/2;
}

if game.pause exit;

if(keyboard_check_pressed(notebook_key)){
	draw_evidence = !draw_evidence
	draw_change = true;	
}

if draw_change and obj_quiz_manager.pending_choice {
	draw_change = false;
	if draw_evidence { 
		curr_window = "evidence_select";
	} else {
		child_window_ptr.destroy_window = true;
		child_window_ptr = noone;
		curr_window = noone;
	}
}

if send_selected {
	send_selected = false;
	if(obj_quiz_manager.pending_choice){
		obj_quiz_manager.evi_choice = evidence_slot[clicked_slot];
		
		var curr_question = obj_quiz_manager.questions[| obj_quiz_manager.question_idx];
		if not (curr_question[0] == enum_question_type.evidence) obj_quiz_manager.quiz_menu_ptr.child_window_ptr.disable = false;
		
		var curr_question = obj_quiz_manager.questions[| obj_quiz_manager.question_idx];
		if curr_question[0] == enum_question_type.evidence {
			obj_quiz_manager.submitted = true;
		}
	}	

}

/*
