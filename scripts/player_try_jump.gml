///player_try_jump()

if on_floor || place_meeting(x, y, Platform) || place_meeting(x, y, WaterGroundJump) {
    player_ground_jump();
}
else if air_jumps > 0 || place_meeting(x, y+global.grav, Water) || global.debug_infinite_jump {
    player_air_jump();
}

//Fortress Return
var slideSpd;
slideSpd = irandom_range(0,28);
with objFReturnConveyor {
    spd = slideSpd;
}
