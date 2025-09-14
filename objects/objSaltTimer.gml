#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
A = 0;
alarm[0] = 50;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
A = (A + 1) mod 4;

if (A == 0){
    sound_play("block_change");
    with(objSaltBlock) Active = !Active;
} else {
    sound_play("player_shoot");
}

if (room != rFinalBossSalt){
    alarm[0] = irandom_range(1,50);
} else {
    alarm[0] = 25;
}
