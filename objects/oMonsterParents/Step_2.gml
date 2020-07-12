//death
if(hp <= 0){
	sprite_index = imageDeath;
	if(animation_end()) instance_destroy(self);
}
