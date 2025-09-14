#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
On = irandom(1);

event_user(0);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
On = !On;

if (On){
    sprite_index = sprKTGLaserV;
    image_speed = 0.7;
    mask_index = sprite_index;
} else {
    sprite_index = sprKTGLaserVOff;
    image_speed = 0.1;
    mask_index = sprEmpty;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;
for (i = 0; i < image_yscale; i += 1)
    draw_sprite(sprite_index,-1,x,y+i*32);
