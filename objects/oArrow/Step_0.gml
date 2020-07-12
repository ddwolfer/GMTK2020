if(place_meeting(x, y, oSolid)) instance_destroy(self);

if(place_meeting(x, y, oMonsterParents) && !canPierce){
	instance_destroy(self);
}
