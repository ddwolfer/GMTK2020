if(!instance_exists(oPlayer)) exit;
get_input();
x = oPlayer.x;
y = oPlayer.y - 8;

image_angle = point_direction(x, y, mouse_x, mouse_y) - 45;

/*if(mouseL && canShoot){
	canShoot = false;
	alarm[0] = 20;
	with(instance_create_layer(x, y, "Instances", oBullet)){
		speed = 5;
		direction = other.image_angle + 45;  //other = oGun
		image_angle = direction;
	}
}*/