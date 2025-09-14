#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Tag = 0;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(Player){
    x = irandom_range(32,800-32);
    y = irandom_range(200,304);
    vspeed = 0;
    air_jumps = 1;
}

instance_destroy_id(SpikeUp);

for (i = 0; i<800; i += 32)
{
    a = instance_create(i,608-64,SpikeUp);
    a.sprite_index = ternary(irandom(1) == 0,sprSpikeUp,sprEmpty)
}

with(objFinalBossWarpTP){
    if (Tag == other.Tag) instance_destroy();
}
#define Other_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=self
invert=0
*/
