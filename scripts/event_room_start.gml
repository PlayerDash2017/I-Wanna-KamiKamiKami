///event_room_start()

// Called from the World object.

room_speed = global.game_speed;

if !instance_exists(MusicPlayer) {
    music_play_room_bgm();
}

ds_map_clear(global.trigger_map);

//Create a ""titlecard""
if is_in_game() && config_get("titlecard"){
    instance_create(view_xview[0]+32,view_yview[0]+64,objTitleCard);
}
else {
    global.titleCardName = noone;
}

// Set this every room start, then set it to true ahead of every transition
// that needs to clear input. (see engine_settings)
io_set_roomend_clear(false);

cement_blocks();

//Debug unlocking
if (is_in_game() && save_get("clear") && !global.debug){
    global.debug = true;
    live_roomeditor_start();
    live_roomeditor_add_obj_exclusion(PlayerStart);
}

camera_default();
camera_update();
camera_snap();
