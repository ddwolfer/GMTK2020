///@arg GroupID

group = argument0
buttonGroup = group[?"button"]

var MX = mouse_x
var MY = mouse_y

if( keyboard_check_pressed(vk_enter) ){
	return group[?"cursor"]
}
if( mouse_check_button_pressed(mb_left) ){
	for( var i = 0 ; i < array_length_1d(buttonGroup) ; i++ ){
		var Button = buttonGroup[i]
		if( MX >= Button[?"x1"] && MX <=Button[?"x2"] && MY >= Button[?"y1"] && MY <= Button[?"y2"]){
			return i
			
		}
	}
}
return -1