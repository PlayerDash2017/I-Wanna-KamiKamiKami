#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
xTile = 0;
yTile = 0;
Spd = random_range(5,10)
gravity = 0.1;
direction = random(45);
speed = Spd*1.1;

sound_stop("block_break");
sound_play("block_break");
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_angle += Spd;
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_background_general(bDefaultTiles,xTile,yTile,32,32,x,y,1,1,image_angle,c_white,c_white,c_white,c_white,1)
