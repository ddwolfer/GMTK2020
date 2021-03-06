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
		with(oGame){
			targetRoom = room2
			doTransition = true
		}
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
	if( button_group_click(optionGroup) == 1 ){
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
	if( button_click(decreaseSoundButton) ){
		scrChangeSoundVolume(-0.1)
		audio_play_sound( sdMenuSelect,2, false)
	}
	if( button_click(increaseSoundButton) ){
		scrChangeSoundVolume(0.1)
		audio_play_sound( sdMenuSelect,2, false)
	}
	
}

