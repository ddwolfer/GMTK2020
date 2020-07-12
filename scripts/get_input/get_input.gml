up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));
left = keyboard_check(ord("A"));
action = keyboard_check_pressed(ord("E"));
attack = keyboard_check_pressed(ord("Q"));

mouseL = mouse_check_button_pressed(mb_left);
upMenu = keyboard_check_pressed(vk_up); 
downMenu = keyboard_check_pressed(vk_down);
leftMenu = keyboard_check_pressed(vk_left);
rightMenu = keyboard_check_pressed(vk_right);
start = keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space);
select = keyboard_check_pressed(vk_escape);
/*up = keyboard_check(vk_up); 
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
action = keyboard_check_pressed(ord("X"));
actionTurbo =  keyboard_check(ord("X"));
jump = keyboard_check_pressed(ord("Z")); 
jumpRelease = keyboard_check_released(ord("Z"));
jumpHold = keyboard_check(ord("Z"));



leftMenu = keyboard_check_pressed(vk_left);
rightMenu = keyboard_check_pressed(vk_right);*/