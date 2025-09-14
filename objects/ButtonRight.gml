#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

init = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!init && room == rPlus){
    while(true){
        x = irandom_range(32,room_width-64);
        y = irandom_range(32,608-32);
        if (!place_meeting(x,y,Block)) break;
    }
    init = true;
}
