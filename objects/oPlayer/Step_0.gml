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
}
