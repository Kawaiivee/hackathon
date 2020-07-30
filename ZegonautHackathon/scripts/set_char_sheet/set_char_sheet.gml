var sur, new, save;
sur = surface_create(512,2048)
surface_set_target(sur)
draw_clear_alpha(c_black, 0)
var skin = obj_cd_designer.skin
var hair = obj_cd_designer.hair
var eyes = obj_cd_designer.eyes
var torso = obj_cd_designer.torso
var legs = obj_cd_designer.legs
var feet = obj_cd_designer.feet
var melee = obj_cd_designer.melee
var ranged = obj_cd_designer.ranged
var skin_col = obj_cd_designer.skin_col
var hair_col = obj_cd_designer.hair_col
var eyes_col = obj_cd_designer.eyes_col
var torso_col = obj_cd_designer.torso_col
var legs_col = obj_cd_designer.legs_col
var feet_col = obj_cd_designer.feet_col
var melee_col = obj_cd_designer.melee_col
var ranged_col = obj_cd_designer.ranged_col
var sex = obj_cd_designer.sex
var head = obj_cd_designer.head
var head_col = obj_cd_designer.head_col
if melee = 0
draw_sprite_ext(spr_cd_melee0a,0,0,0,1,1,0,melee_col,1)
if melee = 1
draw_sprite_ext(spr_cd_melee1a,0,0,0,1,1,0,melee_col,1)
if skin = 0
draw_sprite_ext(spr_cd_skin0,0,0,0,1,1,0,skin_col,1)
if skin = 1
draw_sprite_ext(spr_cd_skin1,0,0,0,1,1,0,skin_col,1)
if skin = 2
draw_sprite_ext(spr_cd_skin2,0,0,0,1,1,0,skin_col,1)
if skin = 3
draw_sprite_ext(spr_cd_skin3,0,0,0,1,1,0,skin_col,1)
if skin = 4
draw_sprite_ext(spr_cd_skin_w,0,0,0,1,1,0,skin_col,1)
if feet = 1
draw_sprite_ext(spr_cd_feet1,0,0,0,1,1,0,feet_col,1)
if feet = 2
draw_sprite_ext(spr_cd_feet2,0,0,0,1,1,0,feet_col,1)
if feet = 3
draw_sprite_ext(spr_cd_feet3,0,0,0,1,1,0,feet_col,1)
if feet = 4
//Trench coat would need to go before the legs, so it can drape behind them. But a sprite part to be drawn over the legs for climbing.
draw_sprite_ext(spr_cd_feet4,0,0,0,1,1,0,feet_col,1)
if legs = 1
draw_sprite_ext(spr_cd_legs1,0,0,0,1,1,0,legs_col,1)
if legs = 2
draw_sprite_ext(spr_cd_legs2,0,0,0,1,1,0,legs_col,1)
if legs = 3
draw_sprite_ext(spr_cd_legs3,0,0,0,1,1,0,legs_col,1)
if legs = 4
draw_sprite_ext(spr_cd_legs4and5,0,0,0,1,1,0,legs_col,1)
if torso = 1
draw_sprite_ext(spr_cd_torso1,0,0,0,1,1,0,torso_col,1)
if torso = 2
draw_sprite_ext(spr_cd_torso2,0,0,0,1,1,0,torso_col,1)
if torso = 3
draw_sprite_ext(spr_cd_torso3,0,0,0,1,1,0,torso_col,1)
if torso = 4
draw_sprite_ext(spr_cd_torso4,0,0,0,1,1,0,torso_col,1)
if torso = 5
draw_sprite_ext(spr_cd_torso5,0,0,0,1,1,0,torso_col,1)
if torso = 6
draw_sprite_ext(spr_cd_torso6,0,0,0,1,1,0,torso_col,1)
if torso = 7
draw_sprite_ext(spr_cd_torso7,0,0,0,1,1,0,torso_col,1)
if torso = 8
draw_sprite_ext(spr_cd_torso8,0,0,0,1,1,0,torso_col,1)
if torso = 9
draw_sprite_ext(spr_cd_torso9,0,0,0,1,1,0,torso_col,1)
//
if sex = 1
draw_sprite_ext(spr_cd_torso_female,0,0,0,1,1,0,torso_col,1)
//
if legs = 5//Appears after torso
draw_sprite_ext(spr_cd_legs4and5,0,0,0,1,1,0,legs_col,1)
if head != 9
{
	if (hair = 1 or hair = 6) and head > 2 and head < 9 
	{
		//hair that doesn't fit hats needs to show different hair
		draw_sprite_ext(spr_cd_hair2,0,0,0,1,1,0,hair_col,1)
	}
	else
	{
		if hair = 1
		draw_sprite_ext(spr_cd_hair1,0,0,0,1,1,0,hair_col,1)
		if hair = 6
		draw_sprite_ext(spr_cd_hair6,0,0,0,1,1,0,hair_col,1)
	}
	if hair = 2
	draw_sprite_ext(spr_cd_hair2,0,0,0,1,1,0,hair_col,1)
	if hair = 3
	draw_sprite_ext(spr_cd_hair3,0,0,0,1,1,0,hair_col,1)
	if hair = 4
	draw_sprite_ext(spr_cd_hair4,0,0,0,1,1,0,hair_col,1)
	if hair = 5
	draw_sprite_ext(spr_cd_hair5,0,0,0,1,1,0,hair_col,1)
}
if head = 1
draw_sprite_ext(spr_cd_head1,0,0,0,1,1,0,head_col,1)
if head = 2
draw_sprite_ext(spr_cd_head2,0,0,0,1,1,0,head_col,1)
if head = 3
draw_sprite_ext(spr_cd_head3,0,0,0,1,1,0,head_col,1)
if head = 4
draw_sprite_ext(spr_cd_head4,0,0,0,1,1,0,head_col,1)
if head = 5
draw_sprite_ext(spr_cd_head5,0,0,0,1,1,0,head_col,1)
if head = 6
draw_sprite_ext(spr_cd_head6,0,0,0,1,1,0,head_col,1)
if head = 7
draw_sprite_ext(spr_cd_head7,0,0,0,1,1,0,head_col,1)
if head = 8
draw_sprite_ext(spr_cd_head8,0,0,0,1,1,0,head_col,1)
if eyes = 0
{
	draw_sprite_ext(spr_cd_eyes0,0,0,0,1,1,0,eyes_col,1)
	draw_sprite_ext(spr_cd_eye_whites0,0,0,0,1,1,0,c_white,1)
}
if eyes = 1
{
	draw_sprite_ext(spr_cd_eyes1,0,0,0,1,1,0,eyes_col,1)
	draw_sprite_ext(spr_cd_eye_whites1,0,0,0,1,1,0,c_white,1)
}
if eyes = 2
draw_sprite_ext(spr_cd_eyes2,0,0,0,1,1,0,eyes_col,1)
if eyes = 3
draw_sprite_ext(spr_cd_eyes3,0,0,0,1,1,0,eyes_col,1)
if eyes = 4
draw_sprite_ext(spr_cd_eyes4,0,0,0,1,1,0,eyes_col,1)
if eyes = 5
draw_sprite_ext(spr_cd_eyes5,0,0,0,1,1,0,eyes_col,1)
if eyes = 6
draw_sprite_ext(spr_cd_eyes6,0,0,0,1,1,0,eyes_col,1)
if eyes = 7
draw_sprite_ext(spr_cd_eyes7,0,0,0,1,1,0,eyes_col,1)
if eyes = 8
draw_sprite_ext(spr_cd_eyes8,0,0,0,1,1,0,eyes_col,1)
if eyes = 9
draw_sprite_ext(spr_cd_eyes9,0,0,0,1,1,0,eyes_col,1)
if eyes = 2 or eyes = 3 or eyes = 4 or eyes = 6 or eyes = 7 or eyes = 8
draw_sprite_ext(spr_cd_eye_whites_frame,0,0,0,1,1,0,c_white,1)
if head = 9//ninja head goes over
draw_sprite_ext(spr_cd_head9,0,0,0,1,1,0,head_col,1)
if melee = 0
draw_sprite_ext(spr_cd_melee0b,0,0,0,1,1,0,melee_col,1)
if melee = 1
draw_sprite_ext(spr_cd_melee1b,0,0,0,1,1,0,melee_col,1)
if ranged = 0
draw_sprite_ext(spr_cd_ranged0,0,0,0,1,1,0,ranged_col,1)
if ranged = 1
draw_sprite_ext(spr_cd_ranged1,0,0,0,1,1,0,ranged_col,1)
//else if argument1 != 2
//draw_sprite_ext(argument0,0,0,0,1,1,0,c_white,1)
new = sprite_create_from_surface(sur,0,0,410,1291,0,0,0,0)
sprite_assign(spr_cd_save,new)
surface_reset_target()
surface_free(sur)
sprite_delete(new)