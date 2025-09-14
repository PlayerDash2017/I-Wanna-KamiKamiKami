#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 96;
image_yscale = 8;
image_blend = c_aqua;

image_angle = 270-10;
direction = image_angle;
speed = random_range(2,5);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (y > 608) instance_destroy();
