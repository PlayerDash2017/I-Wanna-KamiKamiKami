Num = 5;
Size = image_xscale-1;

var i;
for (i = 0; i < Num; i += 1)
{
    Range = Size/Num;
    XX = Range*i+random(Range);
    xSet = x+round(XX*32);
    with(instance_create(xSet,y,SpikeUp)){
        path_start(pthLoopDown,2,path_action_restart,false);
        path_scale = 2;
        path_position = random(1)/1;
    }
};

instance_destroy();
