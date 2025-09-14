#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
image_index = irandom(2);
image_alpha = 0.8;
hspeed = -4;
alarm[0] = 1;
Angle = irandom(360);
x += sprite_width/2;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

switch (image_index)
{
    case 0:
        a = instance_create(x,y,Cherry);
        a.speed = 5;
        a.direction = Angle;
        Angle += 20;
        alarm[0] = 10;
    break;
    case 1:
        Angle = irandom(360);
        for (i = 0; i < 360; i += 360/12)
        {
            a = instance_create(x,y,Cherry);
            a.speed = 5;
            a.direction = i+Angle;
            a.sprite_index = sprCherryYellow;
        }
        alarm[0] = 50;
    break;
    case 2:
        if (instance_exists(Player))
            Angle = point_direction(x,y,Player.x,Player.y);

        for (i = 0; i <= 4; i += 2){
            a = instance_create(x,y,Cherry);
            a.speed = 3+i;
            a.direction = Angle;
            a.sprite_index = sprCherryCyan;
        }
        alarm[0] = 70;
    break;
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
