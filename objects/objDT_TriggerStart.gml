#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0);
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(Player){
    vspeed = 0;
    x = xstart;
    y = ystart;
}

sound_play("block_change");
instance_destroy_id(SaveHard);
instance_destroy_id(objMHouseSign);

Fake = false;
repeat(200){
    a = instance_create(irandom_range(64,800-64),irandom_range(64,608-64),objDT_Reimu);
    a.Fake = Fake;

    Fake = true;
}

tile_layer_delete(1000);
background_alpha[0] = 0.5;

instance_destroy();
