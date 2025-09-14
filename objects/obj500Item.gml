#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (global.Item500[x div 800])
    { instance_destroy(); }
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 1 - 0.5 * (!instance_exists(obj500Timer));
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (image_alpha == 1){
    global.Item500[x div 800] = true;
    sound_play("get_item");
    instance_destroy();
}
