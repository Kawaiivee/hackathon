/// @description Inputs and Physics
//Grab input
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left);
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right);
keyUp = keyboard_check(ord("W")) || keyboard_check(vk_up);
keyDown = keyboard_check(ord("S")) || keyboard_check(vk_down);
keyDrop = keyboard_check_pressed(vk_space);

//physics
var moveX = keyRight - keyLeft;
if(x > room_width - sprite_width/2){
	x = 0 + sprite_width*3/4;
}
if(x < 0 + sprite_width/2){
	x = room_width - sprite_width*3/4;
}

var moveY = keyDown - keyUp;

//don't leave the ceiling of the window! or fall through the ground
if(y > room_height - (128 + sprite_width*3/4)){
	y = room_height - (128 + sprite_width*3/4);
}
if(y < 0 + sprite_height/2){
	y = 128 + sprite_width*3/4;
}

//flip "direction"
if(moveX > 0){
	image_index = 0;
}
else if(moveX < 0){
	image_index = 1;
}

//apply physics
x += moveX*xSpd;
y += moveY*ySpd;

if(keyDrop && dropTimer){
	instance_create_layer(x, y + 20, "Instances", objMask);
	dropTimer = false;
	alarm[0] = .5*room_speed;	//can drop 1 mask per second
}