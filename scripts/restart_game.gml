///restart_game()

// Restarts the game without calling game_restart().

instance_activate_all();
if is_in_game() {
    sound_stop_all();
}
global.paused = false;
global.debug = global.debug_default;
save_write();

room_goto(rTitle);
