/// @description Insert description here
// You can write your code in this editor
text_pergunta.draw(640,240);

text_alternativas[0].draw(640,385);
pos_alternativas[0] = [640,385];

text_alternativas[1].draw(640,461);
pos_alternativas[1] = [640,461];

text_alternativas[2].draw(640,536);
pos_alternativas[2] = [640,536];

text_alternativas[3].draw(640,612);
pos_alternativas[3] = [640,612];

for(var i = 0;i < 4;i++){
	
	if(text_alternativas[i].get_text() == resposta){
		instance_create_layer(pos_alternativas[i][0], pos_alternativas[i][1],
		"Instances", obj_quiz_resp);
	}
	
}
