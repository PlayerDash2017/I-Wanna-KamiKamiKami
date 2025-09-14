#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
switch (irandom(3))
{
    case 0: sprite_index = sprSpikeUp; break;
    case 1: sprite_index = sprSpikeDown; break;
    case 2: sprite_index = sprSpikeRight; break;
    case 3: sprite_index = sprSpikeLeft; break;
}

if (place_meeting(x,y,objRandDestroyer))
    instance_destroy();
