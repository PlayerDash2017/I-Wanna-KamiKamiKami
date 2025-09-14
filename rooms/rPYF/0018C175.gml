repeat(irandom_range(15,20)){
    instance_create(x+irandom(image_xscale*32-32),y,object_index);
}

instance_destroy();
