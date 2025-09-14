#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/5;
#define Collision_objGuySpikeWall
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (speed == 0 && instance_exists(Player)){
    speed = random_range(4,10);
    direction = point_direction(x,y,Player.x,Player.y);
    sound_play("cherry_trap");
}
