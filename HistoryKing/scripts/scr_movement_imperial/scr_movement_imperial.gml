// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement_imperial(player, position){
	scr_movement_coloniza(player,position);
	with(player){
		switch(pos){
			case 8:
			with(position[20]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 20;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			
			break;
			
			case 9:
			with(position[17]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 17;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 11:
			with(position[15]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 15;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[17]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 17;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 12:
			with(position[14]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 14;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[15]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 15;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 13:
			with(position[14]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 14;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 14:
			with(position[13]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 13;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[12]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 12;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[15]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 15;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[19]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 19;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 15:
			with(position[14]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 14;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[12]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 12;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[11]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 11;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[16]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 16;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[18]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 18;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 16:
			with(position[15]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 15;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[11]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 11;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[17]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 17;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[19]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 19;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			
			break;
			
			case 17:
			with(position[9]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 9;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[11]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 11;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[16]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 16;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			
			break;
			
			case 18:
			with(position[14]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 14;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[15]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 15;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[19]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 19;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			
			break;
			
			case 19:
			with(position[18]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 18;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[16]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 10;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			
			break;
			
			case 20:
			with(position[8]){
				if (instance_position(mouse_x,mouse_y,self)){
					available = true;
				} else{
					available = false;
				}
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						available = false;
						with(player){
							pos = 8;
							mouse_clear(mb_any);
						}
						if(new_position){
							global.event_pause = true;
							new_position = false;
						} 
						else{
							new_position = false;
							scr_turn_loop();
						}
						mouse_clear(mb_any);
					}
				}
			}
			
			break;
			
		}
	}

}