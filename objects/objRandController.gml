#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Obj = PlayerKiller;
Count = 1;
Destroy = true;

X1 = 0;
X2 = room_width;
Y1 = 0;
Y2 = room_height;
offset = -16;
Grid = 0;
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field Count: number
//field Obj: object
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_user(0);
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var XX, YY;

repeat(Count){
    XX = irandom_range(X1,X2)+offset;
    YY = irandom_range(Y1,Y2)+offset;

    if (Grid != 0){
        XX = ((irandom_range(X1,X2)+offset) div Grid) * Grid;
        YY = ((irandom_range(Y1,Y2)+offset) div Grid) * Grid;
    }

    with(instance_create(XX,YY,Obj)){
        if (other.Destroy && (place_meeting(x,y,objRandDestroyer) || place_meeting(x,y,Warp) || place_meeting(x,y,objFinalBossWarpTimer))){
            instance_destroy();
        }
    }
}
