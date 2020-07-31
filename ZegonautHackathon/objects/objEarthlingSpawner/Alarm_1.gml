/// @description Spawn somewhere on the gronud
var x_rand = irandom_range(32, room_width-32);
instance_create_layer(x_rand, room_height-32, "Instances", objEarthling);
alarmFlag1 = true;