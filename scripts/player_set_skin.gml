///player_set_skin(type)

var _skin, _type;
_skin = "Player";
_type = "Idle";
if (argument_count > 0) _type = argument[0];

switch (config_get("player_skin"))
{
    case 0: _skin = "Player"; break;
    case 1: _skin = "Kamilia"; break;
    case 2: _skin = "Spike"; break;
    case 3: _skin = "Tomodati"; break;
    case 4: _skin = "Marisa"; break;
    case 5: _skin = "Stick"; break;
    case 6: _skin = "Reimu"; break;

    default: _skin = "Player"; break;
}

execute_string("sprite_index = spr"+_skin+_type);
