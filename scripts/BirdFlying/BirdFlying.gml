function BirdFlying(){

if variance < 16*60 {
	y-= 2/60
	variance += 2
} else {
x += (targetx - x)/(spd*10)
y += (targety - y)/(spd*10)
}

if point_distance(x,y,targetx,targety) < 1{

	AIBehavior = BirdSearching
}

}