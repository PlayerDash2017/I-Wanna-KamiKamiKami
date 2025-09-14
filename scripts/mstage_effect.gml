///mstage_effect()

var Vis;
if (instance_exists(Player)) {
    Vis = (point_distance(x,y,Player.x,Player.y)>225);//250
    visible = Vis;
} else {
    visible = true;
}
