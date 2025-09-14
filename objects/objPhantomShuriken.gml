#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
instance_create(x,y,Block);

//Hice todo un sistema estupidamente complejo xDD
_Spike[0] = false;
_Spike[1] = false;
_Spike[2] = false;
_Spike[3] = false;

Count = irandom_range(1,3);
repeat(Count){
    NoEnd = true;
    while(NoEnd){
        _Create = irandom(3);
        if (!_Spike[_Create]){
            switch (_Create)
            {
                case 0: instance_create(x,y-32,SpikeUp); break;
                case 1: instance_create(x,y+32,SpikeDown); break;
                case 2: instance_create(x-32,y,SpikeLeft); break;
                case 3: instance_create(x+32,y,SpikeRight); break;
            }
            _Spike[_Create] = true;
            NoEnd = false;
            break;
        }
    }
}

instance_destroy();
