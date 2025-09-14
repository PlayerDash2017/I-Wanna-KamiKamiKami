#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
alarm[0] = 75;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i, Ran;

Ran = irandom(360);
for (i = 0; i < 360; i += 360/ternary(room != rFinalBossA,12,8))
{
    a = instance_create(x,y,Cherry);
    a.speed = 5;
    a.direction = i + Ran;
    a.image_speed = 0;
    a.sprite_index = sprCherry;
    a.depth = depth;
}

alarm[0] = (room==rFinalBossA)*10+irandom_range(55,80);
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
