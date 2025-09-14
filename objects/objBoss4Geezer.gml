#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Text = "";
Timer = 0;
image_speed = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (!instance_exists(Player)) exit;

Timer += 1;

if (Timer == 25){
    Text = "HEY KID!"
}

if (Timer == 50*2){
    Text = "WHAT SUP"
}

if (Timer == 50*4){
    Text = "WANT TO SEE SOMETHING FUNNY?"
}

if (Timer == 50*6){
    Text = "";
    with(objBoss4Rickroll) visible = true;
    music_play("rickroll",true);
}

if (Timer = 50*13){
    with(objBoss4Rickroll) instance_destroy();
    image_index = 1;
    music_stop();
}

if (Timer == 50*14){
    instance_create(400,304,objStageClear);
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fGeezer);
draw_set_color(c_black);
draw_text(400,500,Text);
