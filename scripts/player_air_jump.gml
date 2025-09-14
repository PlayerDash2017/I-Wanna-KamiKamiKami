///player_air_jump()

var jumpSpeed;
jumpSpeed = air_jump_speed;
if (global.DaJump) jumpSpeed = random(ground_jump_speed);

vspeed = -global.grav * jumpSpeed;

if place_meeting(x, y+global.grav, WaterRefreshing) {
    air_jumps = max_air_jumps;
}
else {
    air_jumps -= 1;
    air_jumps = max(air_jumps, 0);
}

sound_play("player_air_jump");
