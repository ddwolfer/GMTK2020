get_input()

if( MenuStatus == MenuStatus.main ){
	#region
	//sound
	if( upMenu || downMenu){
		audio_play_sound( sdMenuSelect,2, false)
	}
	//end game
	if( button_group_click(MenuGroup) == 2 ){
		audio_play_sound( sdMenuConfirm,2, false)
		game_end()
	
	}
	//start game
	else if( button_group_click(MenuGroup) == 0 ){ 
		audio_play_sound( sdMenuConfirm,2, false)
		room_goto(room0)
	}
	//option
	else if( button_group_click(MenuGroup) == 1 ){
		audio_play_sound( sdMenuConfirm,2, false)
		MenuStatus = MenuStatus.option
	}
	#endregion
}else if( MenuStatus == MenuStatus.option ){ 
	//sound
	if( upMenu || downMenu || leftMenu || rightMenu){
		audio_play_sound( sdMenuSelect,2, false)
	}
	//back to main menu
	if( button_group_click(optionGroup) == 2 ){
		audio_play_sound( sdMenuConfirm,2, false)
		MenuStatus = MenuStatus.main
	}
	//set audio
	if( button_group_get_cursor(optionGroup) == 0 ){
		if( leftMenu ){
			scrChangeSoundVolume(-0.1)
		}
		if( rightMenu ){
			scrChangeSoundVolume(0.1)
		}
	}
	//set fullscreen
	if( button_group_click(optionGroup) == 1 ){
		audio_play_sound( sdMenuConfirm,2, false)
		if( window_get_fullscreen() ){
			window_set_fullscreen(false)
		}else{
			window_set_fullscreen(true)
		}
		
	}
}

