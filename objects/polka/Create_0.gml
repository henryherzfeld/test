/// @description Init
// You can write your code in this editor

itemEquiped = noone;		//Variable to store type of item from inventory to player,Default we have equided nothing
spd = 2.5
x_move = 0;
y_move = 0;
in_dialogue = false;
interactable = false;
move_override = false;
moving = false;
radius = 30;
npc = noone;

name = game.name;
portraits = array_create(enum_portrait.length, spr_portrait_polka);
facing = -1;

curr_x = 0;
curr_y = 0;