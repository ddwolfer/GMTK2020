/// @description Insert description here
// You can write your code in this editor

TriggerEnd = false

enum Page{
	none = 0,
	coinRoll = 1,
	coinShow = 2,
	diceRoll = 3,
	diceShow = 4
}
Page = Page.none

RollX = 0
RollY = 0
coinNum = 0 // 1 = melee  2 = ranged

frameCount = 0
coinRollFrame = 0
diceRollFrame = 0

diceNum1 = irandom_range(1,6) //attack speed 
diceNum2 = irandom_range(1,6) //range
diceNum3 = irandom_range(1,6) //damage
diceTextBoxH = 30
diceTextBoxW = 60