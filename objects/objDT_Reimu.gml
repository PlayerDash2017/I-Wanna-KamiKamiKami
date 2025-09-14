#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Fake = true;
xScale = choose(-1,1);
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (speed == 0){
    direction = 90*irandom(3);
    speed = 3;
    image_speed = 1/8;
    image_index = random(1);
    alarm[0] = irandom_range(50,100);
}
else
{
    image_speed = 0;
    image_index = 0;
    speed = 0;
    alarm[0] = irandom_range(1,150);
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!visible){
    if (Fake){
        sprite_index = sprDT_ReimuFake;
        image_blend = make_color_hsv(random(255),random(255),255);
    } else {
        depth += 1;
    }
    alarm[0] = irandom_range(1,150);
    visible = true;
}
#define Step_2
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (speed != 0){
    if (place_meeting(x+hspeed,y,Block) || place_meeting(x+hspeed,y,objBruteDTBlock)) hspeed = -hspeed;
    if (place_meeting(x,y+vspeed,Block) || place_meeting(x,y+vspeed,objBruteDTBlock)) vspeed = -vspeed;

    if (hspeed != 0) xScale = sign(hspeed);
}
#define Mouse_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!Fake){
    if (room != rBruteOfAMan){
        sound_play("block_change");
        instance_create(x-16,y-16,objDT_WarpTroll);
        instance_destroy();
    } else {
        with(objDT_Reimu) instance_destroy();
        with(objBruteDTWall) instance_destroy();
        background_alpha[0] = 1;
        sound_play("player_death");
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_sprite_ext(sprite_index,-1,x,y,xScale,1,0,image_blend,1);
