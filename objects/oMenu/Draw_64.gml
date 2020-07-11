if( MenuStatus == MenuStatus.main ){
	draw_button_group(MenuGroup,c_white,c_gray)
}else if( MenuStatus == MenuStatus.option ){ 
	draw_button_group(optionGroup,c_white,c_gray)
	draw_button_gui(decreaseSoundButton,c_white,c_gray)
	draw_button_gui(increaseSoundButton,c_white,c_gray)
	var soundNow = SOUND_VOLUME * 10
	draw_set_color(c_white)
	draw_rectangle(Fx1*2, (soundTextY-10)*2, Fx2*2, (soundTextY+10)*2,0)
	draw_set_color(c_black)
	draw_text(soundTextX*2,soundTextY*2,string( floor(soundNow) ))
	draw_set_color(c_white)
	draw_rectangle(Fx1*2, Fy1*2, Fx2*2, Fy2*2,1)
	if( window_get_fullscreen() ){
		draw_rectangle(Fx1*2+6, Fy1*2+6 , Fx2*2-5 , Fy2*2-5,0)
	}
	
}

