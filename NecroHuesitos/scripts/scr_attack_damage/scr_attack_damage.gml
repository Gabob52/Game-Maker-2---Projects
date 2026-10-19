function scr_state_attack_damage(_enemy){
	with (_enemy) {
        hp -= hp * 0.20;   // 20% de la vida máxima = 5 golpes
    }
}
