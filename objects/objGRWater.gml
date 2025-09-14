#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Angle = irandom(360);
Spd = random_range(1,3)*choose(-1,1);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Angle += Spd;
x = xstart + lengthdir_x(32*3,Angle);
y = ystart + lengthdir_y(32*3,Angle);
