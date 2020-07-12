///@arg ID

var Button = argument0

var MX = 0
var MY = 0

if( mouse_check_button_pressed(mb_left) ){
	if( MX >= Button[?"x1"] && MX <=Button[?"x2"] && MY >= Button[?"y1"] && MY <= Button[?"y2"]){
		return true
	}
}
return false