/// @description Insert description here
// You can write your code in this editor
frameCount+=10
get_input()
if(!DiceEnd){
	if(place_meeting(x,y,oPlayer) && Dice == Dice.none ){
		Dice = Dice.roll
		oPlayer.control = false
		RollX = (oPlayer.x - 25 )*2 
		RollY = (oPlayer.y - 60 )*2
	}
	if( Dice == Dice.roll ){
		if( start ){
			DiceNum = irandom_range(1,6)
			show_debug_message("骰到"+string(DiceNum+1))
			Dice = Dice.show
			alarm[0] = 180
		}
	}
}

