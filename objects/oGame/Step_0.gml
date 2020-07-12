if(room != rMenu && !instance_exists(oPlayer)) {
	room_goto(rMenu);
}
if( room!=rMenu && playMusic ){
	audio_play_sound(sdBackgroundMusic,100,1)
	playMusic = false
}

if( room==rMenu ){
	playMusic = true
	audio_stop_sound(sdBackgroundMusic)
}