#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Start = false;
State = 0;
#define Alarm_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
State += 1;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (Start){
    if (State == 0){
        image_angle -= 2;
        if (image_angle < -90){
            image_angle = -90;
            State = 1;
            alarm[0] = 25;
        }
    }
    if (State == 2){
        hspeed = 1.8;
        if (!instance_exists(Player)){
            hspeed = 0;
        }
    }
}
#define Collision_VineLeft
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=other
invert=0
*/
#define Collision_VineRight
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=203
applies_to=other
invert=0
*/
#define Collision_objBlockDraw
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other){
    a = instance_create(x,y,objGuyDestroyed);
    a.xTile = xTile*32;
    a.yTile = yTile*32;

    instance_destroy();
}
#define Collision_objGuyBlock
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
with(other){
    a = instance_create(x,y,objGuyDestroyed);
    a.xTile = tile_get_left(Tile);
    a.yTile = tile_get_top(Tile);

    instance_destroy();
}
