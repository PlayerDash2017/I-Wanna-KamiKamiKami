#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;

Type = "X";
repeat(2){
    for (i = -2; i <= 2; i += 1)
    {
        a = instance_create(x,y,objBlowGameSpikes);
        a.Type = Type;

        b = instance_create(x,y,objBlowGameSpikes);
        b.Type = Type;

        if (Type == "X"){
            a.XX = i*32;
            a.YY = -32;
            a.sprite_index = sprSpikeDown;

            b.XX = i*32;
            b.YY = room_height;
            b.sprite_index = sprSpikeUp;
        } else {
            a.YY = i*32;
            a.XX = -32;
            a.sprite_index = sprSpikeRight;

            b.YY = i*32;
            b.XX = room_width;
            b.sprite_index = sprSpikeLeft;
        }
    }
    Type = "Y";
}

x = random_range(xstart,room_width-32);
#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(objBlowGameSpikes){
    event_user(0);
}
sound_play("spike_trap");
instance_destroy();
