/// @description 轉換到idle
// You can write your code in this editor
//show_debug_message("換成發呆")
if(MonsterStatus != MonsterStatus.alarmEnemy){
	move_time = random_range(0.5,1)
	alarmFlag = 1
	MonsterStatus = MonsterStatus.idle
}