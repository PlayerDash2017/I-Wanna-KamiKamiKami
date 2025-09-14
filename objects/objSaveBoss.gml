#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
image_xscale = 3;
image_yscale = 3;

X = 400;
Y = 304;
Obj = objBoss1;
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(X,Y,Obj);
save_save();
instance_destroy();
