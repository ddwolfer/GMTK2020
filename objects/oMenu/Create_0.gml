get_input()
audio_group_load(soundEffect)

enum MenuStatus{
	main = 0,
	option = 1
}
MenuStatus = MenuStatus.main
var width = 320
var height = 180
var box_width = 80
var box_height = 20
//menu
startButton = button_box_init("START",width-box_width,height-(box_height*5/2),width+box_width,height-(box_height*3/2))
optionButton = button_box_init("OPTION",width-box_width,height-(box_height/2),width+box_width,height+(box_height/2))
exitbuoon = button_box_init("EXIT",width-box_width,height+(box_height*3/2),width+box_width,height+(box_height*5/2))
MenuGroup = button_group_init(startButton, optionButton, exitbuoon, 1)
//option
soundSetting = button_box_init("Sound",width-box_width,height-(box_height*5/2),width,height-(box_height*3/2))
soundTextX = width+(box_width)/2
soundTextY = height-(box_height*4/2)
fullscreenSetting = button_box_init("FullScreen",width-box_width,height-(box_height/2),width,height+(box_height/2))
Fx1 = width+(box_width/2)-10
Fy1 = height-(box_height/2)
Fx2 = width+(box_width/2)+10
Fy2 = height+(box_height/2)
backButton = button_box_init("Back",width-box_width,height+(box_height*3/2),width+box_width,height+(box_height*5/2))
optionGroup = button_group_init(soundSetting, fullscreenSetting, backButton, 1)
decreaseSoundButton = button_box_init("<",Fx1-box_height, height-(box_height*5/2), Fx1, height-(box_height*3/2)) 
increaseSoundButton = button_box_init(">",Fx2, height-(box_height*5/2), Fx2+box_height, height-(box_height*3/2))
