#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
b = 400-64;
a = instance_create(400+b*choose(-1,1),y,objCoolGuyBulletbill);
a.image_xscale = sign(x-a.x);
instance_destroy();
