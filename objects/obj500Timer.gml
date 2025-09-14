#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer = 500;
roomID = room;
alarm[0] = 50;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer -= 1;
alarm[0] = 50;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Timer < 0){
    instance_destroy();
    instance_destroy_id(Player);
    sound_play("spike_trap");
    var i;
    for (i = 0; i < 3; i += 1) global.Item500[i] = false;
    global.save_autosave = true;
    room_goto(r500);
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (roomID != room){
    instance_destroy();
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///do nothing
#define Trigger_Draw GUI
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_color(c_white);
draw_rectangle(0,0,64,32,false);

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fDefaultMedium);
draw_text(32,16,Timer);
