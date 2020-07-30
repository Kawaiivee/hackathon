//This draws the text with the given color and a black outline
/// @param x
/// @param y
/// @param text
/// @param color
draw_set_color(c_black)
draw_text(argument0-1,argument1-1,argument2)
draw_text(argument0-1,argument1+1,argument2)
draw_text(argument0+1,argument1-1,argument2)
draw_text(argument0+1,argument1+1,argument2)
draw_set_color(argument3)
draw_text(argument0,argument1,argument2)
draw_set_color(c_white)