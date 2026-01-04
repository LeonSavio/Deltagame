function LevelUp(){
	var LV = self.LV
	switch(LV){
		
		case 1: 
		self.EXP = 0;
		self.LV += 1
		self.NextLevelEXP = 20;
		self.ATK += 0.3
		self.HPMax +=1
		self.HP += 1
		self.TP += 1
		self.Magic += 1/3
		break;
		
		case 2: 
		self.EXP = 0;
		self.LV += 1
		self.NextLevelEXP = 35;
		self.ATK += 0.5
		self.HPMax +=2
		self.HP += 2
		self.TP += 1
		self.Magic += 1/3
		break;
		
		case 3: 
		self.NextLevelEXP = EXP;
		self.LV += 1;
		self.ATK += 0.7
		self.HPMax +=0.5
		self.HP += 0.5
		self.TP += 1
		self.Magic += 1/3
		break;
		
	}

}