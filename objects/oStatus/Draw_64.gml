/// @description Gérer les pvs
var scale_x = view_wport[0]/view_wview[0];
var scale_y = view_hport[0]/view_hview[0];   
var pos_x = x - view_xview[0];
pos_x = window_get_x() + pos_x * scale_x;
var pos_y = y - view_yview[0];
pos_y = window_get_y() + pos_y * scale_y;

// Draw the GUI
draw_sprite_ext(sHearthFiller,0,pos_x,pos_y,global.playerHealth/global.playerMaxHealth,1,0,c_white,1);
draw_sprite(sHearthBorder,0,280,730);
//draw_text(50,150,global.playerHealth);

