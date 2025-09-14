#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
init = false;
x = irandom((room_width-32)/32)*32 + 16;
y = irandom((room_height-32)/32)*32 + 16;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var freePlace;

while(!init){
    freePlace = (place_meeting(x,y,Block) || place_meeting(x,y,objRandDestroyer) || place_meeting(x,y,PlayerKiller) || place_meeting(x,y,objWHGCoin));
    if (freePlace){
        x = irandom((room_width-32)/32)*32 + 16;
        y = irandom((room_height-32)/32)*32 + 16;
    } else {
        init = true;
        break;
    }
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (init){
    sound_play("block_change");
    instance_destroy();
}
