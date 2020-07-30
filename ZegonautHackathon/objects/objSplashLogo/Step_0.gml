/// @description Nostalgic Logo for Splash Screen
if(x < 0 + .5*sprite_width){
	h_spd = -1*h_spd;
}

if(x > room_width - .5*sprite_width){
	h_spd = -1*h_spd;
}

if(y < 0 + .5*sprite_height){
	v_spd = -1*v_spd;
}

if(y > room_height - .5*sprite_height){
	v_spd = -1*v_spd;
}

x = x + h_spd;
y = y + v_spd;