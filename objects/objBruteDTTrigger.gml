#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sound_play("block_change");
background_alpha[0] = 0.5;
Fake = false;
repeat(50){
    a = instance_create(irandom_range(96,800-96),irandom_range(96,400),objDT_Reimu);
    a.Fake = Fake;

    Fake = true;
}

instance_destroy();
