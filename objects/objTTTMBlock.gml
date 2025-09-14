#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = irandom(1);
image_speed = 1/75;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
solid = !floor(image_index);
mask_index = ternary(floor(image_index),sprEmpty,sprite_index);
