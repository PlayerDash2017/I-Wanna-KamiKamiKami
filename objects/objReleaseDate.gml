#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Text = "";
Spd = 0;
Alpha = 0;
Timer = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer += 1;
switch (Timer)
{
    case 1: Text = "hola gente dela#iguana con uniti" Spd = 1/25; break;
    case 100: Spd = -1/25; break;
    case 150: Text = "para esta ocacion les precentare#la fesha de lansamiento#de este marabilloso juego" Spd = 1/25; break;
    case 300: Spd = -1/25; break;
    case 350: Text = "la fesha de lansamiento del#kamikamikami es....." Spd = 1/25; break;
    case 550: Spd = -1/25; break;
    case 600:
        background_visible[0] = true;
        Text = "FECHA DE LANSAMIENTO#10/10/2024" Spd = 1/25;
    break;
    case 850: Spd = -1/25; break;
    case 900:
        background_visible[0] = false;
        Text = "espero que les hayan gustado" Spd = 1/25; break;
    case 1050: Spd = -1/25; break;
    case 1100: Text = "recuerden darle megusta#al video y al juego" Spd = 1/25; break;
    case 1250: Spd = -1/25; break;
    case 1300: Text = "nos vemos en un prosimo juego#chao :DDDD" Spd = 1/25; break;
    case 1450: Spd = -1/25 break;
    case 1500: room_goto(rPortalRoom); break;
}

Alpha = clamp(Alpha + Spd,0,1);
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (background_visible[0]){
    draw_set_color(c_black);
    draw_set_alpha(0.3);
    draw_rectangle(0,304-50,800,304+50,false);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(0.5*Alpha);
draw_set_font(fReleaseDate);

var i;
i = 2;
repeat(2){
    draw_text(400+i,304+i,Text);
    draw_set_color(c_white);
    draw_set_alpha(Alpha);
    i = 0;
}

draw_set_alpha(1);
