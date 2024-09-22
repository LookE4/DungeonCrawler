//sistema de colisão horizontal e movimentação
var _velh = sign(velh);

//deixar o velh positiov sempre
repeat(abs(velh)) {
	//esse código vai ser repetido a quantidade de vezes que eu tenho no velh
	
	//checar se o espaço para onde vou me mover tem alguém
	if (place_meeting(x + _velh, y, obj_block)) {
		//o que fazer se eu colidi com algue
		velh = 0;
	} else {
		//se eu não colidi com alguem
		//eu posso me mover
		x += _velh
	}
}

var _velv = sign(velv);

//deixar o velv positiov sempre
repeat(abs(velv)) {
	//esse código vai ser repetido a quantidade de vezes que eu tenho no velh
	
	//checar se o espaço para onde vou me mover tem alguém
	if (place_meeting(x, y + _velv, obj_block)) {
		//o que fazer se eu colidi com algue
		velv = 0;
	} else {
		//se eu não colidi com alguem
		//eu posso me mover
		y += _velv
	}
}

usa_arma();