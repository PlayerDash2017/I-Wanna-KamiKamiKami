#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed=1/6;
x = irandom_range(64,500);
h = 0;

if (y == 320) sprite_index = sprPYFShurikenFlip;
if (y == 448+32) depth = -16;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=115
applies_to=self
invert=0
arg0=0
arg1=0
*/
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field h: number

hspeed = h;
