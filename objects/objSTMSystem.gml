#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Index = 0;
Letter = -1;
RoomID = room;

var i;
for (i = 0; i < 6; i += 1) LetterID[i] = -1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
LetterCheck = 1;
for (i = 0; i < 5; i += 1)
    LetterCheck *= (LetterID[i] == i);

if (!instance_exists(Warp) && LetterCheck){
    instance_create(x,y+32,objWarpNext);
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (RoomID != room) instance_destroy();
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
LetterID[Index] = Letter;
Index += 1;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);
draw_set_color(c_red);
draw_set_font(fDefaultMedium);
draw_text(400,100,"Creator");

for (i = 0; i < 5; i+=1)
{
    xDraw = x+64*i-32*4;
    draw_sprite(sprSTMMark,0,xDraw,y);
    draw_sprite_ext(sprSTMItem,LetterID[i],xDraw,y,1,1,0,c_white,LetterID[i]!=-1);
}
