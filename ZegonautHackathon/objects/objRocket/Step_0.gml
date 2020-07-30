/// @description Inputs and Physics
//Grab input
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyDrop = keyboard_check_pressed(vk_space);

var move = keyRight - keyLeft;
if(x < 0 + sprite_width/2 || x > room_width - sprite_width/2){
	move = -1*sign(move);
}
x += move*xSpd;
y += ySpd;

if(keyDrop){
	instance_create_layer(x, y + 20, "Instances", objMask);
}
//not working yet
//if(alarmFlag0){
//	alarm[0] = .5*room_speed;
//	alarmFlag0 = false;
//}