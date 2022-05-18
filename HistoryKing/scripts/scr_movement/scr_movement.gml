// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_movement(player, position){
	with(player){
		switch(pos){
			case 0:
			with(position[1]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 1;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 3;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[4]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 4;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 1:
			with(position[0]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 0;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[2]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 2;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 3;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 2:
			with(position[1]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 1;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 3;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 3:
			with(position[0]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 0;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[1]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 1;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[2]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 2;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[4]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 4;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[5]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 5;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 4:
			with(position[0]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 0;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[3]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 3;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[5]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 5;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[6]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 6;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 5:
			with(position[3]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 3;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[4]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 4;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[6]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 6;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[7]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 7;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 6:
			with(position[4]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 4;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[5]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 5;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[7]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 7;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
			
			case 7:
			with(position[5]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 5;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			with(position[6]){
				if mouse_check_button_pressed(mb_left){
					if collision_point(mouse_x, mouse_y, self, true, false){
						with(player){
							pos = 6;
							switch(global.turn){
								case 0:
								global.turn = 1;
								break;
								
								case 1:
								if(global.num_jogs == 3 || global.num_jogs == 4){
									global.turn = 2;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 2:
								if(global.num_jogs == 4){
									global.turn = 3;
								}
								else{
									global.turn = 0;
								}
								break;
								
								case 3:
								global.turn = 0;
								break;
								
							}
						}
						mouse_clear(mb_any);
					}
				}
			}
			break;
		}
	}

}