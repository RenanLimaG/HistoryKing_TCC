/// @description OBJ para controle de eventos

room_persistent = true;

randomize();

window_set_size(1280,720);

global.game_state = state.init;
global.turn = turnState.turn_player1;

btn_quiz = instance_create_layer(900,620,"Instances",btn_padrao);
btn_troca = instance_create_layer(1100,500,"Instances",btn_padrao);

global.scoreP1 = 0;
global.scoreP2 = 0;
if(global.num_jogs == 3){
	global.scoreP3 = 0;
}
else if(global.num_jogs == 4){
	global.scoreP3 = 0;
	global.scoreP4 = 0;
}




