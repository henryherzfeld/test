/// @description Insert description here

scr_init_evidence();

x1 = 256;
y1 = 300;
x2 = game.gui_width;
y2 = game.gui_height;
preview_spr = noone;

notebook_key = ord("N");

bg_col = c_olive;
draw_evidence = false;

evidence_slot = array_create(MAX_EVI_ITEMS, enum_evi_type.none);
evi_def = ds_grid_create(enum_evi_type.length, enum_evi_state.length);

scr_evi_add_data(enum_evi_type.none,spr_inventory_slot,"", "");
scr_evi_add_data(enum_evi_type.evidence1,sprite140,"evidence 1", "a piece of evidence");
scr_evi_add_data(enum_evi_type.evidence2,sprite138,"evidence 2", "a piece of evidence");

scr_evi_add_notebook(enum_evi_type.evidence1);
scr_evi_add_notebook(enum_evi_type.evidence2);