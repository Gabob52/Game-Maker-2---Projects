// seguir al jugador (opcional pero recomendado)
if (instance_exists(creador)) {
    x = creador.x + (creador.image_xscale * 20);
    y = creador.y;
}

vida_util--;
if (vida_util <= 0) instance_destroy();