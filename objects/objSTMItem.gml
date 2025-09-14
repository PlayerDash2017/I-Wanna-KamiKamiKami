#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
init = true;

event_user(0);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
while(init){
    if (place_meeting(x,y,Block)){
        event_user(0);
    } else {
        init = false;
        break;
    }
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (init) exit;

with(objSTMSystem){
    Letter = other.image_index;
    event_user(0);
}

sound_play("get_item");
instance_destroy();
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;
for (i = 0; i < 6; i += 1)
{
    if (objSTMSystem.LetterID[i] == image_index){
        instance_destroy();
    }
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = irandom_range(32,736);
y = irandom_range(736,room_height-64);
