if (ds_list_find_index(enemigos_golpeados, other.id) == -1) {
    ds_list_add(enemigos_golpeados, other.id);
    other.hp -= other.hp * 0.20;
}