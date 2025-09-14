#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
depth = 10;
Color = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Color){
    image_blend = make_color_hsv(current_time/16,255,255);
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!Color){
    with(Player){
        frozen = true;
        grav = 0;
        speed = 0;
    }
    Color = true;
    sound_play("get_item");
}
