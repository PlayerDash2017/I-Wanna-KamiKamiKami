#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
IdSteeple = id;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(IdSteeple){
    if (other.image_xscale > 1) hspeed = sign(Player.x-x)*11;
    else vspeed = sign(Player.y-y)*11;
    event_user(0);
}
