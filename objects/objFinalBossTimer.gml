#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

a=0
c=0
z=0
v=10
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(Player){
    if (place_meeting(x,y,objFinalBossWarpTimer)) exit;
}

if a=-1
{instance_destroy()
{sound_play("boss_hit")
player_kill()}}
alarm[0]=1
