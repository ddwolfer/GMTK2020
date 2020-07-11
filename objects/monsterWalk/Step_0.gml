/// @description Insert description here
// You can write your code in this editor

if( MonsterStatus == MonsterStatus.idle && alarmFlag ){
	alarmFlag = 0
	alarm[0] = move_time * room_speed
}
if( MonsterStatus == MonsterStatus.move && alarmFlag){
	alarmFlag = 0
	alarm[1] = move_time * room_speed
}
if( MonsterStatus == MonsterStatus.move ){
	show_debug_message("跑的方向:"+string(move_direction)+"|跑的時間:"+string(move_time*room_speed))
	if(  move_direction == 0 ){
		if( !place_meeting(x + mosterSpeed,y,oParentSolid) ){
			x += mosterSpeed
		}
	}else if( move_direction == 1 ){
		if( !place_meeting(x - mosterSpeed,y,oParentSolid) ){
			x -= mosterSpeed
		}	
	}else if( move_direction == 2 ){
		if( !place_meeting(x,y - mosterSpeed,oParentSolid) ){
			y -= mosterSpeed
		}	
	}else if( move_direction == 3 ){
		if( !place_meeting(x ,y+ mosterSpeed,oParentSolid) ){
			y += mosterSpeed
		}	
	}
}