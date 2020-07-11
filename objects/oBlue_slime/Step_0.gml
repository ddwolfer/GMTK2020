/// @description Insert description here
// You can write your code in this editor
event_inherited()
if( MonsterStatus == MonsterStatus.idle ){
	sprite_index = sBlue_slime_idle
}else if( MonsterStatus == MonsterStatus.move ){
	sprite_index = sBlue_slime_move
}