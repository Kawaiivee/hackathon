/// @description Room Navigator
switch(room){
	case rmSplash:
		break;
	case rmGame:
		break;
}
if(keyboard_check_pressed(vk_enter)){
	objAudioManager.audioFlag = true;
	if(room == rmSplash){
		room_goto(rmGame);
	}
	global.stocks = 3;
	global.currScore = 0;
	if(room == rmGame){
		room_goto(rmSplash);
	}
}
if(keyboard_check_pressed(ord("M"))){
	objAudioManager.mute = !objAudioManager.mute;
	objAudioManager.audioFlag = true;
}