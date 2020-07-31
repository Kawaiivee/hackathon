/// @description Insert description here
// You can write your code in this editor
if(global.stocks > 0){
	instance_create_layer(room_width/2, room_height/2, "Instances", objRocket);
}
if(global.stocks <= 0){
	global.highScore = max(global.highScore, global.currScore);
	room_goto(rmSplash);
}
global.stocks -= 1;