#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var Vis;
Vis = true;
if (!instance_exists(obj500Item) && instance_exists(obj500Timer))
    Vis = false;

visible = Vis;
mask_index = ternary(visible,sprite_index,sprEmpty);
