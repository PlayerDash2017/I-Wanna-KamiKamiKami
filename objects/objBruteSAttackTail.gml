#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
repeat(15){
    x += irandom_range(-7,7)*16;
    x = clamp(x,64,800-64);

    instance_create(x,y,objBruteSAttackPoint);

    y -= 32;
}
