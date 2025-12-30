function Bluefish(){

var target = instance_nearest(x,y,par_player)

//fica movendo da direita pra esquerda
x += direcao


if x == ancora + 50 || x == ancora - 50{
	direcao = direcao * -1
}

//começa a atacar se o player tiver perto e alinhado
if distance_to_object(target) < 100 && (x ==target.x || y == target.y){
	if y == target.y{ //se o alinhamento for horizontal, o ataque vai ser horizontal
		sentido = 1
	}
	if x == target.x{ //se o alinhamento for vertical, o ataque vai ser vertical
		sentido = 2
	}
	
	estado = 1}
}


function BluefishAttack(){
	
var target = instance_nearest(x,y,par_player)

	if sentido == 1{
	direcao = sign(target.x - x)
	x += 2 * direcao}
	
	if sentido == 2{
	direcao = sign(target.y - y)
	y += 2 * direcao
	}
	//faz com que ele n seja imortal
	if sprite_index != spr_sparkles{
	sprite_index = spr_bluefish_attack}
}