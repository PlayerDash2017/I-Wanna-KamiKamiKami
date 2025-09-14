#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
global.gradius = false;
with(Player){
    player_set_mask();
    grav = 0.4;
    run_speed = 3;
}
sound_play("block_change");
instance_destroy();
