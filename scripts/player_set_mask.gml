///player_set_mask()

if global.gradius {
    mask_index = sprGradiusMask;
    return 0;
}

if global.grav == 1 {
    mask_index = sprPlayerMask;
}
else {
    mask_index = sprPlayerMaskFlip;
}
