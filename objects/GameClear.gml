#define Collision_Player
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if !save_get("clear") {
    save_set("clear", true);
    save_save(true);
    global.debug = true;

    if !config_get("reimu_unlock") {
        config_set("reimu_unlock",true);
        config_write();
    }
}
