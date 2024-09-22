//Inicinado variavies
velh = 0;
velv = 0;
max_vel = 3;
vel = 0;
move_dir = 0;

arma = noone

//criando o metodo de controlar o cajado
usa_arma = function() {
	if (arma) {
		
		var _fire = mouse_check_button(mb_left);
		arma.atirar = _fire;
		
		var _dir = point_direction(x, y, mouse_x, mouse_y);
		
		//Achnado a posição da arma
		var _x = x + lengthdir_x(sprite_width / 2, _dir);
		var _y = y + lengthdir_y(sprite_height / 2, _dir);
		
		//levando a arma conosco
		arma.x = _x;
		arma.y = _y;
		
		//fazendo a arma apontar para o mouse
		arma.image_angle = _dir;
	}
}

//Criando o metodo para me livrar de uma arma
joga_arma = function() {
	if (arma) {
		var _joga = keyboard_check_released(ord("G"));
		var _col;
		//cheachando se o cajado está dentro da parede
		//rodando o código de dentro da arma
		with(arma) { 
			//isso ta dentro da arma
			_col = place_meeting(x, y, obj_block);
		}
		
		//só posso jogar a amra se eu apertei o botão de jogar e se ela não ta na parede
		if (_joga && !_col) {
			arma.speed = 3;
			arma.direction = arma.image_angle;
			//avisando que a arma não pode atirar mais
			arma.atirar = false;
			arma = noone;
		}
	}
}

