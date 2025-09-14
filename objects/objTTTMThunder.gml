#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play("tttm_thunder")

image_xscale=800
image_yscale=608
x=0
y=0
image_alpha=0
sprite_index=spr1x1
image_blend=c_black

instance_create(0,0,objTTTMLight)

alarm[0]=8
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,objTTTMLight)

alarm[1]=12
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,objTTTMLight)

alarm[2]=20
alarm[3]=150
#define Alarm_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha+=0.015
if image_alpha>0.9
{image_alpha=0.9}

alarm[2]=1
#define Alarm_3
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(0,0,object_index);
instance_destroy();
