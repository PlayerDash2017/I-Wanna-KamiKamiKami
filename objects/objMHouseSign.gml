#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
event_inherited();

if (room == rGraduateFromDT)
    { sprite_index = sprDT_Sign; }
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !display_text {
    if place_meeting(x, y, Player) && input_check_pressed(key_up) {
        display_text = true;
        vspeed = -0.5;
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

if display_text {
    draw_set_font(fDefaultSmall);
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);

    draw_text_outlined(x - 5, round(bbox_top), "Use ", c_white, c_black);
    draw_sprite_ext(sprMHouseMouse, 0, x + 10, round(bbox_top), 0.2, 0.2, 0, c_white, 1);
}
