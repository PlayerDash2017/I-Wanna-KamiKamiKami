#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 0;
Timer = 0;

drawName = "Sample Text";
Color[0] = c_white;
Color[1] = c_ltgray;

xView = 0;
yView = 0;
init = false;
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Name

switch (room){
    //Stage 1
    case rChokochoko:
        drawName = "Chokochoko";
        Color[0] = make_color_hsv(200,255,255);
        Color[1] = make_color_hsv(200,255,200);
    break;
    case rGGM:
        drawName = "GGM";
        Color[0] = make_color_hsv(180,255,255);
        Color[1] = make_color_hsv(180,200,255);
    break;
    case rScoreAttack:
        drawName = "ScoreAttack";
        Color[0] = c_yellow;
        Color[1] = c_white;
    break;
    case rConquerBlowGame:
        drawName = "Blow Game";
        Color[0] = c_blue;
        Color[1] = c_black;
    break;
    case rSalt:
        drawName = "Salt";
        Color[0] = merge_color(c_aqua,c_white,0);
        Color[1] = merge_color(c_aqua,c_white,0.5);
    break;
    case rPlus:
        drawName = "Plus";
        Color[0] = c_white;
        Color[1] = c_ltgray;
    break;
    case rEnjoyTheGame:
        drawName = "Enjoy The Game";
        Color[0] = c_yellow;
        Color[1] = merge_color(c_yellow,c_white,0.5);
    break;
    case rSecondChallenger:
        drawName = "Second The Challenger";
        Color[0] = merge_color(c_orange,c_white,0);
        Color[1] = merge_color(c_orange,c_white,0.1);
    break;
    case rMiddle:
        drawName = "Middle";
        Color[0] = merge_color(c_aqua,c_blue,0.5);
        Color[1] = merge_color(c_aqua,c_blue,0.6);
    break;
    case rFangame:
        drawName = "Fangame!";
        Color[0] = merge_color(c_aqua,c_white,0.5);
        Color[1] = merge_color(c_aqua,c_white,0.6);
    break;

    //Stage 2
    case rTribute:
        drawName = "Tribute";
        Color[0] = c_yellow;
        Color[1] = c_black;
    break;
    case rBestGuy:
        drawName = "Best Guy";
        Color[0] = c_gray;
        Color[1] = c_ltgray;
    break;
    case rDarkBlue:
        drawName = "Dark Blue";
        Color[0] = c_blue;
        Color[1] = merge_color(c_blue,c_white,0.5);
    break;
    case rFortressReturn:
        drawName = "Fortress Return";
    break;
    case rWinterVacation:
        drawName = "Winter Vacation";
        Color[0] = merge_color(c_aqua,c_teal,0.2);
        Color[1] = merge_color(c_aqua,c_teal,0.3);
    break;
    case rMysteriousHouse:
        drawName = "Mysterious House";
        Color[0] = c_black;
        Color[1] = c_black;
    break;
    case rParty:
        drawName = "Party!";
        Color[0] = c_yellow;
        Color[1] = c_yellow;
    break;
    case rExperience:
        drawName = "Experience";
        Color[0] = merge_color(c_red,c_black,0.5);
        Color[1] = merge_color(c_red,c_black,0.6);
    break;
    case rYellowStar:
        drawName = "Yellow Star";
        Color[0] = c_yellow;
        Color[1] = merge_color(c_yellow,c_white,0.1);
    break;
    case rGraduateFromDT:
        drawName = "Graduate From DT";
        Color[0] = c_red;
        Color[1] = merge_color(c_red,c_white,0.1);
    break;

    //Stage 3
    case rGreeeen:
        drawName = "GReeeeN";
        Color[0] = c_lime;
        Color[1] = merge_color(c_lime,c_white,0.1);
    break;
    case rRunTheTerminal:
        drawName = "Run The Terminal";
        Color[0] = c_orange;
        Color[1] = c_orange;
    break;
    case rMagicGirl:
        drawName = "Magic Girl";
        Color[0] = c_red;
        Color[1] = c_red;
    break;
    case rGreenMoon:
        drawName = "Green Moon";
        Color[0] = c_green;
        Color[1] = c_green;
    break;
    case rYassan:
        drawName = "Yassan(21)";
        Color[0] = c_white;
        Color[1] = merge_color(c_white,c_ltgray,0.5);
    break;
    case rGuy:
        drawName = "GUY";
        Color[0] = c_purple;
        Color[1] = c_purple;
    break;
    case rRukimin:
        drawName = "Rukimin";
        Color[0] = c_purple;
        Color[1] = c_purple;
    break;
    case rTimeMachine:
        drawName = "Time Machine";
        Color[0] = c_ltgray;
        Color[1] = c_gray;
    break;
    case rHeavenTrap2:
        drawName = "HeavenTrap 2";
        Color[0] = c_white;
        Color[1] = c_white;
    break;
    case r500:
        drawName = "500";
        Color[0] = make_color_hsv(85,129,255);
        Color[1] = make_color_hsv(85,8,249);
    break;

    //Stage 4
    case rSeeTheMoon:
        drawName = "See The Moon";
        Color[0] = c_white;
        Color[1] = c_ltgray;
    break;
    case rCQ:
        drawName = "CQ"
        Color[0] = merge_color(c_purple,c_white,0.2);
        Color[1] = merge_color(c_purple,c_black,0.5);
    break;
    case rCoolGuy:
        drawName = "Cool Guy";
        Color[0] = c_aqua;
        Color[1] = c_white;
    break;
    case rSkyclad:
        drawName = "Skyclad";
        Color[0] = c_blue;
        Color[1] = merge_color(c_blue,c_white,0.5);
    break;
    case rBucho:
        drawName = "Bucho";
        Color[0] = c_purple;
        Color[1] = c_purple;
    break;
    case rKillTheGuy:
        drawName = "Kill The Guy";
        Color[0] = c_gray;
        Color[1] = c_gray;
    break;
    case rHeavenTrap1:
        drawName = "HeavenTrap";
        Color[0] = c_red;
        Color[1] = c_purple;
    break;
    case rPlayWHG:
        drawName = "Play THE WORLD'S... HARDEST GAME";
        Color[0] = merge_color(c_blue,c_white,0);
        Color[1] = merge_color(c_blue,c_white,0.2);
    break;
    case rGB:
        drawName = "MedlMedlMedl";
        Color[0] = merge_color(c_orange,c_white,0);
        Color[1] = merge_color(c_orange,c_white,0.5);
    break;
    case rPhantom:
        drawName = "Phantom";
        Color[0] = c_red;
        Color[1] = c_red;
    break;

    //Stage 5
    case rPYF:
        drawName = "PYF";
        Color[0] = merge_color(c_aqua,c_white,0);
        Color[1] = merge_color(c_aqua,c_white,0.2);
    break;
    case rSadist:
        drawName = "Sadist";
        Color[0] = c_yellow;
        Color[1] = c_yellow;
    break;
    case rBoshy:
        drawName = "Boshy";
        Color[0] = c_lime;
        Color[1] = c_lime;
    break;
    case rGR:
        drawName = "GR";
        Color[0] = c_black;
        Color[1] = c_black;
    break;
    case rBruteOfAMan:
        drawName = "Brute of a Man";
        Color[0] = c_red;
        Color[1] = merge_color(c_red,c_black,0.5);
    break;

    //Lasted Rooms
    case rMStage:
        drawName = "M-Stage";
        Color[0] = c_ltgray;
        Color[1] = c_gray;
    break;
    case rPortalRoom:
        drawName = "Portal Room";
        Color[0] = c_aqua;
        Color[1] = c_blue;
    break;

    //Misc
    case rBoss1: case rBoss2: case rBoss3: case rBoss4: case rBoss5:
    case rFinalBossA: case rFinalBossSalt: case rFinalBossDarkBlue:
    case rFinalBossB: case rFinalBossRTT: case rFinalBossCQ:
    case rFinalBossC: case rFinalBossCheckpoint:
    case rFinalBossFalling: case rFinalBossCutscene:
    case rKamilia1: case rEnding: case rSkycladTroll:
    case rReleaseDate: case rTeaser:
        instance_destroy();
    break;
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Timer <= 200 && image_xscale < 1){
    image_angle += 3.6;
    image_xscale += 0.01;

    image_angle = clamp(image_angle,0,360);
    image_xscale = clamp(image_xscale,0,1);
} else if (Timer > 200){
    image_xscale -= 0.03;

    if (image_xscale < 0)
        instance_destroy();
}

Timer += 1;

if (!init){
    init = true;
    xView = global.camera_x;
    yView = global.camera_y;
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var Name, drawX, drawY;
Name = "- "+string(drawName)+" -";

draw_set_font(fTitleCard);
drawX = string_width(Name)/2;
drawY = string_height(Name)/2;

if (room = r500) drawX += 32;

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_text_ext_transformed(40+xView+drawX+2,
                          16+yView+drawY+2,
                          Name,
                          10,
                          800,
                          image_xscale,
                          image_yscale,
                          image_angle);
draw_set_alpha(1);

draw_text_ext_transformed_color(40+xView+drawX,
                                 16+yView+drawY,
                                 Name,
                                 10,
                                 800,
                                 image_xscale,
                                 image_yscale,
                                 image_angle,
                                 Color[0],
                                 Color[1],
                                 Color[1],
                                 Color[0],
                                 1);
