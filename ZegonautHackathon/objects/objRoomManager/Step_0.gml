/// @description Room Navigator
if(keyboard_check_pressed(vk_enter))
{
	if(room == rmSplash){
		room_goto(rmGame);
	}
	
	if(room == rmGame){
		room_goto(rmSplash);
	}
}