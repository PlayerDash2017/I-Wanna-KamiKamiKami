#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

background = bTilesStage4;
upSpike = noone;
downSpike = noone;

if (place_meeting(x,y,objRandDestroyer) || place_meeting(x,y,Warp) || place_meeting(x,y,objFinalBossWarpTimer)){
    instance_destroy();
    exit;
}

upSpike = instance_create(x,y,objCQSpike);
upSpike.image_index = 0;

if (room == rFinalBossCQ) exit;
downSpike = instance_create(x,y,objCQSpike);
downSpike.image_index = 1;
#define Destroy_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (upSpike != noone) instance_destroy_id(upSpike);
if (downSpike != noone) instance_destroy_id(downSpike);
