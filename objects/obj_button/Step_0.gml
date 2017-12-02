/// @description Insert description here
// You can write your code in this editor


if(keyboard_check_pressed(mb_left)
	&& mouse_x>cornerX 
	&& mouse_x<cornerX+width
	&& mouse_y>cornerY
	&& mouse_y<cornerY+height){
		scr_actionButton(buttonType);
}