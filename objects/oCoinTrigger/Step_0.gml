/// @description Insert description here
// You can write your code in this editor
get_input()

frameCount+=15
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
		if( start ){
			diceNum1 = irandom_range(1,6)
			diceNum2 = irandom_range(1,6)
			diceNum3 = irandom_range(1,6)
			show_debug_message(string(diceNum1)+"|"+string(diceNum2)+"|"+string(diceNum3)+"|")
			Page = Page.diceShow
			alarm[1] = 120
		}
	}else if(Page != Page.diceRoll && Page != Page.diceShow){
		//決定 3個不同的素質
		diceNum1 = irandom_range(1,6)
		diceNum2 = irandom_range(1,6)
		diceNum3 = irandom_range(1,6)
	}
}

