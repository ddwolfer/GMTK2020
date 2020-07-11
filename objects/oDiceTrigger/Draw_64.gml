/// @description Insert description here
// You can write your code in this editor
if(!DiceEnd){
	if( Dice = Dice.roll ){
		if( frameCount%room_speed == 0 ) rollFrame++
		draw_sprite_ext(sRoll_dice,rollFrame%6,RollX,RollY,5,5,0,-1,1)
		//draw_sprite( roll_dice ,rollFrame%6,RollX,RollY)
	}else if(Dice == Dice.show){
		draw_sprite_ext( sDice , DiceNum-1, RollX, RollY,4,4,0,-1,1)
	}
}