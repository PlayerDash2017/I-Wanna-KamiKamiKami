#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = irandom(1);
image_speed = 0;
Tag = 0;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (image_index){
    instance_destroy();
    with(object_index){
        if (Tag == other.Tag) instance_destroy();
    }
} else {
    player_kill();
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
