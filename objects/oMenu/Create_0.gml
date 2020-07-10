get_input()
//audio_group_load(soundEffect)

enum MenuStatus{
	main = 0,
	option = 1
}
MenuStatus = MenuStatus.main
var width = 320
var height = 180
var box_width = 80
var box_height = 20



startButton = button_box_init("START",width-box_width,height-(box_height*5/2),width+box_width,height-(box_height*3/2))
optionButton = button_box_init("OPTION",width-box_width,height-(box_height/2),width+box_width,height+(box_height/2))
exitbuoon = button_box_init("EXIT",width-box_width,height+(box_height*3/2),width+box_width,height+(box_height*5/2))
MenuGroup = button_group_init(startButton, optionButton, exitbuoon, 1)
