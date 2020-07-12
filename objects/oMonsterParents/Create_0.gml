/// @description Insert description here
// You can write your code in this editor


enum MonsterStatus{
	idle = 0,
	move = 1,
	chase = 2,
	die = 3,
	alarmEnemy = 4
}


MonsterStatus = MonsterStatus.idle
randomize()
alarmFlag = 1
monsterSpeed = 0.4
monsterAlarmRange = 10
move_direction = irandom_range(0,3)
move_time = 1
damaged = false

hp = 0;
damage = 0;

imageIdle = sBlue_slime_idle
imageMove = sBlue_slime_move
imageJump = sBlue_slime_jump
imageDeath = sBlue_slime_die