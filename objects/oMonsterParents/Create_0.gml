/// @description Insert description here
// You can write your code in this editor


enum MonsterStatus{
	idle = 0,
	move = 1,
	attack = 2,
	die = 3
}


MonsterStatus = MonsterStatus.idle

alarmFlag = 1
mosterSpeed = 0.4
mosterAlarmRange = 10
move_direction = irandom_range(0,3)
move_time = 1