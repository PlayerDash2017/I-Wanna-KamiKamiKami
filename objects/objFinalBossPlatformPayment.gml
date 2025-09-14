#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 50;
image_alpha = 0.5;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop("block_change");
sound_play("block_change");

a = instance_create(x,y,Platform);
a.vspeed = random_range(2,10)*choose(-1,1);

instance_destroy();
