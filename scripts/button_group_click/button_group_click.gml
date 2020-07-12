///@arg GroupID

group = argument0
buttonGroup = group[?"button"]

var MX = 0
var MY = 0

if( keyboard_check_pressed(vk_enter) ){
	show_debug_message(group[?"cursor"])
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