#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 1/4;
image_alpha = 0;
image_xscale = 2;
image_yscale = image_xscale;
vspeed = 0.3;
DeadFix = true;

Timer = 0;
for (i = 0; i <= 1; i += 1) Act[i] = 0;
yBack = 0;

RoomList = ds_list_create();

ds_list_add(RoomList,rFinalBossSalt);
ds_list_add(RoomList,rFinalBossDarkBlue);
ds_list_add(RoomList,rFinalBossRTT);
ds_list_add(RoomList,rFinalBossCQ);

ds_list_shuffle(RoomList);

ds_list_insert(RoomList,0,rFinalBossA);
ds_list_insert(RoomList,3,rFinalBossB);
ds_list_insert(RoomList,6,rFinalBossC);
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///System

var i;

if (instance_exists(Player)){
    Timer += 1;
} else if (DeadFix){
    Timer += 0.1;
    DeadFix = false;
}

for (i = 0; i <= 1; i += 1)
    Act[i] = max(Act[i] - 1,0);

if (room == rFinalBossC){
    background_y[0] = lerp(background_y[0],yBack,0.01);
}

if (global.debug){
    room_speed = 50+keyboard_check(ord('0'))*1500;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Music sync
//Codigo tomado del 100 Floor Medley xD

var bgm;
bgm = global.current_music_instance;

if (sound_isplaying(bgm) && Timer >= 0 && instance_exists(Player)){
    // measured in frames
    var _flex;
    _flex = 3;  // both should be positive integers (frames)
    var _pos, _target, _diff;
    _pos = sound_get_pos(bgm, unit_seconds)*50;
    _target = Timer;  //+timerOffset
    _diff = (_target - _pos);

    // snap to correct time
    if (abs(_diff) > _flex){
        sound_set_pos(bgm, _target/50, unit_seconds);  // convert to seconds
    }
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Timeline (0:00 - 0:20 Intro)

//0:10
if (Timer < 50*10){
    image_alpha += 1/(50*10);

    if (input_check_pressed(key_skip)){
        Timer = 50*10;
        sprite_index = sprReimuIdle;
        speed = 0;
        y = 150.00;
        image_alpha = 1;
        Act[0] = 0;
    }
}

//0:10 - 0:20
if (Timer > 50*10 && Timer < 50*19 && !Act[0]){
    sprite_index = sprReimuIdle;
    speed = 0;

    Act[0] = 3;
    instance_create_moving(x,y,Cherry,6,irandom(360));
}

//0:19
if (Timer == 50*19){
    instance_create(400,304,objFinalBossLight);
    global.no_death = true;
}

//0:20
if (Timer == 50*20){
    background_index[0] = bBoss1;
    background_blend[0] = c_ltgray;
    instance_destroy_id(objFinalBossLight);
    instance_create(0,0,objFinalBossFullLight);
    global.no_death = false;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Timeline (0:20 - 0:40 Stage 1)

if (Timer > 50*20 && Timer < 50*40 && !Act[0]){
    Act[0] = 50;

    a = instance_create(400+one_switch(irandom(1))*350,0,objSecondCCherryShoot);
    a.vspeed = 3;
}

if (Timer > 50*30 && Timer < 50*40 && !Act[1]){
    Act[1] = 25;
    H = one_switch(irandom(1));
    a = instance_create(400+H*400,irandom_range(100,200),objFinalBossSteeple);
    a.hspeed = random_range(1,5)*-H;
}

//0:39
if (Timer == 50*39){
    instance_create(400,304,objFinalBossLight);
    global.no_death = true;
}

//0:40
if (Timer == 50*40 && instance_exists(Player)){
    visible = false;
    instance_destroy_id(Player);
    room_goto(ds_list_find_value(RoomList,1));
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Timeline (0:50 - 0:61 Randomize 1)

//0:50
if (Timer == 50*50){
    instance_create(400,304,objFinalBossLight);
}

//0:51
if (Timer == 50*51){
    with(Player){
        if (!place_meeting(x,y,objFinalBossWarpTimer)){
            player_kill();
            exit;
        }
    }
    instance_destroy_id(Player);
    room_goto(ds_list_find_value(RoomList,2));
}

//1:00
if (Timer == 50*60){
    instance_create(400,304,objFinalBossLight);
}

//1:01
if (Timer == 50*61){
    with(Player){
        if (!place_meeting(x,y,objFinalBossWarpTimer)){
            player_kill();
            exit;
        }
    }
    instance_destroy_id(Player);
    room_goto(ds_list_find_value(RoomList,3));
    visible = true;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Timeline (1:01 - 1:42 Stage 2 - Stage 5)

//1:01 - 1:11
if (Timer > 50*61 && Timer < 50*71 && !Act[0]){
    background_blend[0] = c_ltgray;
    Act[0] = 3;
    a = instance_create(irandom(room_width-32),0,objYellowStarWater);
    a.vspeed = random_range(1,3.5);
}

//1:05
if (Timer == 50*65){
    with(objFinalBossBlock){
        visible = false;
        solid = false;
        mask_index = sprEmpty;
    }
    instance_create(400,608,objPartySkull);
}

//1:10
if (Timer == 50*70){
    instance_create(400,304,objFinalBossLight);
    global.no_death = true;
}

//1:11 (Stage 3)
if (Timer == 50*71){
    background_index[0] = bBoss3;
    instance_destroy_id(PlayerKiller);
    instance_destroy_id(objYellowStarWater);
    instance_destroy_id(objFinalBossLight);
    instance_create(0,0,objFinalBossFullLight);
    with(objFinalBossBlock){
        visible = true;
        solid = true;
        mask_index = sprite_index;
    }

    instance_create(32,304,objTTTMCannon);
    instance_create(800-32,304,objTTTMCannon);
    global.no_death = false;
}

//1:11 - 1:22
if (Timer > 50*71 && Timer < 50*82 && !Act[0]){
    Act[0] = 5;
    instance_create(64+irandom(room_width),-100,objMagicGirlLine);
}

//1:21
if (Timer == 50*81){
    instance_create(400,304,objFinalBossLight);
    global.no_death = true;
}

//1:22 (Stage 4)
if (Timer == 50*82){
    background_index[0] = bBoss4;
    instance_destroy_id(PlayerKiller);
    instance_destroy_id(objFinalBossLight);
    instance_create(0,0,objFinalBossFullLight);
    instance_destroy_id(objTTTMCannon);
    global.no_death = false;
    Act[0] = 0;
}

//1:22 - 1:32
if (Timer > 50*82 && Timer < 50*92 && !Act[0]){
    Act[0] = 60;
    instance_create(800,y,objFinalBossTaisa);
}

//1:31
if (Timer == 50*91){
    instance_create(400,304,objFinalBossLight);
    global.no_death = true;
}

//1:32 (Stage 5)
if (Timer == 50*92){
    background_index[0] = bBruteOfAMan;
    instance_destroy_id(PlayerKiller);
    instance_destroy_id(objFinalBossLight);
    instance_create(0,0,objFinalBossFullLight);
    global.no_death = false;
    Act[0] = 0;
}

//1:32 - 1:41
if (Timer > 50*93 && Timer < 50*101){
    if (!Act[0]){
        Act[0] = 5;
        instance_create_moving(irandom(800),0,objFinalBossCherrySadist,random_range(3,15),270);
    }
    if (!Act[1]){
        Act[1] = 50;
        a = instance_create_moving(0,-64,objFinalBossWaterPYF)
        a.vspeed = 7;
        a.image_xscale = 25;
        a.image_yscale = 3;
    }
}

if (Timer = 50*101-20){Timer = 50*121};

//2:01
if (Timer == 50*121){
    instance_create(400,304,objFinalBossLight);
    global.no_death = true;
}

//2:02
if (Timer == 50*122 && instance_exists(Player)){
    visible = false;
    instance_destroy_id(Player);
    room_goto(ds_list_find_value(RoomList,4));
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Timeline (2:01 - 2:23 Randomize 2)

//2:12
if (Timer == 50*132){
    instance_create(400,304,objFinalBossLight);
}

//2:13
if (Timer == 50*133){
    with(Player){
        if (!place_meeting(x,y,objFinalBossWarpTimer)){
            player_kill();
            exit;
        }
    }
    instance_destroy_id(Player);
    room_goto(ds_list_find_value(RoomList,5));
}

//2:22
if (Timer == 50*142){
    instance_create(400,304,objFinalBossLight);
}

//2:23
if (Timer == 50*143){
    with(Player){
        if (!place_meeting(x,y,objFinalBossWarpTimer)){
            player_kill();
            exit;
        }
    }
    instance_destroy_id(Player);
    room_goto(ds_list_find_value(RoomList,6));
    visible = true;
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Timeline (2:25 - 3:03 "Original")

//2:25
if (Timer == 50*145){
    hspeed = 5*choose(-1,1);
    sprite_index = sprReimuRun;
}

//2:25 - 3:03
if (Timer > 50*145 && Timer < 50*183){
    if (!place_free(x+hspeed,y)) hspeed = -hspeed;
    image_xscale = sign(hspeed)*2;
}

//2:25 - 2:33
if (Timer > 50*145 && Timer < 50*153 && !Act[0]){
    Act[0] = 15;
    var i;
    Ran = irandom(360);
    for (i = 0; i < 360; i += 360/6)
    {
        instance_create_moving(x,y,objFinalBossSpikes,6,i+Ran,0.1);
    }
}

//2:33 - 2:43
if (Timer > 50*153 && Timer < 50*163 && !Act[0]){
    Act[0] = 25;
    instance_create_moving(irandom(800),0,objFinalBossKillerBlock,random_range(3,5),270);
}

//2:43
if (Timer = 50*163){
    instance_destroy_id(objFinalBossKillerBlock);
    instance_destroy_id(objFinalBossKillerVanish);
}

//2:43 - 2:53
if (Timer > 50*163 && Timer < 50*173 && !Act[0]){
    Act[0] = 90;
    var i, setID;
    setID = irandom(114514);
    for (i = 0; i < 800; i += 32)
    {
        a = instance_create(i,0,objFinalBossWarpTP);
        a.vspeed = 8;
        a.Tag = setID;
    }
}

//2:53
if (Timer == 50*173){
    instance_destroy_id(objFinalBossWarpTP);
    instance_destroy_id(SpikeUp);
}

//2:53 - 3:03
if (Timer > 50*173 && Timer < 50*183 && !Act[0]){
    Act[0] = 5;
    instance_create(x+irandom_range(-20,20),y+irandom_range(-20,20),objFinalBossMakeBullet);
}

//3:02
if (Timer == 50*182){
    global.no_death = true;
    instance_create(400,304,objFinalBossLight);
}
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Timeline (3:03 - 3:14 Moon)

//3:03
if (Timer == 50*183){
    instance_destroy_id(objFinalBossLight);
    instance_create(0,0,objFinalBossFullLight);
    hspeed = 0;
    image_xscale = 2;
    x = 400;
    instance_destroy_id(objFinalBossMakeBullet);
    instance_destroy_id(PlayerKiller);
    background_index[0] = bMStage;
    global.no_death = false;
    yBack = 608*5;

    yMoon = sprite_get_height(sprFinalBossMoon)/2;
    instance_create(400,-yMoon*7,objFinalBossMoonBack);
}

//3:14
if (Timer == 50*194){
    with(objFinalBossBlock){
        instance_create(x,y,objFinalBossBlockDestroyed);
        instance_destroy();
    }
    gravity = 0.3;
    sprite_index = sprReimuFall;
    with(Player) frozen = true;
    global.killer_room_border = false;
}

//3:15
if (Timer == 50*195){
    instance_create(0,0,objFinalBossEndLight);
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
var inRoom, getRoom, i;
inRoom = 0;

for (i = 0; i < ds_list_size(RoomList); i += 1)
{
    getRoom = (room == ds_list_find_value(RoomList,i));
    inRoom += getRoom;
}

if (inRoom <= 0){
    ds_list_destroy(RoomList);
    instance_destroy();
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
///Kill player

with(Player){
    if (!place_meeting(x,y,objFinalBossWarpTimer)){
        player_kill();
        exit;
    }
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

if (Timer < 50*10){
    var ShowSkip;
    ShowSkip = (Timer div 50) mod 2;

    draw_set_alpha(ShowSkip);
    draw_set_color(c_white);
    draw_set_halign(fa_right);
    draw_set_valign(fa_top);

    draw_text(800-32,32,"Press "+key_get_name(input_get_key(key_skip))+" to Skip");
    draw_set_alpha(1);
}
