//death
if(hp <= 0){
	sprite_index = sBlue_slime_die;
	if(animation_end()) instance_destroy(self);
}
