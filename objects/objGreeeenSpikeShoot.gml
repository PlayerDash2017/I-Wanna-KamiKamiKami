#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y = ystart + irandom_range(-32,32);

Spike = instance_create(752,y,MiniSpikeLeft);

alarm[0] = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
a = instance_create(x,y,Cherry);
a.sprite_index = sprite_index;
a.hspeed = 4;

a = instance_create(Spike.x,y,Cherry);
a.sprite_index = Spike.sprite_index;
a.hspeed = -4;

alarm[0] = 40;
