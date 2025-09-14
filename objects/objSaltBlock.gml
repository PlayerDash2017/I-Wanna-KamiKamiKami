#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Active = true;
sprite_index = choose(sprSaltRed,sprSaltBlue);
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = (Active + (sprite_index=sprSaltBlue)) mod 2;

mask_index = ternary(!image_index,sprite_index,sprEmpty);
