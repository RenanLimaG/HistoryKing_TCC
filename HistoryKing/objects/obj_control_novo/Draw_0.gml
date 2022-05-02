/// @description Insert description here
// You can write your code in this editor
with(btn_brasil){
	textBtn = "Brasil";
    text = scr_text_btn(textBtn);
	
	draw_self();
    text.draw(x,y);
	
	if mouse_check_button_pressed(mb_left){
        if collision_point(mouse_x, mouse_y, self, true, false){
			room_goto(rm_mapaBrasil);
		}

	}
}
