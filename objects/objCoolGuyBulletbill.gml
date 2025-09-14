#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(Player)){
    if (Player.y < y+32 && hspeed == 0){
        gravity = random_range(0.0000000001,ternary(room!=rBruteOfAMan,0.5,0.45));
        gravity_direction = 90+90*-image_xscale;
        sound_play("coolguy_bullet");
    }
}
