#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x,y,objRandDestroyer)){
    instance_destroy();
    Act = false;
    exit;
}

Act = true;
Spike = instance_create(x,y,SpikeUp);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Act && place_meeting(x,y-1,Player)){
    Act = false;
    with(Spike) path_start(pthSpikeUp,0.9,path_action_stop,false);
}
