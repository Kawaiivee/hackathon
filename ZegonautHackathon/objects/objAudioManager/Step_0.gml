/// @description Check room
switch(room){
	case rmSplash:
	if(audioFlag){
			audio_stop_all();
			audioFlag = false;
		}
		if(!audio_is_playing(song0)){
			audio_play_sound(song0, 1, true);
		}
		break;
		
	case rmGame:
	if(audioFlag){
			audio_stop_all();
			audioFlag = false;
		}
		if(!audio_is_playing(song1)){
			audio_play_sound(song1, 1, true);
		}
		break;
	default:
		break;
}
if(mute){
	audio_stop_all();
}