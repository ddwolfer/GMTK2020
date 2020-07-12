if( MenuStatus == MenuStatus.main ){
	draw_button_group(MenuGroup,$B2B2B2,c_white)
}else if( MenuStatus == MenuStatus.option ){ 
	draw_button_group(optionGroup,$B2B2B2,c_white)
	
	if( button_group_get_cursor(optionGroup) == 0 ){
		draw_button_gui(decreaseSoundButton,c_white,c_white)
		draw_button_gui(increaseSoundButton,c_white,c_white)
		var soundNow = SOUND_VOLUME * 10
		draw_set_color(c_white)
		draw_rectangle(Fx1*2, (soundTextY-10)*2, Fx2*2, (soundTextY+10)*2,0)
	}else{
		draw_button_gui(decreaseSoundButton,$B2B2B2,c_white)
		draw_button_gui(increaseSoundButton,$B2B2B2,c_white)
		var soundNow = SOUND_VOLUME * 10
		draw_set_color($B2B2B2)
		draw_rectangle(Fx1*2, (soundTextY-10)*2, Fx2*2, (soundTextY+10)*2,0)
	}
	
	
	
	
	draw_set_color(c_black)
	draw_text(soundTextX*2,soundTextY*2,string( floor(soundNow) ))
	draw_set_color(c_white)
	
}

