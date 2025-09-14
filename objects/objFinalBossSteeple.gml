#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!instance_exists(Player)) exit;

if (sign(hspeed) == -1){
    if (Player.x > x){
        hspeed = 0;
        vspeed = 10;
        sound_play("cherry_trap");
    }
}
else if (sign(hspeed) == 1){
    if (Player.x < x){
        hspeed = 0;
        vspeed = 10;
        sound_play("cherry_trap");
    }
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
