#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale=10
image_yscale=10

if (instance_exists(Player)){
    direction = point_direction(x,y,Player.x,Player.y);
    speed = 4;
}

z=0
Kill = false;
#define Collision_Block
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(Player)){
    direction = point_direction(x,y,Player.x,Player.y);
    speed = 4;
}
z+=1
if z=15
{instance_destroy()}

sound_play("boss3_bounce")
Kill = true;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
