/// @description Insert description here
// You can write your code in this editor
if( !TriggerEnd ){
	if( Page != Page.none ){
		black_rectangle(0.4)
	}
	// 擲硬幣
	if(Page==Page.coinRoll){
		draw_sprite_ext( sRollCoin, coinRollFrame%12, RollX, RollY,3,3,0,-1,1 )
	}
	// 顯示硬幣結果
	if(Page == Page.coinShow){
		#region
		if( coinNum == 1 ){
			draw_sprite_ext( sRollCoin , 0, RollX, RollY,3,3,0,-1,1)
		}else{
			draw_sprite_ext( sRollCoin , 6, RollX, RollY,3,3,0,-1,1)
		}
		#endregion
	}
	// 骰色子
	if( Page == Page.diceRoll ){
		#region
		draw_set_color(c_white)
		draw_rectangle(display_get_gui_width()*1/4-diceTextBoxW,display_get_gui_height()/2-diceTextBoxH,display_get_gui_width()*1/4+diceTextBoxW,display_get_gui_height()/2+diceTextBoxH,0)
		draw_rectangle(display_get_gui_width()/2-diceTextBoxW,display_get_gui_height()/2-diceTextBoxH,display_get_gui_width()/2+diceTextBoxW,display_get_gui_height()/2+diceTextBoxH,0)
		draw_rectangle(display_get_gui_width()*3/4-diceTextBoxW,display_get_gui_height()/2-diceTextBoxH,display_get_gui_width()*3/4+diceTextBoxW,display_get_gui_height()/2+diceTextBoxH,0)
		draw_set_valign(fa_center)
		draw_set_halign(fa_center)
		draw_set_color(c_black)
		draw_text(display_get_gui_width()*1/4,display_get_gui_height()/2,"Speed")
		draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"Range")
		draw_text(display_get_gui_width()*3/4,display_get_gui_height()/2,"Attack")
		
		draw_sprite_ext(sRoll_dice,diceRollFrame%6,display_get_gui_width()*1/4,display_get_gui_height()*3/4,5,5,0,-1,1)
		draw_sprite_ext(sRoll_dice,diceRollFrame%6,display_get_gui_width()/2,display_get_gui_height()*3/4,5,5,0,-1,1)
		draw_sprite_ext(sRoll_dice,diceRollFrame%6,display_get_gui_width()*3/4,display_get_gui_height()*3/4,5,5,0,-1,1)
		#endregion
	}
	// 顯示色子結果
	if( Page == Page.diceShow ){
		#region
		draw_set_color(c_white)
		draw_rectangle(display_get_gui_width()*1/4-diceTextBoxW,display_get_gui_height()/2-diceTextBoxH,display_get_gui_width()*1/4+diceTextBoxW,display_get_gui_height()/2+diceTextBoxH,0)
		draw_rectangle(display_get_gui_width()/2-diceTextBoxW,display_get_gui_height()/2-diceTextBoxH,display_get_gui_width()/2+diceTextBoxW,display_get_gui_height()/2+diceTextBoxH,0)
		draw_rectangle(display_get_gui_width()*3/4-diceTextBoxW,display_get_gui_height()/2-diceTextBoxH,display_get_gui_width()*3/4+diceTextBoxW,display_get_gui_height()/2+diceTextBoxH,0)
		draw_set_valign(fa_center)
		draw_set_halign(fa_center)
		draw_set_color(c_black)
		draw_text(display_get_gui_width()*1/4,display_get_gui_height()/2,"Speed")
		draw_text(display_get_gui_width()/2,display_get_gui_height()/2,"Range")
		draw_text(display_get_gui_width()*3/4,display_get_gui_height()/2,"Attack")
		
		draw_sprite_ext(sDice,diceNum1-1,display_get_gui_width()*1/4,display_get_gui_height()*3/4,4,4,0,-1,1)
		draw_sprite_ext(sDice,diceNum2-1,display_get_gui_width()/2,display_get_gui_height()*3/4,4,4,0,-1,1)
		draw_sprite_ext(sDice,diceNum3-1,display_get_gui_width()*3/4,display_get_gui_height()*3/4,4,4,0,-1,1)
		#endregion
	}
	// 調整速度用
	if( frameCount % room_speed == 0 && (Page==Page.coinRoll || Page==Page.diceRoll) ){
		coinRollFrame++
		diceRollFrame++
	}

}
