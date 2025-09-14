#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer = 0;
Spd = 0;
Alpha = 0;
Type = "Normal";

Scale = 0;
Alpha2 = 0;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer += 1;
switch (Timer)
{
    case 1: Text = "Hello guys"; Spd = 1/25; break;
    case 100: Spd = -1/25; break;
    case 150: Text = "here in a new youtube video"; Spd = 1/25; break;
    case 300: Spd = -1/25; break;
    case 350: Text = "today is a special day"; Spd = 1/25; break;
    case 500: Spd = -1/25; break;
    case 550: Text = "i will show you a teaser#of a new project"; Spd = 1/25; break;
    case 700: Spd = -1/25; break;
    case 750: Text = "here's a look at the teaser"; Spd = 1/25; break;
    case 900: Spd = -1/25; break;
    case 950:
        background_visible[0] = true;
        Type = "Zoom"; Scale = 0; Alpha2 = 0;
        Text = ":O"; Spd = 1/25;
    break;
    case 1200: Spd = -1/25; break;
    case 1250:
        background_index[0] = bTeaserB;
        Scale = 0; Alpha2 = 0;
        Text = "!!!!"; Spd = 1/25;
    break;
    case 1400: Spd = -1/25; break;
    case 1450:
        background_visible[0] = false;
        Type = "Normal";
        Text = "is still in#the idea phase";
        Spd = 1/25;
    break;
    case 1600: Spd = -1/25; break;
    case 1650:
        Text = "but i hope you#like the idea :D"; Spd = 1/25;
    break;
    case 1800: Spd = -1/25; break;
    case 1850:
        Text = "and well people#i hope you liked#the video and the game."; Spd = 1/25;
    break;
    case 2000: Spd = -1/25; break;
    case 2050:
        Text = "see you in a future game#bye :DDDDDD"; Spd = 1/25;
    break;
    case 2250: Spd = -1/25; break;
    case 2300:
        Text = "Let the boddies hit the floor#repotente ver#by mauriciojuegaiwbt"; Spd = 1/25;
    break;
    case 2550: Spd = -1/25; break;
    case 2600:
        background_color = c_black;
        Type = "Zoom"; Scale = 0; Alpha2 = 0;
        Text = "please#subscribe"; Spd = 1/25;
    break;
    case 2850: Spd = -1/25; break;
    case 2900: room_goto(rPortalRoom); break;
}

Alpha = clamp(Alpha + Spd,0,1);

Scale += Spd;
if (Scale > 1) Alpha2 -= Spd;
else Alpha2 += Spd;
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(0.5*Alpha);
draw_set_font(fReleaseDate);

if (Type == "Normal"){
    var i;
    i = 2;
    repeat(2){
        draw_text(400+i,304+i,Text);
        draw_set_color(c_white);
        draw_set_alpha(Alpha);
        i = 0;
    }
}
else
{
    draw_set_font(fTeaser);
    draw_set_alpha(Alpha);
    draw_set_color(c_white);
    draw_text_transformed(400,304,Text,min(Scale,1),min(Scale,1),0);

    draw_set_alpha(Alpha2);
    draw_text_transformed(400,304,Text,Scale,Scale,0);
}

draw_set_alpha(1);
