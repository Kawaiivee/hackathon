if(state == "masked"){
	image_index = 1;
	image_alpha -= .05;
}
if( image_alpha < .2 ){
	instance_destroy();
}