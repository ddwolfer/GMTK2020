/// @description Insert description here
// You can write your code in this editor
enum MenuInGame{
	close = 0,
	main = 1,
	option = 2,
	quit = 3
}
MenuInGame = MenuInGame.close

var width = 640
var height = 360
var box_width = 160
var box_height = 40
//menu
resumeButton = button_box_init("RESUME",width-box_width,height-(box_height*5/2),width+box_width,height-(box_height*3/2))
//optionButton = button_box_init("OPTION",width-box_width,height-(box_height/2),width+box_width,height+(box_height/2))
exitbuoon = button_box_init("BACK TO TITLE",width-box_width,height+(box_height*3/2),width+box_width,height+(box_height*5/2))
MenuGroup = button_group_init(resumeButton, exitbuoon, 1)
