#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Jump = 0;
music_play("boss1",true);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(400,304,objStageClear);
instance_destroy();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (input_check_pressed(key_jump) && !visible && alarm[0] == -1) {
    Jump += 1
    if (Jump >= 2){
        visible = true;
        sound_play("boss1_error")
    }
}
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (alarm[0] == -1){
    alarm[0] = 30;
    visible = false;
    sound_play("player_death");
    music_stop();
    instance_create(x,y,BloodEmitter);
}
