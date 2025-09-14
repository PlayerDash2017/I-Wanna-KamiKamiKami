#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!config_get("titlecard")){
    instance_destroy();
    exit;
}

sound_stop("spike_trap");
sound_play_ex("spike_trap",0.8,1 + random_range(-0.15, 0.15));

image_alpha = 0;
Alpha = 1;
alarm[0] = 75;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Alpha = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_alpha += (Alpha - image_alpha) / 5;

if (Alpha == 0 && image_alpha <= 0)
    instance_destroy();
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

draw_set_alpha(image_alpha);
draw_set_font(fSans12);
draw_set_halign(fa_center);
draw_text_outlined(x,y+50,"Kami2Kami2Kami2",c_white,c_black);
draw_set_alpha(1);
