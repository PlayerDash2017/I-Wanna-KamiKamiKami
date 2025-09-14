#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (hspeed == 0){
    hspeed = -1;
    image_speed = 1/3;
}
other.vspeed = -13;
other.air_jumps = 1;

instance_destroy_id(objBoshySign);
#define Collision_Block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
hspeed = 0;
image_speed = 0;
