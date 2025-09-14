#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
image_speed = 0;

idButton = (x div 96)-1;
Type = idButton;
Count = 0;

//DVD Variable
DVDMode = false;
xWin = 0;
yWin = 0;
wWin = 800;
hWin = 608;
winVSpeed = 0;
winHSpeed = 0;

xOriginWin = window_get_x();
yOriginWin = window_get_y();
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (DVDMode)
{
    if (xWin+winHSpeed > display_get_width()-wWin || xWin+winHSpeed < 0) winHSpeed = -winHSpeed;
    if (yWin+winVSpeed > display_get_height()-hWin || yWin+winVSpeed < 0) winVSpeed = -winVSpeed;

    xWin += winHSpeed;
    yWin += winVSpeed;

    window_set_position(round(xWin),round(yWin));
}

view_angle = lerp(view_angle,0,0.01);
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy_id(other);
event_user(0);
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(objPartyList){
    other.Type = ds_list_find_value(List,other.idButton);
}
#define Other_5
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (DVDMode) {
    window_set_position(xOriginWin,yOriginWin);
    window_set_fullscreen(config_get("fullscreen"));
}
#define Other_10
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (image_index) exit;
image_index = 1;

switch (Type)
{
    case 0://random(360)
        repeat(40){
            a = instance_create(400,150,Cherry);
            a.speed = random_range(2,20);
            a.direction = random(360);
        }
        repeat(4){
            a = instance_create(400,150,Cherry);
            a.speed = random_range(2,5);
            a.direction = random(360);
            a.bounce = true;
        }
        sound_play("block_change");
    break;
    case 1://DVD Mode
        xOriginWin = window_get_x();
        yOriginWin = window_get_y();
        wWin = window_get_width();
        hWin = window_get_height();

        if (window_get_fullscreen()){
            window_set_fullscreen(false);
            xOriginWin = round(display_get_width()/2)-400;
            yOriginWin = round(display_get_height()/2)-304;
            wWin = 800;
            hWin = 608;
        }

        xWin = xOriginWin;
        yWin = yOriginWin;
        winVSpeed = random_range(2,7)*choose(-1,1);
        winHSpeed = random_range(2,7)*choose(-1,1);

        DVDMode = true;
        sound_play("block_change");
    break;
    case 2://No floor
        for (i = -2; i <= 2; i += 1)
        {
            instBlock = instance_position(x+i*32,y+32,objGuyBlock);
            instance_destroy_id(instBlock);
        }
        sound_play("block_break");
    break;
    case 3://CN2.5
        instance_create(irandom(800),irandom_range(200,304),objPartySkull);
        sound_play("block_change");
    break;
    case 4://Cultured 2 confetti
        repeat(75) instance_create(x+16,y+16,objPartyConfetti);
        sound_play("party_confetti");
    break;
    case 5://Camera Flip
        view_angle = 360*choose(-1,1);
        sound_play("block_change");
    break;
    case 6://hamster mode
        global.hamster = true;
        sound_play("block_change");
    break;
}

with(objPartyButton) Count += 1;
if (Count >= 7){
    instance_create(400-16,500,objWarpNext);
    sound_stop("block_change");
    sound_play("block_change");
}
#define Draw_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
draw_self();

if (Type == 2 && !image_index){
    draw_set_color(c_black);
    draw_rectangle(0,608,800,608*2,false);
}
