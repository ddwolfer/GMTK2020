///@arg ID
///@arg button_Color 
///@arg mouse_on_button_Color


var windowSize =  window_get_width()/room_width

var Button = argument0
var MX = mouse_x
var MY = mouse_y

DrawX1 = windowSize * Button[?"x1"]
DrawX2 = windowSize * Button[?"x2"]
DrawY1 = windowSize * Button[?"y1"]
DrawY2 = windowSize * Button[?"y2"]
centerX = (DrawX1 + DrawX2)/2
centerY = (DrawY1 + DrawY2)/2

if( MX >= Button[?"x1"] && MX <=Button[?"x2"] && MY >= Button[?"y1"] && MY <= Button[?"y2"]){
	Button[?"cursor"] = 1
}else{
	Button[?"cursor"] = 0
}

if( Button[?"cursor"] == 1 ){
	draw_set_color(argument2)
	draw_rectangle(DrawX1, DrawY1, DrawX2, DrawY2, 0)
}else{
	draw_set_color(argument1)
	draw_rectangle(DrawX1, DrawY1, DrawX2, DrawY2, 0)
}


draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_text(centerX,centerY,Button[?"text"])