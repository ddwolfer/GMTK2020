get_input();

if(control){
	xx = right - left;
	yy = down - up;

	var xSpeed = xx * accell;
	var ySpeed = yy * accell;

	//Horizontal movement
	if(place_meeting(x + xSpeed, y, oParentSolid)){
		while(!place_meeting(x + sign(xSpeed), y, oParentSolid)){
			x += sign(xSpeed);
		}
		xSpeed = 0;
	}
	x += xSpeed;

	//Vertical movement
	if(place_meeting(x, y + ySpeed, oParentSolid)){
		while(!place_meeting(x, y + sign(ySpeed), oParentSolid)){
			y += sign(ySpeed);
		}
		ySpeed = 0;
	}
	y += ySpeed;

	//Sprite
	if((xx !=0 || yy != 0) && !death && !PlayerAttack){
		sprite_index = sPlayerRun;
		if(animation_hit_frame(1) || animation_hit_frame(5)){
			audio_play_sound(sdFootStep, 5, false);
		}
	}else{
		if(!death && !PlayerAttack)
		sprite_index = sPlayerIdle;
	}

	if(xSpeed > 0){
		image_xscale = 1;
	}else if(xSpeed < 0){
		image_xscale = -1;
	}
	
	if(mouseL && canAttack){
		if( currentWeapon == 1 ){
			audio_play_sound(sdMeleeAttack,2,0)
		}else{
			audio_play_sound(sdBowShoot,2,0)
		}
		state = state.attack;
		canAttack = false
		alarm[0] = attackCooldown * room_speed
	}
	if(instance_exists(oParentMelee)){ //////if Melee
		if( state == state.move ){
			oParentMelee.image_speed = 0;
			oParentMelee.image_index = 0;
		}else if(state == state.attack){
			if(!instance_exists(oHitBox)) create_hit_box(x, y, self, sSwordHitBox, 4, 1, damage, oParentMelee.image_xscale, oParentMelee.image_angle);
			with(oParentMelee){
				if(animation_end()){
					oPlayer.state = state.move;
				}else{
					image_speed = 1;
				}
			}
		}

	}else if(instance_exists(oParentRanged)){}////// if Ranged
}else{
	sprite_index = sPlayerIdle;
}

if(place_meeting(x, y, oMonsterParents) && !damaged){
	hp -= 1
	damaged = true;
	alarm[1] = 60;
	add_screenshake(50, 15);
}

//show_debug_message("attackCooldown"+string(attackCooldown)+"attack damage"+string(damage));
