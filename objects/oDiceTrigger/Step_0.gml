/// @description Insert description here
// You can write your code in this editor
frameCount+=10
get_input()
if(!DiceEnd){
	if(place_meeting(x,y,oPlayer) && Dice == Dice.none ){
		Dice = Dice.roll
		oPlayer.control = false
		RollX = oPlayer.x *4
		RollY = oPlayer.y *4 -130
	}
	if( Dice == Dice.roll ){
		if( start ){
			DiceNum = floor(random_range(1,6))
			show_debug_message("骰到"+string(DiceNum+1))
			Dice = Dice.show
			alarm[0] = 180
		}
	}
}

