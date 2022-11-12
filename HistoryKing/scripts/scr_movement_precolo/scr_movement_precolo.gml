// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement_precolo(player, position){
	with(player){
		switch(pos){
			case 0:
			with(position[1]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 1;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 3;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[4]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 4;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 1:
			with(position[0]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 0;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[2]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 2;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 3;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 2:
			with(position[1]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 1;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 3;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 3:
			with(position[0]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 0;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[1]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 1;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[2]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 2;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			
			with(position[5]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 5;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 4:
			with(position[0]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 0;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			
			with(position[5]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 5;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[6]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 6;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 5:
			with(position[0]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 0;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 3;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[4]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 4;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[6]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 6;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[7]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 7;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 6:
			with(position[4]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 4;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[5]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 5;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[7]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 7;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 7:
			with(position[5]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 5;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			with(position[6]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 6;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
						}
						new_position = false;
						scr_turn_loop();
						mouse_clear(mb_any);
					}
				}
			}
			break;
		}
	}

}