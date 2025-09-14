#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
alarm[0] = 1;

repeat(30){
    A = instance_create(64+irandom(room_width),irandom(room_height),objMagicGirlLine);
    with(A){
        if (place_meeting(x,y,objRandDestroyer)) instance_destroy();
    }
}
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(64+irandom(room_width),-100,objMagicGirlLine);

alarm[0] = 3;
