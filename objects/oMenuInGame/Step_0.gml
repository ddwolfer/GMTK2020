/// @description Insert description here
// You can write your code in this editor
get_input()
//show_debug_message("mousex = "+string(mouse_x)+"| display:"+string(window_mouse_get_x())+"|windodwsSize:"+string( window_get_width()/room_width))
if( room != rMenu ){
	if( MenuInGame==MenuInGame.close ){
		if( select ){
			MenuInGame = MenuInGame.main
		}
	}else if( MenuInGame==MenuInGame.main ){
		if( select ){
			MenuInGame = MenuInGame.close
		}
		if( start ){
			if( button_group_click(MenuGroup) == 0 ){
				MenuInGame = MenuInGame.close
			}else if( button_group_click(MenuGroup) == 1 ){
				MenuInGame=MenuInGame.quit
			}
		}
	}else if( MenuInGame==MenuInGame.quit ){
		room_goto(rMenu)
	}
	
}	