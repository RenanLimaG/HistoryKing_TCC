function scr_movement_coloniza(player, position){
	scr_movement_precolo(player,position);
	with(player){
		switch(pos){
			case 2:
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
			break;
			case 3:
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
			break;
			
			case 5:
			with(position[10]){
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
			break;
			
		    case 6:
			with(position[10]){
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
			
			case 7:
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
			with(position[10]){
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
			
			case 8:
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
			break;
			
			case 9:
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
			with(position[10]){
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
			
			break;
			
			case 10:
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
			break;
			
			case 11:
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
			with(position[10]){
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
			break;
			
			case 12:
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
			with(position[10]){
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
			break;
			
			case 13:
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
			break;
		}
	}

}