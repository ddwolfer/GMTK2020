if(place_meeting(x, y, oPlayer) && !spawned){
	for(var i = 0; i < maxNum; i++){
		monsterCreate=instance_create_layer(x + random_range(16, width - 16), y + random_range(16, height - 16),"Instances", oBlue_slime)
		with( monsterCreate ){
			if( place_meeting( x, y, oSolid ) ) instance_destroy(self);
		}	
	}
	spawned = true;
}
if(spawned) instance_destroy(self);
