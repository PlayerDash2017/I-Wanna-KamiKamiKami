#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Follow = true;
Type = "X";
YY = 0;
XX = 0;
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Follow && instance_exists(Player)){
    if (Type == "X"){
        x = Player.x+XX;
        y = YY;
    } else {
        x = XX;
        y = Player.y+YY;
    }
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Follow = false;
switch (sprite_index)
{
    case sprSpikeUp: vspeed = random_range(10,40)*-1; break;
    case sprSpikeDown: vspeed = random_range(10,40); break;
    case sprSpikeLeft: hspeed = random_range(10,40)*-1; break;
    case sprSpikeRight: hspeed = random_range(10,40); break;
}
