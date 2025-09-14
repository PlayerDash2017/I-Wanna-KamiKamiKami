repeat(irandom_range(5,7)){
    instance_create(x+irandom(image_xscale-1)*32,y,object_index);
}

instance_destroy();
