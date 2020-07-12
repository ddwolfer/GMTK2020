if(hp <= 0 && !death){
	death = true;
	sprite_index = sPlayerDie;
	image_speed = 0.8;
	oGame.playerDead = true;
	alarm[2] = 20;
}