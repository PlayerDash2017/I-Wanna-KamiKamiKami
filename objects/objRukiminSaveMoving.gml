#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a=0
alarm[0]=5
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a=1
alarm[1]=5
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a=0
alarm[0]=5
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
sprite_index=sprRukiminSaveStop
if !instance_exists(Player) exit
if point_distance(x,y,Player.x,Player.y)<300
{x+=3
if a=0
{sprite_index=sprRukiminSaveMove
image_index=0}
if a=1
{sprite_index=sprRukiminSaveMove
image_index=1}}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy_other();
