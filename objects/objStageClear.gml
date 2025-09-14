#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;
Act[0] = false;
Act[1] = false;
Timer = 0;
Sound = "win_stage1";

switch (room)
{
    case rBoss1:
        image_index = 0;
        Sound = "win_stage1";
    break;
    case rBoss2:
        image_index = 1;
        Sound = "win_stage2";
    break;
    case rBoss3:
        image_index = 2;
        Sound = "win_stage3";
    break;
    case rBoss4:
        image_index = 3;
        Sound = "win_stage4";
    break;
    case rBoss5:
        image_index = 4;
        Sound = "";
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer += 1;
switch (Timer)
{
    case 100:
        if (Sound != "")
            { sound_play(Sound); }
        Act[0] = true;
    break;
    case 150:
        Act[1] = true;
    break;
    case 250:
        instance_create(0,0,objFadeLight);
        with(Player) instance_destroy();
        room_goto(room_next(room));
    break;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var i;
for (i = 0; i <= 1; i += 1)
    draw_sprite_part_ext(sprite_index,image_index,0,i*100,200,100,x-100,y-100+100*i,1,1,c_white,Act[i]);
