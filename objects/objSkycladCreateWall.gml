#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
On = true;
Dir = 90;
Spr = sprSpikeUp;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(x,y,Cherry);
a.direction = Dir;
a.speed = 2;
a.sprite_index = Spr;
a.depth = 1100;

alarm[0] = 15;
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = On;
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
On = !On;
alarm[0] = On;
