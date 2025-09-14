#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0);
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var Jumpscare;
Jumpscare = save_get("deaths") mod 3;//irandom(2);
if (Jumpscare == 0){
    alarm[0] = 25;
    sound_play("dt_uh");
    instance_destroy_id(Player);
    instance_create(0,0,objDT_Jumpscare);
} else {
    event_user(0);
}
