/// @description Spawn somewhere on the gronud
var x_rand = irandom_range(64, room_width-64);
instance_create_layer(x_rand, room_height-48, "Instances", objEarthling);
alarmFlag2 = true;