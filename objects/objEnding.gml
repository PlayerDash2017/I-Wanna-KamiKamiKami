#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
y = 608+20;
vspeed = -1;

//I Wanna スコアアタック
GameList[0]="I Wanna Be The Chokochoko
I Wanna Be The GGM

I Wanna Conquer The Blow Game
I Wanna Be The Salt
I Wanna Be The Plus
I Wanna Enjoy The Game
I Wanna Second The Challenger
I Wanna Be The Middle
I Wanna Be The Fangame!"

GameList[1]="I Wanna Be The Tribute
I Wanna Be The Best Guy
I Wanna Be The Dark Blue
I Wanna Be The Fortress Return
I Wanna Congratulate Winter Vacation
I Wanna Escape The Mysterious House
I Wanna Be The Party!
I Wanna Be The Experience
I Wanna Get The Yellow Star
I Wanna Graduate From DT"

GameList[2]="I Wanna Be The GReeeeN
I Wanna Run The Terminal
I Wanna Be The Magic Girl
I Wanna Be The Green Moon
I Wanna Be The Yassan(21)

I Wanna Be The Rukimin
I Wanna Take The TimeMachine
I Wanna Be The HeavenTrap 2
I Wanna Be The 500"

GuyText = "#####I WANNA BE THE GUY####";

GameList[3]="I Wanna See The Moon
I Wanna CQ
I Wanna Be The Cool Guy
I Wanna Be The Skyclad
I Wanna Be The Bucho
I Wanna Kill The Guy
I Wanna Be The HeavenTrap
I Wanna Play THE WORLD'S... HARDEST GAME
I Wanna Be The GB
I Wanna Be The Phantom"

GameList[4]="I Wanna Be The PYF
I Wanna Be The Sadist
I Wanna Be The Boshy
I Wanna Be The GR
I Wanna Be a Brute of a Man"

Desc = "Maker: Reimu2020
Engine: Verve GM8.2 Engine
Inspiration:
Kamilia 1, RandRandRand, Get CultCultCult."

Testers = "Testers:
EspacialRem"

End = "Thank You For Playing.
^_^"
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
H = 608;
if (y < H*-8){
    room_goto_next();
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
H = 608;
draw_sprite(sprTitleName,0,400,y);

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fEnding01);

draw_sprite_ext(sprEndingImage,0,600,y+H+110,0.35,0.35,0,c_white,1);
draw_text(20,y+H,GameList[0]);
draw_sprite(sprEndingScoreattack,-1,20,y+H+15*3+6);

draw_sprite(sprBoss1,0,300,y+H+304);

draw_sprite_ext(sprEndingImage,1,600,y+H*2+110,0.35,0.35,0,c_white,1);
draw_text(20,y+H*2,GameList[1]);

draw_sprite_ext(sprBoss2Miku,0,600,y+H*3-50,0.5,0.5,0,c_white,1);

draw_sprite_ext(sprEndingImage,2,600,y+H*3+110,0.35,0.35,0,c_white,1);
draw_text(20,y+H*3,GameList[2]);

draw_set_color(c_red);
draw_text(20,y+H*3,GuyText);
draw_set_color(c_black);

draw_sprite(sprBoss3TheGay,0,400,y+H*3+304);

draw_sprite_ext(sprEndingImage,3,600,y+H*4+110,0.35,0.35,0,c_white,1);
draw_text(20,y+H*4,GameList[3]);

draw_sprite(sprBoss4Geezer,0,100,y+H*4+304);

draw_set_font(fEnding02);
draw_sprite_ext(sprEndingImage,4,600,y+H*5+110,0.35,0.35,0,c_white,1);
draw_text(20,y+H*5,GameList[4]);

draw_sprite_ext(sprBoss5,0,250,y+H*5+200,0.8,0.8,0,c_white,1);

draw_set_font(fEnding03);
draw_sprite_ext(sprEndingImage,5,600,y+H*6+110,0.35,0.35,0,c_white,1);
draw_text(20,y+H*6+100,"M-Stage");

draw_sprite_ext(sprReimuIdle,0,400,y+H*6+304,2,2,0,c_white,1);

draw_set_font(fEnding02);
draw_set_halign(fa_center);
draw_text(400,y+H*7,Desc);

draw_set_font(fEnding03);
draw_text(400,y+H*8,End);
