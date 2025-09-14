#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Spd = 1/200;
image_alpha = 0;
roomID = room_next(room);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha += Spd;
if (image_alpha >= 1.1 && Spd > 0){
    Spd = -Spd;
    room_goto(roomID);
} else if (image_alpha < 0 && Spd < 0) {
    instance_destroy();
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (roomID != room) instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(spr1x1,0,view_xview,view_yview,800,608,0,c_black,image_alpha);
