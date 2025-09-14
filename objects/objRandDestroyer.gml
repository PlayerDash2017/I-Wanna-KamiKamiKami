#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
depth = 2000005;
A = 0;
Vis = true;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!Vis) exit
image_alpha = lengthdir_y(0.5,A*3);
A += 1;

draw_set_alpha(image_alpha*0.5);
draw_set_color(c_white);
draw_rectangle(x,y,x+(image_xscale*32)-1,y+(image_yscale*32)-1,false);
draw_set_alpha(1);
