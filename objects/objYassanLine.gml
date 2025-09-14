#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
YY = y + irandom(image_yscale-3)*32;
Savespot = instance_create(x,YY+16,objYassanSavespot);
noRand = false;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(Player){
    if (!place_meeting(x,y,objYassanSavespot)){
        player_kill();
    }
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (noRand)
    { YY = 265; Savespot.y = 265+16; }
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
for (i = 0; i<image_yscale; i += 1)
{
    Check = (y+i*32 >= YY && y+i*32 <= YY+32*2);
    draw_sprite_ext(sprite_index,0,x,y+i*32,1,1,0,c_white,!Check);
}
