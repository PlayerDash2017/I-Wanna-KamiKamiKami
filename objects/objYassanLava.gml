#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;
draw_self();
for (i = y + 32; i < room_height; i += 32)
    draw_sprite(sprite_index,1,x,i)
