with (other) {
    hp -= 10;
    hurt = true;
    hurt_timer = 20;   // frames que dura el estado de daño (~0.33 s a 60 fps)
    image_index = 0;
}
instance_destroy();