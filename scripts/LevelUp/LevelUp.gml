function LevelUp(){
	var LV = self.LV
	switch(LV){
		
		case 1: 
		self.EXP = 0;
		self.LV += 1
		self.NextLevelEXP = 15;
		self.ATK += 0.3
		self.HP += 1
		self.TP += 1
		self.Magic += 1/3
		break;
		
		case 2: 
		self.EXP = 0;
		self.LV += 1
		self.NextLevelEXP = 18;
		self.ATK += 0.5
		self.HP += 2
		self.TP += 1
		self.Magic += 1/3
		break;
		
		case 3: 
		self.NextLevelEXP = EXP;
		self.LV = "MAX";
		self.ATK += 0.7
		self.HP += 0.5
		self.TP += 1
		self.Magic += 1/3
		break;
		
	}

}