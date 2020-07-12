/// @description Insert description here
// You can write your code in this editor
if( !TriggerEnd ){
	if(Page==Page.coinRoll){
		black_rectangle(0.4)
		draw_sprite_ext( sRollCoin, coinRollFrame%12, RollX, RollY,3,3,0,-1,1 )
	}else if(Page == Page.coinShow){
		black_rectangle(0.4)
		if( coinNum == 1 ){
			draw_sprite_ext( sRollCoin , 0, RollX, RollY,3,3,0,-1,1)
		}else{
			draw_sprite_ext( sRollCoin , 6, RollX, RollY,3,3,0,-1,1)
		}
	}
	
	if( frameCount*12 % room_speed == 0 && Page==Page.coinRoll ){
		coinRollFrame++
	}

}
