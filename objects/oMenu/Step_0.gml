get_input()

if( MenuStatus == MenuStatus.main ){
	#region
	if( upMenu || downMenu){
		audio_play_sound( sdMenuSelect,2, false)
	}

	if( button_group_click(MenuGroup) == 2 ){
		audio_play_sound( sdMenuConfirm,2, false)
		game_end()
	}else if( button_group_click(MenuGroup) == 0 ){
		audio_play_sound( sdMenuConfirm,2, false)

	}else if( button_group_click(MenuGroup) == 1 ){
		audio_play_sound( sdMenuConfirm,2, false)
	}
	#endregion
}else if( MenuStatus == MenuStatus.option ){ 
	
}

