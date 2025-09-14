#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Type = 0;
Angle = irandom(360);
x = irandom_range(1408,4896);
alarm[0] = irandom_range(1,50);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

switch (Type)
{
    case 0:
        a = instance_create(x,y,objHTrap1Cherry);
        a.speed = 5;
        a.direction = Angle;
        Angle += 20;
        alarm[0] = 10;
    break;
    case 1:
        sprite_index = sprCherryYellow;
        Angle = irandom(360);
        for (i = 0; i < 360; i += 360/12)
        {
            a = instance_create(x,y,objHTrap1Cherry);
            a.speed = 5;
            a.direction = i+Angle;
            a.sprite_index = sprite_index;
        }
        alarm[0] = 50;
    break;
    case 2:
        sprite_index = sprCherryCyan;
        if (instance_exists(Player))
            Angle = point_direction(x,y,Player.x,Player.y);

        for (i = 0; i <= 2; i += 2){
            a = instance_create(x,y,objHTrap1Cherry);
            a.speed = 3+i;
            a.direction = Angle;
            a.sprite_index = sprite_index;
        }
        alarm[0] = 70;
    break;
}
