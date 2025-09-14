repeat(5){
    a = instance_create(x+irandom(image_xscale-1)*32,y,Platform);
    a.depth = 114514;
}

instance_destroy();
