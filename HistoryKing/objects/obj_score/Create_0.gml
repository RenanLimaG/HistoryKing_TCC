/// @description Insert description here
// You can write your code in this editor
textPlayer1 = scr_text_btn("Jogador 1");
textScore1 = scr_text_btn("Pontos: " + string(global.scoreP1));
textPlayer2 = scr_text_btn("Jogador 2");
textScore2 = scr_text_btn("Pontos: " + string(global.scoreP2));
if(global.num_jogs == 3){
	textPlayer3 = scr_text_btn("Jogador 3");
	textScore3 = scr_text_btn("Pontos: " + string(global.scoreP3));
}
else if(global.num_jogs == 4){
	textPlayer3 = scr_text_btn("Jogador 3");
	textScore3 = scr_text_btn("Pontos: " + string(global.scoreP3));
	textPlayer4 = scr_text_btn("Jogador 4");
	textScore4 = scr_text_btn("Pontos: " + string(global.scoreP4));
}
