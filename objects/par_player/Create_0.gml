//Cria obj_PlayerColl e vincula ao Player que ela pertence
collider = instance_create_layer(x, y, "CollisionPlayer", obj_PlayerColl);
collider.owner = self;

//Informações de Speed e Animação
direction = 0;
localFrame = 0;

//Estado do player
State = PlayerStateFree;
pos = 0;
HitByAttack = -1;

//Cooldown atual do ataque
AttackCd = 0;

//Faz o Hp inicial começar full
HP = HPMax;
TP = 0;
//Informações de Knockback
KBSpeed = 0;
KBDir = 0;
KBTimer = 0;

//Informações de IFrame
IFrames = false;
IFramesTimer = 0;
FlashTimer = 0;

//Escala eles pro correto
image_xscale = 2;
image_yscale = 2;

//Define o numero de player
Player = instance_number(par_player)

//Controles
Left = 1
Right = 1
Up = 1
Down = 1
Confirm = 1
Cancel = 1
Camera = 1
Change = 1

if Player == 1{
	Left = vk_left
	Right = vk_right
	Up = vk_up
	Down = vk_down
	Confirm = ord("Z")
	Cancel = ord("X")
	Taught = ord("V")
	Camera = ord("N")
	Change= ord("C")
	obj_camera.target = self
	global.time = 0
}

if Player == 2{
	Left = ord("A")
	Right = ord("D")
	Up = ord("W")
	Down = ord("S")
	Confirm = vk_enter
	Cancel = vk_shift
	Taught = ord("T")
	Camera = ord("M")
	Change= vk_control
}

if Player == 3{
	Left = ord("J")
	Right = ord("L")
	Up = ord("I")
	Down = ord("K")
	Confirm = ord("E")
	Cancel = ord("R")
	Taught = ord("Y")
	Camera = ord("Q")
	Change= vk_alt
}

NextLevelEXP = 3;

division = 0;


