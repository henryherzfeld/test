////@description scr_dialogue_weeraway
function scr_dialogue_weeraway() {

	text0 = ds_map_create();    

	text0[? "GREET"] = ["Hi", "Hey " + game.name + ", I'm a little busy right now.", ["EXIT", "GREET"], [polka, obj_npc_weeraway]]
	text0[? "EXIT"] = ["Oh, okay.", [], [polka]]	


	text1 = ds_map_create();

	//Dialogue Segment (A) 
	scr_dia_segment(text1, "GREET");
	scr_dia_line("Hello", polka);
	scr_dia_options("A1", "A2", "A3", "FILLER");

	scr_dia_segment(text1, "A1");
	scr_dia_line("Why aren't you giving the villagers enough food?", polka);
	scr_dia_line("What can I do, " + game.name + "?", obj_npc_weeraway);
	scr_dia_line("The crops are dying!", obj_npc_weeraway);
	scr_dia_options("B1", "B2", "B3", "FILLER"); 

	scr_dia_segment(text1, "A2");
	scr_dia_line("What are you doing here?", polka);
	scr_dia_line("Hiding!", obj_npc_weeraway);
	scr_dia_line("I'm a miserable farmer whose… *sniff*... reputation is in ruins.", obj_npc_weeraway);
	scr_dia_options("A1", "A2", "A3", "FILLER"); 

	scr_dia_segment(text1, "A3");
	scr_dia_line("Why are you crying?", polka);
	scr_dia_line("My kids might not have enough to eat...", obj_npc_weeraway);
	scr_dia_line("The villagers will go hungry...", obj_npc_weeraway);
	scr_dia_line("And it's all my fault!", obj_npc_weeraway);

	scr_dia_options("A1", "A2", "A3", "FILLER"); 

	//Dialogue Segment (B)
	scr_dia_segment(text1, "B1");
	scr_dia_line("Why are the crops dying?", polka);
	scr_dia_line("The crops don't have what they need to live.", obj_npc_weeraway);
	scr_dia_line("I don't know why!", obj_npc_weeraway);
	scr_dia_options("C1", "C2", "C3", "FILLER");

	scr_dia_segment(text1, "B2");
	scr_dia_line("How long have they been dying?", polka);
	scr_dia_line("I first noticed some of them dying a few weeks ago.", obj_npc_weeraway);
	scr_dia_line("The problem got worse.", obj_npc_weeraway);
	scr_dia_line("I tried to stop them from dying.", obj_npc_weeraway);
	scr_dia_line("Nothing I did worked!", obj_npc_weeraway);
	scr_dia_options("B1", "B2", "B3", "FILLER");

	scr_dia_segment(text1, "B3");
	scr_dia_line("What kinds of crops do you grow?", polka);
	scr_dia_line("You may not know this, " + game.name + ", but I've worked on this farm for 30 years.", obj_npc_weeraway);
	scr_dia_line("Since I was little and I farmed with my father, I've always grown corn, potatoes, carrots, turnips, and other vegetables.", obj_npc_weeraway);
	scr_dia_options("B1", "B2", "B3", "FILLER");

	//Dialogue Segment (C)
	scr_dia_segment(text1, "C1");
	scr_dia_line("What do crops need to live?", polka);
	scr_dia_line("I'd ask someone who knows all about plants.", obj_npc_weeraway);
	scr_dia_line("I don't know what else to do.", obj_npc_weeraway);
	scr_dia_line("You need to help me, " + game.name + "!", obj_npc_weeraway);
	scr_dia_line("If you don't, my kids and the townspeople will starve!", obj_npc_weeraway);
	scr_dia_options("EXIT", "FILLER");

	scr_dia_segment(text1, "C2");
	scr_dia_line("Where are your crops?", polka);
	scr_dia_line("In the fields besides the house.", obj_npc_weeraway);
	scr_dia_options("C1", "C2", "C3", "FILLER");

	scr_dia_segment(text1, "C3");
	scr_dia_line("What are you giving your crops?", polka);
	scr_dia_line("Plenty of water and fresh soil.", obj_npc_weeraway);
	scr_dia_line("And a bucket of love and prayers.", obj_npc_weeraway);
	scr_dia_line("But those don't seem to be working...", obj_npc_weeraway);
	scr_dia_options("C1", "C2", "C3", "FILLER");

	scr_dia_segment(text1, "EXIT");
	scr_dia_line("I won't let you down!", polka);

	text2 = ds_map_create();

	//VILLY WEERAWAY DIALOGUE
	scr_dia_segment(text2, "GREET");
	scr_dia_line("Why haven't you put enough topsoil in your crop fields?", polka);
	scr_dia_line("What?", obj_npc_weeraway);
	scr_dia_line("What do you mean, " + game.name + "?", obj_npc_weeraway);
	scr_dia_line("I DID put enough topsoil!", obj_npc_weeraway);
	scr_dia_line("It looks like some of it disappeared.", polka);
	scr_dia_line("WHAT?", obj_npc_weeraway);
	scr_dia_line("How does soil just disappear??", obj_npc_weeraway);
	scr_dia_line("We have a ghost problem!", obj_npc_weeraway);

	scr_dia_options("EXIT", "FILLER");

	scr_dia_segment(text2, "EXIT");
	scr_dia_line("We'll figure this out!", polka);


	text3 = ds_map_create();

	scr_dia_segment(text3, "GREET");
	scr_dia_line("After learning that the soil in the fields was being eroded by water, we looked for places where soil eroded less.", obj_npc_weeraway);
	scr_dia_line_sprite(spr_forest); 

	scr_dia_line("We checked out the Gumdrop Forest, which has trees planted in soil.", obj_npc_weeraway);

	scr_dia_line("We used a measuring stick to find the topsoil depth in the forest.", obj_npc_weeraway);
	scr_dia_line_sprite(spr_forest); 
	scr_dia_line_sprite(spr_measuring_stick);

	scr_dia_line("We found about 8-10 inches of topsoil.", obj_npc_weeraway);


	scr_dia_line("We also used a soil penetrometer, which is used to find the soil compaction.", obj_npc_weeraway);
	scr_dia_line_sprite(spr_measuring_stick); 
	scr_dia_line_sprite(spr_penetrometer); 

	scr_dia_line("The more compact soil is, the harder it is for it to erode.", obj_npc_weeraway);

	scr_dia_line("The more psi something has, the higher the compaction.", obj_npc_weeraway);


	scr_dia_line("The soil compaction in the forest was 180 psi, while the soil compaction in my fields was 80 psi!", obj_npc_weeraway);
	scr_dia_line_sprite(spr_penetrometer);
	scr_dia_line_sprite(spr_soil_compaction_forest_table); 

	scr_dia_line("We noticed that the forest has more vegetation, like trees, compared to our farm fields.", obj_npc_weeraway);
	scr_dia_line_sprite(spr_soil_compaction_forest_table);
	scr_dia_line_sprite(spr_compact_vs_loose_soil);

	scr_dia_line("We should go and get money from the council to plant more trees and other vegetation around the farmland.", obj_npc_weeraway);

	scr_dia_line("What do you think?", obj_npc_weeraway);

	//EROSION EXPERIMENT 1 QUIZ QUESTIONS
	erosion_experiment_1 = ds_list_create();
	scr_quiz_list(erosion_experiment_1);

	scr_quiz_question(enum_question_type.multi, 
	"What do you think?", 
	["Yeah, great idea", 
	"That's not the best idea"], 
	1);
	scr_quiz_question_response("What? Why not?", noone);

	scr_quiz_question(enum_question_type.multi, 
	"What? Why not?", 
	["People might not trust us later.",
	"We might be wasting money.",
	"We don't know for sure if it's the extra vegetation that helps the soil erode less in the forest.",
	"All of the above"], 
	3);
	scr_quiz_question_response("So what should we do?", noone);

	scr_quiz_question(enum_question_type.multi, 
	"What should we do?", 
	["Remove the vegetation in the forest and see if the soil erodes more",
	"Set up an experiment",
	"Put cameras around the forest and see if the vegetation stops erosion",
	"None of the above"], 
	1);
	scr_quiz_question_response("That's a good idea! And in our EXPERIMENT, we should...", noone);

	scr_quiz_question(enum_question_type.multi, 
	"In our experiment, we should...", 
	["Plant carrots and see if we get more rabbits in our fields",
	"Water the plants with household bleach and see if it helps them grow better",
	"Plant vegetation around crop fields and see if the soil erodes less",
	"None of the above"], 
	2);
	scr_quiz_question_response("What's next?", noone);


	scr_quiz_question(enum_question_type.multi, 
	"What's next", 
	["Make a hypothesis",
	"Start planting vegetation around the crop fields",
	"Collect data",
	"None of the above"], 
	0);
	scr_quiz_question_response("Why?", noone);

	scr_quiz_question(enum_question_type.multi, 
	"Why?", 
	["It explains what we're trying to find out.",
	"It gives direction to the experiment.",
	"A and B",
	"None of the above"], 
	2);
	scr_quiz_question_response("And our HYPOTHESIS is...?", noone);

	scr_quiz_question(enum_question_type.multi, 
	"Our hypothesis is that planting ___ vegetation around the crop fields will ___ soil erosion.", 
	["more; lower",
	"less; lower",
	"more; increase",
	"None of the above"], 
	0);
	scr_quiz_question_response("Now what?", noone);


	scr_quiz_question(enum_question_type.multi, 
	"Now what?", 
	["Analyze the data",
	"Start planting vegetation around the crop fields",
	"Set up a procedure to carry out the experiment.",
	"None of the above"], 
	2);
	scr_quiz_question_response("Why do we do that?", noone);

	scr_quiz_question(enum_question_type.multi, 
	"Why do we do set up a PROCEDURE?", 
	["It lets others know what steps were taken to come up with the data.",
	"Without it, it will look like we came up with the data on our own without doing anything.",
	"It gives others a way to repeat our experiment",
	"All of the above"], 
	3);
	scr_quiz_question_response("I see, you're right. So here's what steps we'll take.", noone);
	//END OF EROSION EXPERIMENT 1 QUIZ QUESTIONS

	scr_dia_line("I see, you're right. So here's what steps we'll take.", obj_npc_weeraway);
	//QUIZ QUESTIONS: EROSION EXPERIMENT PART 1
	scr_dia_line_quiz(erosion_experiment_1, obj_npc_weeraway);

	scr_dia_line("We will make TWO different square patches.", obj_npc_weeraway);
	scr_dia_line_sprite(spr_erosion_experiment_setup_before); 

	scr_dia_line("Each patch will be filled with soil.", obj_npc_weeraway);

	scr_dia_line("We will plant crops in both patches.", obj_npc_weeraway);

	scr_dia_line("The difference will be how much vegetation there is in each patch.", obj_npc_weeraway);

	scr_dia_line("The FIRST patch will have no vegetation planted around it.", obj_npc_weeraway);

	scr_dia_line("It's just like what we have right now in the fields.", obj_npc_weeraway);

	scr_dia_line("The SECOND patch will have vegetation like big and small trees planted around it.", obj_npc_weeraway);

	scr_dia_line("Over 4 weeks, we'll measure the SOIL DEPTH, SOIL COMPACTION, and CROP GROWTH in each patch and compare the results at the end. ", obj_npc_weeraway);

	scr_dia_line_sprite(spr_erosion_experiment_setup_before); 

	//EROSION EXPERIMENT 2 QUIZ QUESTIONS
	erosion_experiment_2 = ds_list_create();
	scr_quiz_list(erosion_experiment_2);

	scr_quiz_question(enum_question_type.multi, 
	"What do you say we do now?", 
	["Repeat the experiment",
	"Make our case",
	"Show the data found from doing the experiment.",
	"None of the above"], 
	2);
	scr_quiz_question_response("We also have to show the DATA?? Why does that matter?", noone);

	scr_quiz_question(enum_question_type.multi, 
	"Why does that matter?", 
	["It shows how we did the experiment",
	"It shows what results were found from the procedure",
	"It explains what we're trying to find out.",
	"None of the above"], 
	1);
	scr_quiz_question_response("Good point -- here's the data we found after doing the experiment", noone);

	scr_quiz_question(enum_question_type.multi, 
	"From the ANALYSIS, I've found that planting more vegetation around crop fields does not lower the soil erosion.", 
	["Yeah, that looks right.",
	"That's not quite right."], 
	1); 
	scr_quiz_question_sprite(spr_erosion_experiment_table_evidence); //SHOW THE EROSION EXPERIMENT DATA TABLE
	scr_quiz_question_response("What do you mean? How?", noone);

	scr_quiz_question(enum_question_type.multi, 
	"After 4 weeks, the SOIL COMPACTION in the patch with vegetation planted is ___ psi, while the SOIL COMPACTION in the patch with no vegetation planted is ___ psi.", 
	["170; 80",
	"80; 170",
	"9.5; 4",
	"4; 9.5"], 
	0);
	scr_quiz_question_sprite(spr_erosion_experiment_table_evidence);
	scr_quiz_question_response("Which means that...", noone);

	scr_quiz_question(enum_question_type.multi, 
	"The soil is ___ compact in the soil patch with vegetation planted than in the one with no vegetation planted.", 
	["more",
	"less"], 
	0);
	scr_quiz_question_sprite(spr_erosion_experiment_table_evidence);
	scr_quiz_question_response("Ok", noone);

	scr_quiz_question(enum_question_type.multi, 
	"After 4 weeks, the SOIL DEPTH in the patch with vegetation planted is __ inches, while the SOIL DEPTH in the patch with no vegetation planted is __ inches.", 
	["170; 80",
	"80; 170",
	"9.5; 4",
	"4; 9.5"], 
	2);
	scr_quiz_question_sprite(spr_erosion_experiment_table_evidence);
	scr_quiz_question_response("Which means that...", noone);

	scr_quiz_question(enum_question_type.multi, 
	"There's a ____ topsoil depth in the soil patch with no vegetation planted than in the one with vegetation.", 
	["higher",
	"lower"], 
	1);
	scr_quiz_question_sprite(spr_erosion_experiment_table_evidence);
	scr_quiz_question_response("Ok", noone);

	scr_quiz_question(enum_question_type.multi, 
	"After 4 weeks, the PLANT GROWTH in the patch with vegetation planted is ___ inches, while the PLANT GROWTH in the patch with no vegetation planted is ___ inches.", 
	["0.2; 0.8",
	"0.2; 170",
	"9.5; 0.8",
	"0.8; 0.2"], 
	3);
	scr_quiz_question_sprite(spr_erosion_experiment_table_evidence);
	scr_quiz_question_response("Which means that...", noone);

	scr_quiz_question(enum_question_type.multi, 
	"There's _____ plant growth in the soil patch with vegetation planted than in the one not surrounded by vegetation.", 
	["higher",
	"lower"], 
	0);
	scr_quiz_question_sprite(spr_erosion_experiment_table_evidence);

	//END OF EROSION EXPERIMENT 2 QUIZ QUESTIONS

	scr_dia_line("This is great!", obj_npc_weeraway);
	scr_dia_line_quiz(erosion_experiment_2, obj_npc_weeraway);

	scr_dia_line("That means we can CONCLUDE that planting vegetation around the crop fields can lower soil erosion.", obj_npc_weeraway);
	//QUIZ QUESTIONS: EROSION EXPERIMENT PART 2


	scr_dia_options("EXIT", "FILLER");

	scr_dia_segment(text3, "EXIT");
	scr_dia_line("Now let's go present this as a case at the Courthouse!", polka);

	return [text0, text1, text2, text3];


}
