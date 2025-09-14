#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(Player)){
    direction = point_direction(x,y,Player.x,Player.y);
    speed = 1;
}
