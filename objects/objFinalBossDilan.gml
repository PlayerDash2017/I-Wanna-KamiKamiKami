#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
tRan = irandom(360);
alarm[0] = irandom_range(1,50);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Ran = irandom(360);
for (i=0; i<360; i+=360/10)
{
    a = instance_create(x,y,Cherry);
    a.speed = 5;
    a.direction = i+Ran;
}

alarm[0] = irandom_range(15,50);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (gravity == 0){
    y = lerp(y,608-64,0.1);
}

t = current_time/16
x = 400+lengthdir_x(300,t+tRan);
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (gravity != 0) instance_destroy();
