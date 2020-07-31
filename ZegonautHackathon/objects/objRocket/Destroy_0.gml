/// @description Insert description here
// You can write your code in this editor
global.stocks -= 1;
repeat(24){
	instance_create_layer(x, y, "Instances", objParticle);
}
if(global.stocks > 0){
	instance_create_layer(room_width/2, room_height/2, "Instances", objRocket);
}
if(global.stocks <= 0){
	instance_create_layer(x, y, "Instances", objRestartGUI);
	global.highScore = max(global.highScore, global.currScore);
}
