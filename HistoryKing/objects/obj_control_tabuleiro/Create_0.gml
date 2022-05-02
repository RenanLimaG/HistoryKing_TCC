/// @description OBJ para controle de eventos

window_set_size(1280,720);

game_state = state.player1;
player_selected = noone;

instance_create_layer(678,343,"Instances",obj_player1);
btn_quiz = instance_create_layer(900,620,"Instances",btn_padrao);

global.scoreP1 = 0;

textScore = scr_text_btn(global.scoreP1);



