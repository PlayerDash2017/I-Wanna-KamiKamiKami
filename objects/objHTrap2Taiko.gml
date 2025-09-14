#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = irandom_range(0,800);
y = irandom_range(50,150);

image_speed = 0;
image_index = 1;

speed = 4;
direction = irandom(360);
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i, Ran;

Ran = irandom(360);
if (instance_exists(Player))
    Ran = point_direction(x,y,Player.x,Player.y);

for (i = 0; i < 360; i += 360/6)
{
    a = instance_create(x,y,Cherry);
    a.sprite_index = sprite_index;
    a.image_speed = 0;
    a.direction = i + Ran;
    a.speed = 4;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = modwrap(x,0,room_width);
y = modwrap(y,0,room_height);
