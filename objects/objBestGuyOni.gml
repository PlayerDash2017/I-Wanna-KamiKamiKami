#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hp=5
image_speed=0.5
speed=2//1//3
alarm[1] = 5;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_loop("bestguy_oni");
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if instance_number(Player)=1{
direction=point_direction(x,y,Player.x,Player.y)
}
else {
speed=0
image_angle+=17.7
if image_xscale<3 {
image_xscale+=0.01
image_yscale+=0.01
}
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop("bestguy_oni");
