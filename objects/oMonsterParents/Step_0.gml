if( MonsterStatus == MonsterStatus.idle && alarmFlag ){
	alarmFlag = 0
	alarm[0] = move_time * room_speed
}
if( MonsterStatus == MonsterStatus.move && alarmFlag){
	alarmFlag = 0
	alarm[1] = move_time * room_speed
}

if( MonsterStatus == MonsterStatus.idle ){
	sprite_index = sBlue_slime_idle
}
if( MonsterStatus == MonsterStatus.move ){
	sprite_index = sBlue_slime_move
	//show_debug_message("跑的方向:"+string(move_direction)+"|跑的時間:"+string(move_time*room_speed))
	if( place_meeting(x + mosterSpeed*2,y,oParentSolid) && place_meeting(x - mosterSpeed*2,y,oParentSolid) ) {
		move_direction = 2
	}
	if( place_meeting(x,y - mosterSpeed*2,oParentSolid) && place_meeting(x ,y+ mosterSpeed*2,oParentSolid) ){
		move_direction = 0
	}
	
	var collisionValue = 10
	if(  move_direction == 0 ){
		if( !place_meeting(x + mosterSpeed*collisionValue,y,oParentSolid) ){
			image_xscale = -1
			x += mosterSpeed
		}else{
			//show_debug_message("我卡住了 救救我>_<")
			image_xscale = 1
			move_direction = 1
		}
	}else if( move_direction == 1 ){
		if( !place_meeting(x - mosterSpeed*collisionValue,y,oParentSolid) ){
			image_xscale = 1
			x -= mosterSpeed
		}else{
			//show_debug_message("我卡住了 救救我>_<")
			image_xscale = -1
			move_direction = 0
		}
	}else if( move_direction == 2 ){
		if( !place_meeting(x,y - mosterSpeed*collisionValue,oParentSolid) ){
			y -= mosterSpeed
		}else{
			//show_debug_message("我卡住了 救救我>_<")
			move_direction = 3
		}
	}else if( move_direction == 3 ){
		if( !place_meeting(x ,y+ mosterSpeed*collisionValue,oParentSolid) ){
			y += mosterSpeed
		}else{
			//show_debug_message("我卡住了 救救我>_<")
			move_direction = 2
		}
	}
}
//get hit
if(place_meeting(x, y, oHitBox) && !damaged){
	damaged = true;
	hp -= oHitBox.damage;
	alarm[2] = 30;
}
if(place_meeting(x, y, oArrow) && !damaged){
	damaged = true;
	hp -= oArrow.damage;
	alarm[2] = 30;
}
show_debug_message(hp)
