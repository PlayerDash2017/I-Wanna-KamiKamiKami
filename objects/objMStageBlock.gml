#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var _Vis;
_Vis = false;
with(Player){
    _Vis = place_meeting(x,y,objMStageEye);
}

if (_Vis){
    visible = true;
} else {
    mstage_effect();
}
