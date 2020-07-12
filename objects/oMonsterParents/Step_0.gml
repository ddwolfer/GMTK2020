if( MonsterStatus == MonsterStatus.idle && alarmFlag ){
	alarmFlag = 0
	alarm[0] = move_time * room_speed
}
if( MonsterStatus == MonsterStatus.move && alarmFlag){
	alarmFlag = 0
	alarm[1] = move_time * room_speed
}

if( MonsterStatus == MonsterStatus.idle ){
	sprite_index = imageIdle
}
if( MonsterStatus == MonsterStatus.move ){
	//show_debug_message("跑的方向:"+string(move_direction)+"|跑的時間:"+string(move_time*room_speed))
	if( place_meeting(x + monsterSpeed*2,y,oParentSolid) && place_meeting(x - monsterSpeed*2,y,oParentSolid) ) {
		move_direction = 2
	}
	if( place_meeting(x,y - monsterSpeed*2,oParentSolid) && place_meeting(x ,y+ monsterSpeed*2,oParentSolid) ){
		move_direction = 0
	}
	
	var collisionValue = 10
	if(  move_direction == 0 ){
		sprite_index = imageMove
		if( !place_meeting(x + monsterSpeed*collisionValue,y,oParentSolid) ){
			image_xscale = -1
			x += monsterSpeed
		}else{
			//show_debug_message("我卡住了 救救我>_<")
			image_xscale = 1
			move_direction = 1
		}
	}else if( move_direction == 1 ){
		sprite_index = imageMove
		if( !place_meeting(x - monsterSpeed*collisionValue,y,oParentSolid) ){
			image_xscale = 1
			x -= monsterSpeed
		}else{
			//show_debug_message("我卡住了 救救我>_<")
			image_xscale = -1
			move_direction = 0
		}
	}else if( move_direction == 2 ){
		sprite_index = imageJump
		if( !place_meeting(x,y - monsterSpeed*collisionValue,oParentSolid) ){
			y -= monsterSpeed
		}else{
			//show_debug_message("我卡住了 救救我>_<")
			move_direction = 3
		}
	}else if( move_direction == 3 ){
		sprite_index = imageJump
		if( !place_meeting(x ,y+ monsterSpeed*collisionValue,oParentSolid) ){
			y += monsterSpeed
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
