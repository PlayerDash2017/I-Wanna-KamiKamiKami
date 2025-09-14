#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
alarm[1] = 50;

Dir = 270+irandom_range(-75,75);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(x,y,Cherry);
a.speed = 6;
a.direction = Dir;
a.sprite_index = sprite_index;
a.image_speed = 1;

sound_stop("player_shoot");
sound_play_ex("player_shoot",0.8,random_range(0.5,1));

alarm[0] = 2;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
