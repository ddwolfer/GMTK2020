/// @description 轉換到走路
// You can write your code in this editor
show_debug_message("換成走路")
move_direction = irandom_range(0,3)
move_time = random_range(0,1.5)
alarmFlag = 1
MonsterStatus = MonsterStatus.move