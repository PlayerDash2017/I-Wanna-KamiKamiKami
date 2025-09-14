#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
init = false;

direction = 90*irandom(3);
speed = irandom_range(2,4);

x = irandom((room_width-32)/32)*32 + 16;
y = irandom((room_height-32)/32)*32 + 16;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x+hspeed,y,Block)) hspeed = -hspeed;
if (place_meeting(x,y+vspeed,Block)) vspeed = -vspeed;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var freePlace;

while(!init){
    freePlace = (place_meeting(x,y,Block) || place_meeting(x,y,objRandDestroyer));
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
if (init) player_kill();
