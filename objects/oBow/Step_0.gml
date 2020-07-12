if(!instance_exists(oPlayer)) exit;
get_input();
x = oPlayer.x;
y = oPlayer.y - 8;

image_angle = point_direction(x, y, mouse_x, mouse_y) - 45;

if(mouseL && canShoot){
	canShoot = false;
	alarm[0] = oPlayer.attackCooldown * room_speed;
	with(instance_create_layer(x, y, "Instances", oArrow)){
		speed = 5;
		direction = other.image_angle + 45;  //other = oGun
		image_angle = direction - 45;
	}
}

show_debug_message(image_angle)