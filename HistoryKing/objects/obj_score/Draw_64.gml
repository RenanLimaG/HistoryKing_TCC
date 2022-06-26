/// @description Insert description here
// You can write your code in this editor
textPlayer1.draw(1100,90);
textScore1.draw(1100,160);
textPlayer2.draw(1100,250);
textScore2.draw(1100,320);
if(global.num_jogs == 3){
	textPlayer3.draw(1100,410);
	textScore3.draw(1100,480);
}
else if(global.num_jogs == 4){
	textPlayer3.draw(1100,410);
	textScore3.draw(1100,480);
	textPlayer4.draw(1100,570);
	textScore4.draw(1100,640);
}
