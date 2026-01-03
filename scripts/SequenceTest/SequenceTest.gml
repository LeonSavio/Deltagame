function SequenceTest(){

if instance_exists(par_player){
if cooldown <= 0{
	var targetx = instance_nearest(x,y,par_player).x
	var targety = instance_nearest(x,y,par_player).y
	if point_distance(x,y,targetx,targety) < 32*Range{
	cooldown = CdMax
	var attack = layer_sequence_create(layer,targetx,targety,seq_firetest)
}}
cooldown -= 1
}

if IFramesTimer >= 0 {
	sprite_index = spr_flower
}
}