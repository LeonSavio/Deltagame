function BirdFlying(){

x += (targetx - x)/(spd*10)
y += (targety - y)/(spd*10)

if point_distance(x,y,targetx,targety) < 1{
	AIBehavior = BirdSearching
}

}