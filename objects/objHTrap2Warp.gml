#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play("spike_trap");
sound_play("cherry_trap");

with(SaveHard){
    instance_create(x,y,objWarpNext);
    instance_destroy();
}

instance_destroy_id(objHTrap2Taiko);
instance_destroy();
