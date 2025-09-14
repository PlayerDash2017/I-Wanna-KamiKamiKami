#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
vspeed = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(400,304,objStageClear);
#define Collision_objBoss2Miku
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_stop_all();
sound_play("player_death");
instance_create(x,y,BloodEmitter);
instance_destroy_id(other);
alarm[0] = 20;
