/// @description Insert description here
// You can write your code in this editor
get_input()

frameCount++
if( !TriggerEnd ){
	if(place_meeting(x,y,oPlayer) && Page == Page.none ){
		Page = Page.coinRoll
		oPlayer.control = false
		RollX = display_get_gui_width()/2
		RollY = display_get_gui_height()/2
	}
	if( Page == Page.coinRoll ){
		if( start ){
			//決定 要哪進戰還是遠程 1 = 進戰 2 = 遠程
			coinNum = irandom_range(1,2)
			show_debug_message("骰到"+string(coinNum))
			Page = Page.coinShow
			alarm[0] = 120
		}
	}
	if( Page == Page.diceRoll ){
		
	
	}
	
}

