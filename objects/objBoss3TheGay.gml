#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 450;
alarm[2] = 450+175*3+round(175/2)
Dead = false;
sound_play("boss3_thegay");
music_play("boss3",true);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,objBoss3Bullet);
sound_play("boss3_shoot");
alarm[0]=175;
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(400,304,objStageClear);
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Dead){
image_angle+=30
vspeed=16
}
#define Collision_objBoss3Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (other.Kill) event_user(0);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!Dead){
    Dead = true;
    sound_play("boss3_noo");
    music_stop();
    alarm[1] = 80;
}
