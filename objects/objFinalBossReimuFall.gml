#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_xscale = 2;
image_yscale = image_xscale;
y = -64;

DeadFix = true;

Timer = 0;
for (i = 0; i <= 1; i += 1) Act[i] = 0;

yNew = 304;
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

if (gravity == 0)
    y = lerp(y,yNew,0.1);
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Timer < 50*8 && !Act[0]){
    Act[0] = 3;
    a = instance_create(irandom(800)-32,608,objFinalBossSpikes);
    a.vspeed = -random_range(1,8);
}

if (Timer == 50*8){
    with(objFinalBossSpikes){
        speed = 0;
        gravity = random_range(0.0001,0.05);
        gravity_direction = random(360);
    }
}

if (Timer == 50*13+25){
    with(objFinalBossSpikes){
        gravity = 0.4;
    }
    repeat(2)
    instance_create(400,700,objFinalBossDilan);
}

if (Timer == 50*19){
    with(objFinalBossDilan) gravity = 0.4;

    var i;
    Ran = irandom(360);
    scrMakeShapes(400,304,irandom(360),irandom_range(3,5),7,4,objFinalBossCherry);
}

if (Timer == 50*24 && instance_exists(Player)){
    with(objFinalBossCherry){
        Destroy = true;
        direction = point_direction(x,y,Player.x,Player.y)+180;
        speed = 5;
    }
}

if (Timer > 50*24 && Timer < 50*29 && !Act[0]){
    Act[0] = 75;
    repeat(100){
        instance_create(irandom(800-32),irandom(608),objFinalBossPlatformPayment);
    }
}

if (Timer == 50*29+25) Act[0] = 0;

if (Timer > 50*29+25 && Timer < 50*35 && !Act[0]){
    Act[0] = 10;

    a = instance_create(400+one_switch(irandom(1))*400,irandom(608),objFinalBossSpikeSpin);
    a.speed = random_range(1,8);
    a.direction = ternary(a.x > 400,180+irandom_range(-20,20),360+irandom_range(-20,20));
}

if (Timer == 50*33+25){
    instance_create(400,304,objFinalBossSafeKill);
}

if (Timer == 50*35){
    instance_destroy_id(objFinalBossSpikeSpin);
    instance_destroy_id(objFinalBossSafeKill);
}

if (Timer > 50*35 && Timer < 50*43 && !Act[0]){
    Act[0] = 40;
    Tag = random(114514)
    for (i=0; i<800; i+=32)
    {
        a = instance_create(i,608,objFinalBossSaveParty);
        a.vspeed = -5;
        a.Tag = Tag;
    }
}

if (Timer == 50*43+25){
    a = instance_create(400,304,objFinalBossSafeKill);
    a.sprite_index = sprFinalBossDaDaDa;
}

if (Timer == 50*45){
    global.DaJump = true;
    instance_destroy_id(objFinalBossSafeKill);
    for (i=0; i<800; i+=32)
    {
        a = instance_create(i,608,SpikeUp);
        a.vspeed = -2;
    }
    yMoon = sprite_get_height(sprFinalBossMoon)/2;
    a = instance_create(400,-yMoon*7-10,objFinalBossMoonBack);
    a.depth = 100000000000;
    a.vspeed = 2;
}

if (Timer == 50*50){
    with(SpikeUp){
        a = instance_create(x,y,objFinalBossBlockDestroyed);
        a.sprite_index = sprite_index;
        instance_destroy();
    }
    with(objFinalBossMoonBack){
        gravity = 0.08;
    }
}

if (Timer == 50*52){
    gravity = 0.1;
}

if (Timer = 50*54){
    with(Player) frozen = true;
    global.killer_room_border = false;
}

if (Timer == 50*56){
    instance_create(0,0,objFinalBossEndLight);
}
