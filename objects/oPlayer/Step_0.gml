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
		state = state.attack;
		canAttack = false
		alarm[0] = attackCooldown * room_speed
	}
	if( state == state.move ){
		oDagger.image_speed = 0;
		oDagger.image_index = 0;
	}else if(state == state.attack){
		create_hit_box(x, y, self, sSwordHitBox, 4, 4, 1, image_xscale);
		with(oDagger){

			if(animation_end()){
				oPlayer.state = state.move;
			}else{
				image_speed = 1;
			}
		}
	}
}else{
	sprite_index = sPlayerIdle;
}
