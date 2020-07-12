/// @description Insert description here
// You can write your code in this editor
event_inherited()

if( !alarmPlayerFlag && (point_distance(x,y,oPlayer.x,oPlayer.y) < monsterAlarmRange) && (MonsterStatus != MonsterStatus.alarmEnemy) ){
	show_debug_message("I seeeeee you")
	alarmPlayerFlag = true
	createAlarmObjectFlag = true
	MonsterStatus = MonsterStatus.alarmEnemy
}else if( (point_distance(x,y,oPlayer.x,oPlayer.y)>=monsterAlarmRange) ){
	alarmPlayerFlag = false
	MonsterStatus = MonsterStatus.idle
}

if( createAlarmObjectFlag == true ){
	a = instance_create_layer(x,y-23,"Instances",oMonsterAlarm)
	createAlarmObjectFlag = false
	alarm[4] = 30
}

if( MonsterStatus == MonsterStatus.alarmEnemy ){
	sprite_index = imageJump
	if( oPlayer.x - x > 0 ){
		x += monsterSpeed
	}else{
		x -= monsterSpeed
	}
	if( oPlayer.y - y ){
		y += monsterSpeed
	}else{
		y -= monsterSpeed
	}
}