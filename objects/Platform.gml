#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
snap = true;
bounce = true;

platform_floor_prev = undefined;

if (room == rYassan){
    sprite_index = sprYassanPlatform;
    vspeed = random_range(1.5,5)*choose(-1,1);
}
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if speed != 0 {
    if bounce {
        if !place_free(x + hspeed, y) {
            hspeed *= -1;
        }
        if !place_free(x, y + vspeed) {
            vspeed *= -1;
        }
    }

    if global.grav * vspeed > 0 {
        with(Player) {
            if !place_meeting(x, y, other) if place_meeting(x, y + other.vspeed, other) {
                if !place_free(x, y + other.vspeed) {
                    move_contact_solid(90 + 180 * (global.grav == 1), abs(other.vspeed));
                }
                else {
                    y += other.vspeed;
                }
            }
        }
    }
}

platform_floor_prev = ternary(global.grav == 1, bbox_top, bbox_bottom);

if (room == rFinalBossFalling && (y < -32 || y > 800+32)){
    instance_destroy();
}
#define Other_4
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//field snap: bool
//field bounce: bool
