#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = room_width;
image_yscale = room_height;
image_alpha = 0;

Spd = 1/150;
roomID = room_next(room);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha += Spd;

if (image_alpha > 1.5){
    Spd = -1/50;
    image_alpha = 1;
    instance_destroy_id(Player);
    global.killer_room_border = true;
    room_goto_next();
} else if (image_alpha < 0){
    instance_destroy();
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (roomID != room) instance_destroy();
