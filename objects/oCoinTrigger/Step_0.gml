if(!instance_exists(oPlayer)) exit;
get_input()
randomize()
frameCount+=15
if( !TriggerEnd ){
	if(place_meeting(x,y,oPlayer) && Page == Page.none ){
		Page = Page.coinRoll
		oPlayer.control = false
		RollX = display_get_gui_width()/2
		RollY = display_get_gui_height()/2
	}
	if( Page == Page.coinRoll ){
		if( start ){
			//決定 要哪進戰還是遠程 1 = 進戰 2 = 遠程
			coinNum = irandom_range(1,2)
			show_debug_message("骰到"+string(coinNum))
			Page = Page.coinShow
			alarm[0] = 120
		}
	}
	if( Page == Page.diceRoll ){
		if( start ){
			diceNum1 = irandom_range(1,6)
			diceNum2 = irandom_range(1,6)
			diceNum3 = irandom_range(1,6)
			show_debug_message(string(diceNum1)+"|"+string(diceNum2)+"|"+string(diceNum3)+"|")
			Page = Page.diceShow
			alarm[1] = 120
		}
	}
}

if(TriggerEnd){
	if(instance_exists(oParentMelee)) instance_destroy(oParentMelee);
	else if(instance_exists(oParentRanged)) instance_destroy(oParentRanged);
	switch(coinNum){
		case 1:  //melee
			if(diceNum1 == 1) {oPlayer.attackCooldown = 1.5};  //attack speed
			else if(diceNum1 == 2) {oPlayer.attackCooldown = 1.1};
			else if(diceNum1 == 3) {oPlayer.attackCooldown = 0.9};
			else if(diceNum1 == 4) {oPlayer.attackCooldown = 0.7};
			else if(diceNum1 == 5) {oPlayer.attackCooldown = 0.5};
			else if(diceNum1 == 6) {oPlayer.attackCooldown = 0.3};
			
			if(diceNum2 == 1 || diceNum2 == 2){  //attack range
				with(oPlayer) instance_create_layer(x, y, "Weapon", oDagger)
			};
			else if(diceNum2 == 3 || diceNum2 == 4){
				with(oPlayer) instance_create_layer(x, y, "Weapon", oSword)
			};
			else if(diceNum2 == 5 || diceNum2 == 6){
				with(oPlayer) instance_create_layer(x, y, "Weapon", oSpear)
			};
			
			if(diceNum3 == 1) {oPlayer.damage = 2};  //attack damage
			else if(diceNum3 == 2) {oPlayer.damage = 3};
			else if(diceNum3 == 3) {oPlayer.damage = 5};
			else if(diceNum3 == 4) {oPlayer.damage = 7};
			else if(diceNum3 == 5) {oPlayer.damage = 10};
			else if(diceNum3 == 6) {oPlayer.damage = 15};
			break;
			
		case 2:  //ranged
			if(diceNum1 == 1) {oPlayer.attackCooldown = 1.5};  //attack speed
			else if(diceNum1 == 2) {oPlayer.attackCooldown = 1.1};
			else if(diceNum1 == 3) {oPlayer.attackCooldown = 0.9};
			else if(diceNum1 == 4) {oPlayer.attackCooldown = 0.7};
			else if(diceNum1 == 5) {oPlayer.attackCooldown = 0.5};
			else if(diceNum1 == 6) {oPlayer.attackCooldown = 0.3};
			
			if(diceNum2 == 1 || diceNum2 == 2 || diceNum2 == 3){  //attack range
				with(oPlayer) instance_create_layer(x, y, "Weapon", oBow)
			};
			else if(diceNum2 == 4 || diceNum2 == 5 || diceNum2 == 6){
				with(oPlayer) instance_create_layer(x, y, "Weapon", oBow)
			};
			
			if(diceNum3 == 1) {oPlayer.damage = 2};  //attack damage
			else if(diceNum3 == 2) {oPlayer.damage = 3};
			else if(diceNum3 == 3) {oPlayer.damage = 5};
			else if(diceNum3 == 4) {oPlayer.damage = 7};
			else if(diceNum3 == 5) {oPlayer.damage = 10};
			else if(diceNum3 == 6) {oPlayer.damage = 15};
			break;
	}
	instance_destroy(self);
}

