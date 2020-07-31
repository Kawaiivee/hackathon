/// @description Room Navigator
switch(room){
	case rmSplash:
		break;
	case rmGame:
		break;
}
if(keyboard_check_pressed(vk_enter)){
	if(room == rmSplash){
		room_goto(rmGame);
	}
	global.stocks = 3;
	global.currScore = 0;
	if(room == rmGame){
		room_goto(rmSplash);
	}
}