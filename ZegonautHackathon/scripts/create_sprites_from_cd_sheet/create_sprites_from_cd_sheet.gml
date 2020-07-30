/*
This script is something you can use to take a character sprite sheet made from
the character designer, and export all of the images to individual character sprites.
Sprites are not created; they were replaced. This makes it possible to change the
character sprites mid-game if you wish, but just make sure that the sprites already
exits as empty images in your export.
*/
///@param sprite_sheet


//This script will take the char sprite sheet and make new sprites out of it
///@param tileset (tile sheet to use)
///@param sprites (0 is player 1, 1 is stand, 2 is map_char_down, 3 is NPC sprites, 4 is player 2, 5 is Melee and Ranged sprites for player, 6 is saving the sprite sheet.)
///@param DesignID (Design ID to pull from)
var sur, new, save;
sur = surface_create(512,1024)/*The height of this surface is not as high as the
sprite itself. I tried to keep the height down so that it would be more compatible
with other exports. Because of this, the surface will actually be drawn twice; once
here for the upper sprites, and again later in this script for the lower sprites.*/
surface_set_target(sur)
draw_clear_alpha(c_black, 0)
draw_sprite_ext(argument0,0,0,0,1,1,0,c_white,1)
new = sprite_create_from_surface(sur,0,17,48,48,0,0,24,0)//Walk
sprite_add_from_surface(new,sur,49,17,48,48,0,0)
sprite_add_from_surface(new,sur,98,17,48,48,0,0)
sprite_add_from_surface(new,sur,147,17,48,48,0,0)
sprite_add_from_surface(new,sur,196,17,48,48,0,0)
sprite_add_from_surface(new,sur,245,17,48,48,0,0)
sprite_assign(spr_char_walk,new)//Replace these sprite names with the actual names of the sprites in your game.
sprite_delete(new)
new = sprite_create_from_surface(sur,0,66,48,48,0,0,24,0)//Climb
sprite_add_from_surface(new,sur,49,66,48,48,0,0)
sprite_add_from_surface(new,sur,98,66,48,48,0,0)
sprite_add_from_surface(new,sur,147,66,48,48,0,0)
sprite_add_from_surface(new,sur,196,66,48,48,0,0)
sprite_add_from_surface(new,sur,245,66,48,48,0,0)
sprite_assign(spr_char_climb,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,115,48,48,0,0,24,0)//Hang
sprite_add_from_surface(new,sur,49,115,48,48,0,0)
sprite_add_from_surface(new,sur,98,115,48,48,0,0)
sprite_add_from_surface(new,sur,147,115,48,48,0,0)
sprite_add_from_surface(new,sur,196,115,48,48,0,0)
sprite_add_from_surface(new,sur,245,115,48,48,0,0)
sprite_assign(spr_char_hang,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,164,48,48,0,0,24,0)//Run
sprite_add_from_surface(new,sur,49,164,48,48,0,0)
sprite_add_from_surface(new,sur,98,164,48,48,0,0)
sprite_add_from_surface(new,sur,147,164,48,48,0,0)
sprite_add_from_surface(new,sur,196,164,48,48,0,0)
sprite_add_from_surface(new,sur,245,164,48,48,0,0)
sprite_assign(spr_char_run,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,213,48,48,0,0,24,0)//Stand
sprite_add_from_surface(new,sur,49,213,48,48,0,0)
sprite_add_from_surface(new,sur,98,213,48,48,0,0)
sprite_add_from_surface(new,sur,147,213,48,48,0,0)
sprite_assign(spr_char_stand,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,262,48,48,0,0,24,0)//Jump
sprite_add_from_surface(new,sur,49,262,48,48,0,0)
sprite_add_from_surface(new,sur,98,262,48,48,0,0)
sprite_add_from_surface(new,sur,147,262,48,48,0,0)
sprite_assign(spr_char_jump,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,311,48,48,0,0,24,0)//Fall
sprite_add_from_surface(new,sur,49,311,48,48,0,0)
sprite_add_from_surface(new,sur,98,311,48,48,0,0)
sprite_add_from_surface(new,sur,147,311,48,48,0,0)
sprite_assign(spr_char_fall,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,360,48,48,0,0,24,0)//Hover
sprite_add_from_surface(new,sur,49,360,48,48,0,0)
sprite_add_from_surface(new,sur,98,360,48,48,0,0)
sprite_add_from_surface(new,sur,147,360,48,48,0,0)
sprite_assign(spr_char_hover,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,409,48,48,0,0,24,0)//Glide
sprite_add_from_surface(new,sur,49,409,48,48,0,0)
sprite_add_from_surface(new,sur,98,409,48,48,0,0)
sprite_add_from_surface(new,sur,147,409,48,48,0,0)
sprite_assign(spr_char_glide,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,458,48,48,0,0,24,0)//Stand Attack
sprite_add_from_surface(new,sur,49,458,48,48,0,0)
sprite_add_from_surface(new,sur,98,458,48,48,0,0)
sprite_add_from_surface(new,sur,147,458,48,48,0,0)
sprite_assign(spr_char_atk,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,507,48,48,0,0,24,0)//Move Attack
sprite_add_from_surface(new,sur,49,507,48,48,0,0)
sprite_add_from_surface(new,sur,98,507,48,48,0,0)
sprite_add_from_surface(new,sur,147,507,48,48,0,0)
sprite_assign(spr_char_move_atk,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,556,48,48,0,0,24,0)//Jump Attack
sprite_add_from_surface(new,sur,49,556,48,48,0,0)
sprite_add_from_surface(new,sur,98,556,48,48,0,0)
sprite_add_from_surface(new,sur,147,556,48,48,0,0)
sprite_assign(spr_char_jump_atk,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,605,64,48,0,0,24,0)//Stand Melee Attack
sprite_add_from_surface(new,sur,65,605,64,48,0,0)
sprite_add_from_surface(new,sur,130,605,64,48,0,0)
sprite_add_from_surface(new,sur,195,605,64,48,0,0)
sprite_add_from_surface(new,sur,0,654,64,48,0,0)
sprite_add_from_surface(new,sur,65,654,64,48,0,0)
sprite_add_from_surface(new,sur,130,654,64,48,0,0)
sprite_add_from_surface(new,sur,195,654,64,48,0,0)
sprite_assign(spr_char_stand_melee,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,703,64,48,0,0,24,0)//Move Melee Attack
sprite_add_from_surface(new,sur,65,703,64,48,0,0)
sprite_add_from_surface(new,sur,130,703,64,48,0,0)
sprite_add_from_surface(new,sur,195,703,64,48,0,0)
sprite_add_from_surface(new,sur,0,752,64,48,0,0)
sprite_add_from_surface(new,sur,65,752,64,48,0,0)
sprite_add_from_surface(new,sur,130,752,64,48,0,0)
sprite_add_from_surface(new,sur,195,752,64,48,0,0)
sprite_assign(spr_char_move_melee,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,801,48,48,0,0,24,0)//Stand Ranged Attack
sprite_add_from_surface(new,sur,49,801,48,48,0,0)
sprite_add_from_surface(new,sur,98,801,48,48,0,0)
sprite_add_from_surface(new,sur,147,801,48,48,0,0)
sprite_assign(spr_char_fire,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,850,48,48,0,0,24,0)//Move Ranged Attack
sprite_add_from_surface(new,sur,49,850,48,48,0,0)
sprite_add_from_surface(new,sur,98,850,48,48,0,0)
sprite_add_from_surface(new,sur,147,850,48,48,0,0)
sprite_assign(spr_char_move_fire,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,899,48,48,0,0,24,0)//Duck Ranged Attack
sprite_add_from_surface(new,sur,49,899,48,48,0,0)
sprite_add_from_surface(new,sur,98,899,48,48,0,0)
sprite_add_from_surface(new,sur,147,899,48,48,0,0)
sprite_assign(spr_char_duck_fire,new)
sprite_delete(new)

//Reset, shift 948 up so we can create sprites in the lower side of the sprite sheet.

draw_clear_alpha(c_black, 0)
surface_reset_target()
surface_free(sur)
sur = surface_create(512,1024)
surface_set_target(sur)
draw_clear_alpha(c_black, 0)
draw_sprite_ext(argument0,0,0,-948,1,1,0,c_white,1)

new = sprite_create_from_surface(sur,0,0,48,48,0,0,24,0)//Swim
sprite_add_from_surface(new,sur,49,0,48,48,0,0)
sprite_add_from_surface(new,sur,98,0,48,48,0,0)
sprite_add_from_surface(new,sur,147,0,48,48,0,0)
sprite_assign(spr_char_swim,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,49,48,48,0,0,24,24)//top down swim
sprite_add_from_surface(new,sur,49,49,48,48,0,0)
sprite_add_from_surface(new,sur,98,49,48,48,0,0)
sprite_add_from_surface(new,sur,147,49,48,48,0,0)
sprite_assign(spr_char_swimb,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,98,48,48,0,0,24,24)//top down fly
sprite_add_from_surface(new,sur,49,98,48,48,0,0)
sprite_add_from_surface(new,sur,98,98,48,48,0,0)
sprite_add_from_surface(new,sur,147,98,48,48,0,0)
sprite_assign(spr_char_fly,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,147,48,48,0,0,24,0)//Death
sprite_add_from_surface(new,sur,49,147,48,48,0,0)
sprite_add_from_surface(new,sur,98,147,48,48,0,0)
sprite_add_from_surface(new,sur,147,147,48,48,0,0)
sprite_assign(spr_char_dead,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,196,48,48,0,0,24,0)//Finish
sprite_add_from_surface(new,sur,49,196,48,48,0,0)
sprite_add_from_surface(new,sur,98,196,48,48,0,0)
sprite_add_from_surface(new,sur,147,196,48,48,0,0)
sprite_add_from_surface(new,sur,196,196,48,48,0,0)
sprite_add_from_surface(new,sur,245,196,48,48,0,0)
sprite_assign(spr_char_finish,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,245,48,48,0,0,24,0)//Pound
sprite_add_from_surface(new,sur,49,245,48,48,0,0)
sprite_assign(spr_char_pound,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,147,245,48,48,0,0,24,0)//Defend
sprite_add_from_surface(new,sur,196,245,48,48,0,0)
sprite_assign(spr_char_defend,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,0,294,48,48,0,0,24,0)//Duck
sprite_assign(spr_char_duck,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,98,294,48,48,0,0,37,0)//Wall Slide
sprite_assign(spr_char_wall_slide,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,196,294,48,48,0,0,24,0)//Hit
sprite_assign(spr_char_hit,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,294,294,48,48,0,0,24,0)//Skid
sprite_assign(spr_char_skid,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,278,0,32,32,0,0,0,12)//Overworld Down
sprite_add_from_surface(new,sur,311,0,32,32,0,0)
sprite_add_from_surface(new,sur,344,0,32,32,0,0)
sprite_add_from_surface(new,sur,377,0,32,32,0,0)
sprite_assign(spr_mapchar_2,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,278,33,32,32,0,0,0,12)//Overworld Up
sprite_add_from_surface(new,sur,311,33,32,32,0,0)
sprite_add_from_surface(new,sur,344,33,32,32,0,0)
sprite_add_from_surface(new,sur,377,33,32,32,0,0)
sprite_assign(spr_mapchar_8,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,278,66,32,32,0,0,0,12)//Overworld Side
sprite_add_from_surface(new,sur,311,66,32,32,0,0)
sprite_add_from_surface(new,sur,344,66,32,32,0,0)
sprite_add_from_surface(new,sur,377,66,32,32,0,0)
sprite_assign(spr_mapchar_6,new)
sprite_delete(new)
new = sprite_create_from_surface(sur,278,99,32,26,0,0,0,0)//Lives Icon
sprite_assign(spr_lives_icon,new)
sprite_delete(new)
surface_reset_target()
surface_free(sur)