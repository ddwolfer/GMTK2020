xSpeed = 0;
ySpeed = 0
accell = 2

//haveKey = false;
keyCount = 0;

death = false;
damaged = false;
PlayerAttack = false

control = true;
canAttack = true
attackCooldown = 1 // x second
depth = 10;

textboxFlag = 0

//state machine
enum state {
	move = 0,
	attack = 1
}
state = state.move

//stats
damage = 5;
rangedDamage = 5;
hp = 1;
currentWeapon = noone;