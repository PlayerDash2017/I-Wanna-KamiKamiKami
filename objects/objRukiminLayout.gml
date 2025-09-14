#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
image_index = irandom(image_number-2);

b = instance_create(x,y,Block);
b.sprite_index = sprRukiminLayoutSolid;
b.image_speed = 0;
b.image_index = image_index;
b.visible = true;
b.depth = 10000;
