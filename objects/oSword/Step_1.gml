if(!instance_exists(oPlayer)) exit;
get_input();
x = oPlayer.x;
y = oPlayer.y - 8;

if(mouse_x > x){
	image_angle = point_direction(x, y, mouse_x, mouse_y) - 45;
	image_xscale = 1;
}else{ 
	image_angle = point_direction(x, y, mouse_x, mouse_y) + 225;
	image_xscale = -1;
}
