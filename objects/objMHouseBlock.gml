#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
MouseMode = false;
image_xscale = 2;
image_yscale = 2;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!mouse_check_button(mb_left))
    { MouseMode = false; }

if (MouseMode){
    x = mouse_x-32;
    y = mouse_y-32;
}
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
MouseMode = true;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

var Alpha;
Alpha = 0;
if (x == xstart && y == ystart)
    { Alpha = ((current_time/16) div 50) mod 2; }

draw_sprite_ext(sprMHouseCursor,0,x+sprite_width/2,y+sprite_height/2,2,2,0,c_white,Alpha*0.3);
