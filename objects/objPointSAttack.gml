#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
x = random_range(32,room_width-32);
y = random_range(32,room_height-32);
init = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (room == rBruteOfAMan){
    x = xstart;
    y = ystart;
    init = true;
    exit;
}

while(true){
    if (place_meeting(x,y,Block) || place_meeting(x,y,objRandDestroyer)){
        x = random_range(32,room_width-32);
        y = random_range(32,room_height-32);
    } else {
        init = true;
        break;
    }
}
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (init){
    sound_play("scoreattack_item");
    instance_destroy();
}
