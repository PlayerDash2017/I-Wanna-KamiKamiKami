#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (place_meeting(x,y,objRandDestroyer) || place_meeting(x,y,Warp)){
    instance_destroy();
    exit;
}

instance_create(x,y,VineRight);
instance_create(x,y,VineLeft);
instance_create(x,y-32,SpikeUp);
