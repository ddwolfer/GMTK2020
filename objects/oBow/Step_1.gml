event_inherited();
if(mouseL && canShoot){
	canShoot = false;
	alarm[0] = 20;
	with(instance_create_layer(x, y, "Instances", oArrow)){
		speed = 5;
		direction = other.image_angle + 45;  //other = oGun
		image_angle = direction - 45;
	}
}
