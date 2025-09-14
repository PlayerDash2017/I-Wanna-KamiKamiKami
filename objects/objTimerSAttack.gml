#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a=1
c=0
z=0
v=0

alarm[0]=room_speed
alarm[1]=room_speed
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if a=-1
{position_destroy(x,y)
{sound_play("boss_hit")
player_kill()}}
alarm[0]=1
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1]=room_speed
if v=0
{a-=1
v=60}
v-=1
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_color(c_black)
draw_set_font(fScoreAttack)

draw_text(x-40,y-6,z)
draw_text(x-10,y-6,z)
draw_text(x,y-6,a)
draw_text(x+24,y-6,v)
