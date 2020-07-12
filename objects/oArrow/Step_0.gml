if(place_meeting(x, y, oSolid)) instance_destroy(self);

if(place_meeting(x, y, oMonsterParents) && !canPierce){
	alarm[0] = 1;
}
