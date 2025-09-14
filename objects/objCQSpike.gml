#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
alarm[0] = 1;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!image_index){
    path_start(pthLoopUp,2,path_action_stop,false);
} else {
    path_start(pthLoopDown,2,path_action_stop,false);
}
alarm[0] = 50+32;
