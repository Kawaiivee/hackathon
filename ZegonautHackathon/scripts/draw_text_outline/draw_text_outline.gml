//This draws the text, but with a black outline
///@param x
///@param y
///@param text
draw_set_color(c_black)
draw_text(argument0-1,argument1-1,argument2)
draw_text(argument0-1,argument1+1,argument2)
draw_text(argument0+1,argument1-1,argument2)
draw_text(argument0+1,argument1+1,argument2)
draw_set_color(c_white)
draw_text(argument0,argument1,argument2)