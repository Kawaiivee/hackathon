/// @description Spawn somewhere on the gronud
var x_rand = irandom_range(64, room_width-64);
instance_create_layer(x_rand, room_height-64, "Instances", objEarthling);
alarmFlag1 = true;