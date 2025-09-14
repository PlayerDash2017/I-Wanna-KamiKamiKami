#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_index = irandom(image_number - 1);
image_speed = 0;

direction = irandom(35) * 10;
speed = random(6);
grav = random_range(0.1, 0.3) * global.grav;
gravity = grav;
image_blend = make_color_hsv(random(255),255,255);
#define Collision_Block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
gravity = 0;
speed = 0;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
