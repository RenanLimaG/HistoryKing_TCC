/// @description Insert description here
// You can write your code in this editor
with(btn_brasil){
	textBtn = "Brasil";
    text = scr_text_btn(textBtn);
	
	draw_self();
    text.draw(x,y);
	
	if mouse_check_button_pressed(mb_left){
        if collision_point(mouse_x, mouse_y, self, true, false){
			with(obj_control_novo){
				mapa_selecionado = true;
			}
		}

	}
}

if(mapa_selecionado == true){
	instance_destroy(btn_brasil);
	
	with(btn_2jogs){
		visible = true;
		
		textBtn = "2 Jogadores";
		text = scr_text_btn(textBtn);
		draw_self();
		text.draw(x,y);
		
		if mouse_check_button_pressed(mb_left){
			if collision_point(mouse_x, mouse_y, self, true, false){
				global.num_jogs = 2;
				room_goto(rm_mapaBrasil);
			}
		}
	}
	with(btn_3jogs){
		visible = true;
		
		textBtn = "3 Jogadores";
		text = scr_text_btn(textBtn);
		draw_self();
		text.draw(x,y);
		
		if mouse_check_button_pressed(mb_left){
			if collision_point(mouse_x, mouse_y, self, true, false){
				global.num_jogs = 3;
				room_goto(rm_mapaBrasil);
			}
		}
	}
	with(btn_4jogs){
		visible = true;
		
		textBtn = "4 Jogadores";
		text = scr_text_btn(textBtn);
		draw_self();
		text.draw(x,y);
		
		if mouse_check_button_pressed(mb_left){
			if collision_point(mouse_x, mouse_y, self, true, false){
				global.num_jogs = 4;
				room_goto(rm_mapaBrasil);
			}
		}
	}
}
