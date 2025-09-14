#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_exists(obj500Timer))
    { instance_destroy(); exit; }

var i;
for (i = 0; i < 3; i += 1) global.Item500[i] = false;
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!instance_exists(obj500Timer))
    { instance_create(x,y,obj500Timer); sound_play("block_change"); }
instance_destroy();
