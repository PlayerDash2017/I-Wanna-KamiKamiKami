#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(Player)){
    image_alpha = 1 - place_meeting(x,y,Player)*0.5;
} else {
    image_alpha = 1;
}
