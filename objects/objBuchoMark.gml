#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha = 0.5;
x = irandom(800);
y = irandom(608);
Timer = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer += 1;

switch (Timer)
{
    case 300:
        visible = true;
    break;
    case 400:
        with(objBuchoShoot){
            x = other.x;
            y = other.y;
        }
        x = irandom(800);
        y = irandom(608);
        visible = false;
        sound_play("block_change");
        Timer = 0;
    break;
}
