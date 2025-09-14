#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
Touch = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x,y,Player) && !Touch){
    event_user(0);
}

Touch = place_meeting(x,y,Player);
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0);
instance_destroy_id(other);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(objKTGLaserH) event_user(0);
with(objKTGLaserV) event_user(0);
with(objKTGSwitch) image_index = !image_index;
