//deixando o cajado menor
image_xscale = 0.5;
image_yscale = 0.5;

//velocidade de tiro
//delay do tiro
//o tiro
atirar = false;

//delay para atirar
delay_tiro = 0;

pai = noone;

//criando o meu método para atirar
atirando = function() {	
	//criando o meu tiro dentro do intervalo
	delay_tiro--;
	if (atirar) {
		if (delay_tiro <= 0) {
			//resetando o delay
			delay_tiro = espera_tiro * room_speed;
			//atirando
			//achando a posição para criar o meu tiro
			var _x = lengthdir_x(sprite_height, image_angle);
			var _y = lengthdir_y(sprite_height, image_angle);
			
			var _tiro = instance_create_layer(x + _x, y + _y, layer, tiro);
			//dando vel para o tiro
			_tiro.speed = velocidade;
			//definindo a direção do tiro
			_tiro.direction = image_angle;
			
			//ricochete da arma
			//só faço isso se tenho pai
				if (pai) {
					//achando o valor do velv e velh com base na direção
					var _velh = lengthdir_x(knockback, image_angle);
					var _velv = lengthdir_y(knockback, image_angle);
					
					pai.velh -= _velh;
					pai.velv -= _velv;
				}
			}
	}
}

quica_parede = function() {
	//batendo na parede e voltando
	//checar se eu estou batendo hor na parede
	if (place_meeting(x + hspeed, y, obj_block)) {
		hspeed *= -1;
	}
	
	//checar a vertical
	if (place_meeting(x, y + vspeed, obj_block)) {
		vspeed *= -1; 
	}
}