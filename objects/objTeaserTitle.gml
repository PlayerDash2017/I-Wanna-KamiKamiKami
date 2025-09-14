#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Border = 1;
alarm[0] = 100;
image_alpha = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(objTeaserReimu) image_index = 1;
image_alpha = 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Border = lerp(Border,0,0.2);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

draw_sprite_ext(spr1x1,0,0,0,800,304*Border,0,c_black,1);
draw_sprite_ext(spr1x1,0,0,608,800,-304*Border,0,c_black,1);
