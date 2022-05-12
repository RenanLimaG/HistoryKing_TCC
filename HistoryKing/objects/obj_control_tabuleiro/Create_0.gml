/// @description OBJ para controle de eventos

room_persistent = true;

randomize();

window_set_size(1280,720);

global.game_state = state.init;
global.turn = turnState.turn_player1;

btn_quiz = instance_create_layer(900,620,"Instances",btn_padrao);
btn_troca = instance_create_layer(1100,500,"Instances",btn_padrao);

global.scoreP1 = 0;

textScore = scr_text_btn(global.scoreP1);



