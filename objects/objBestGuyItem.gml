#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=302
invert=0
arg0=1000/2
arg1=1
*/
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(928+16,irandom(608),objBestGuyOni);

with(SaveHard){
    instance_create(x,y,objBestGuyExit);
    instance_destroy();
}

instance_destroy();
