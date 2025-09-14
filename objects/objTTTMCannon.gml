#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0]=50
image_angle=irandom(360)
if (room != rFinalBossB){
    x=xstart+irandom_range(-100,100)
    y=ystart+irandom_range(-100,100)
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play_ex("tttm_shoot",0.5);
image_angle+=20
a = instance_create_moving(x,y,Cherry,random_range(3,6),image_angle);
a.sprite_index = sprTTTMBall;
alarm[0]=15
