var up, down, left, right;
up = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));

//velh = (right - left) * max_vel;
//x += velh;

//velv = (down - up) * max_vel;
//y += velv;

//ajustar o movimento
//descobrir para que direção eu estou me moventando
//checando se o usuario esta apretando alguma coisa
//XOR ou exclusivo
//XOR só retorna true se alguma condição for verdadeira
//mas não são todas verdadeiras
//xor = ^^
if (up ^^ down || left ^^ right) {
	move_dir = point_direction(0, 0, (right - left), (down - up));
	//ganhar velocidade quando ele começa a se mover
	vel = max_vel;
} else {
	vel = lerp(vel, 0, 0.1);
}

//com base na dir eu voud dar a minha velocidade
velh = lengthdir_x(vel, move_dir);
velv = lengthdir_y(vel, move_dir);

joga_arma();