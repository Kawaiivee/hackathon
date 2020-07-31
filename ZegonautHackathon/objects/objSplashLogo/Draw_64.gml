/// @description Press Enter, score, and title
draw_text(room_width - 256, room_height - 80, "Zegonauts: Mask Mission");
draw_text(room_width - 256, room_height - 64, "Press Enter To Play");
draw_text(room_width - 256, room_height - 48, "Press 'M' To Mute/Unmute");
if(global.highScore > 0){
	draw_text(room_width - 256, room_height - 32, "High Score: " + string(global.highScore));
}