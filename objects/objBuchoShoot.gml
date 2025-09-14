#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;
alarm[1] = 50;

x = irandom(608);
y = irandom(608);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 4;

a = instance_create(x,y,Cherry);
a.image_speed = 1;
a.direction = random(360);
a.speed = random_range(4,6);
#define Alarm_1
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[1] = 50;

if (instance_exists(Player)){
    a = instance_create(x,y,Cherry);
    a.image_speed = 1;
    a.direction = point_direction(x,y,Player.x,Player.y);
    a.speed = 5;
    a.sprite_index = sprCherryYellow;
}
