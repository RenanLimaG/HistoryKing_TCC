/// @description Trocando o "game state"

switch(global.game_state){
	
	case state.init : 
	scr_xy_positions();
	position[0] = instance_create_layer(702,314,"Positions",obj_position);
	position[1] = instance_create_layer(764,241,"Positions",obj_position);
	position[2] = instance_create_layer(695,182,"Positions",obj_position);
	position[3] = instance_create_layer(635,266,"Positions",obj_position);
	position[4] = instance_create_layer(702,398,"Positions",obj_position);
	position[5] = instance_create_layer(609,372,"Positions",obj_position);
	position[6] = instance_create_layer(635,462,"Positions",obj_position);
	position[7] = instance_create_layer(540,495,"Positions",obj_position);
	
	player1 = instance_create_layer(786,314,"Instances",obj_player1);
	player2 = instance_create_layer(819,314,"Instances",obj_player2);
	if(global.num_jogs == 3){
		player3 = instance_create_layer(802,300,"Instances",obj_player3);
	}
	else if(global.num_jogs == 4){
		player3 = instance_create_layer(802,300,"Instances",obj_player3);
		player4 = instance_create_layer(802,333,"Instances",obj_player4);
	}
	global.game_state = state.startTurn;
	break;
	
	case state.startTurn :
	switch(global.round){
		case 4:
		if(round_4){
			position[8] = instance_create_layer(480,560,"Positions",obj_position);
			position[9] = instance_create_layer(412,465,"Positions",obj_position);
			position[10] = instance_create_layer(522,398,"Positions",obj_position);
			position[11] = instance_create_layer(437,359,"Positions",obj_position);
			position[12] = instance_create_layer(530,273,"Positions",obj_position);
			position[13] = instance_create_layer(590,175,"Positions",obj_position);
			for(var i = 0; i <=13; i++){
				with(position[i]){
					new_position = true;
				}
			}
			round_4 = false;
		}
		break;
		case 8:
		if(round_8){
			position[14] = instance_create_layer(500,181,"Positions",obj_position);
			position[15] = instance_create_layer(427,253,"Positions",obj_position);
			position[16] = instance_create_layer(326,289,"Positions",obj_position);
			position[17] = instance_create_layer(343,382,"Positions",obj_position);
			position[18] = instance_create_layer(401,153,"Positions",obj_position);
			position[19] = instance_create_layer(305,189,"Positions",obj_position);
			position[20] = instance_create_layer(416,608,"Positions",obj_position);
			for(var i = 0; i <=20; i++){
				with(position[i]){
					new_position = true;
				}
			}
			round_8 = false;
		}
	}
	
	switch(global.round){
		case 1:
		case 2:
		case 3:
		  switch(global.turn){
		  case turnState.turn_player1:
		  scr_movement_precolo(player1, position);
		  break;
		
		  case turnState.turn_player2:
		  scr_movement_precolo(player2, position);
		  break;
		
		  case turnState.turn_player3:
		  scr_movement_precolo(player3, position);
		  break;
		
		  case turnState.turn_player4:
		  scr_movement_precolo(player4, position);
		  break;
		
		  case turnState.turn_loop:
		  ds_list_destroy(global.lst_ordem);
	      global.lst_ordem = 0;
		  ds_list_destroy(global.lst_ordem_evento);
		  global.lst_ordem_evento = 0;
		  global.game_state = state.mini_game;
		  break;
	      }
		break;
		case 4:
	    case 5:
	    case 6:
	    case 7:
		switch(global.turn){
		  case turnState.turn_player1:
		  scr_movement_coloniza(player1, position);
		  break;
		
		  case turnState.turn_player2:
		  scr_movement_coloniza(player2, position);
		  break;
		
		  case turnState.turn_player3:
		  scr_movement_coloniza(player3, position);
		  break;
		
		  case turnState.turn_player4:
		  scr_movement_coloniza(player4, position);
		  break;
		
		  case turnState.turn_loop:
		  ds_list_destroy(global.lst_ordem);
	      global.lst_ordem = 0;
		  ds_list_destroy(global.lst_ordem_evento);
		  global.lst_ordem_evento = 0;
		  global.game_state = state.mini_game;
		  break;
	      }
		break;
		case 8:
	    case 9:
	    case 10:
	    case 11:
		case 12:
		switch(global.turn){
		  case turnState.turn_player1:
		  scr_movement_imperial(player1, position);
		  break;
		
		  case turnState.turn_player2:
		  scr_movement_imperial(player2, position);
		  break;
		
		  case turnState.turn_player3:
		  scr_movement_imperial(player3, position);
		  break;
		
		  case turnState.turn_player4:
		  scr_movement_imperial(player4, position);
		  break;
		
		  case turnState.turn_loop:
		  ds_list_destroy(global.lst_ordem);
	      global.lst_ordem = 0;
		  ds_list_destroy(global.lst_ordem_evento);
		  global.lst_ordem_evento = 0;
		  global.game_state = state.mini_game;
		  break;
	      }
		break;
	}
	
	break;
	
	case state.mini_game:
	room_goto(rm_quiz);
	break;
	
	case state.endTurn:
	if(global.round < 11){
		global.round++;
		instance_destroy(obj_round);
		instance_create_layer(32,32,"Instances", obj_round);
		global.game_state = state.startTurn;
	}
	else if(global.round == 11){
		global.game_state = state.endGame;
	}
	break;
	
	case state.endGame:
	if(global.num_jogs == 2){
		global.scoreP3 = 0;
		global.scoreP4 = 0;
	}
	
	if(global.num_jogs == 3){
		global.scoreP4 = 0;
	}
	
	if(global.scoreP1 > global.scoreP2 && global.scoreP1 > global.scoreP3 && global.scoreP1 > global.scoreP4){
		global.text_vitoria = scribble("O jogador 1 venceu!");
	    global.text_vitoria.starting_format("font_padrao", c_black);
	    global.text_vitoria.align(fa_center,fa_middle);
	} else if(global.scoreP2 > global.scoreP1 && global.scoreP2 > global.scoreP3 && global.scoreP2 > global.scoreP4){
		global.text_vitoria = scribble("O jogador 2 venceu!");
	    global.text_vitoria.starting_format("font_padrao", c_black);
	    global.text_vitoria.align(fa_center,fa_middle);
	} else if(global.scoreP3 > global.scoreP2 && global.scoreP3 > global.scoreP1 && global.scoreP3 > global.scoreP4){
		global.text_vitoria = scribble("O jogador 3 venceu!");
	    global.text_vitoria.starting_format("font_padrao", c_black);
	    global.text_vitoria.align(fa_center,fa_middle);
	} else if(global.scoreP4 > global.scoreP2 && global.scoreP4 > global.scoreP3 && global.scoreP4 > global.scoreP1){
		global.text_vitoria = scribble("O jogador 4 venceu!");
	    global.text_vitoria.starting_format("font_padrao", c_black);
	    global.text_vitoria.align(fa_center,fa_middle);
	}
	with(obj_event_pause){
		event_final = true;
	}
	break;
	
}
