#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.gradius = true;
with (Player) {
    player_set_mask();
    run_speed = 5;
    grav = 0;
    x = other.x;
    y = other.y;
}

with(objHTrap1Camera) hspeed = 2;

instance_destroy();
