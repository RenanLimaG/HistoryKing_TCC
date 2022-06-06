/// @description Desenhando os textos e os botões
// You can write your code in this editor
text_pergunta.draw(448,240);

text_alternativas[0].draw(448,385);
pos_alternativas[0] = [448,385];

text_alternativas[1].draw(448,461);
pos_alternativas[1] = [448,461];

text_alternativas[2].draw(448,536);
pos_alternativas[2] = [448,536];

text_alternativas[3].draw(448,612);
pos_alternativas[3] = [448,612];


//Criando obj no lugar exato da opção correta
for(var i = 0;i < 4;i++){
	
	if(text_alternativas[i].get_text() == resposta){
		obj_resp = instance_create_layer(pos_alternativas[i][0], pos_alternativas[i][1],
		"Instances", obj_quiz_resp);
		instance_destroy(obj_alternativas[i]);
	}
	
}
