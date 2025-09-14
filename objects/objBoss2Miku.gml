#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer = 0;
global.killer_room_border = false;
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
Timer += 1;

switch (Timer)
{
    case 1:
        music_play("boss2",true);
        instance_destroy_id(Block);
    break;
    case 50: case 100:
        instance_create_moving(x,irandom(608),objBoss2Cherry,4,180);
    break;
    case 150:
        instance_create(x-50,0,objBoss2Party);
    break;
}
#define Collision_Bullet
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_destroy_other();
sound_play("boss_hit");
