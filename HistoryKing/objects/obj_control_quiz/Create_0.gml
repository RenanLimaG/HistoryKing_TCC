/// @description OBJ para controlar eventos
// You can write your code in this editor

//Criando o Array para as perguntas
perguntas_brasil_precolo[0][0] = noone;
scr_quiz_questions(perguntas_brasil_precolo);

randomise(); // Randomizando seed

if !ds_exists(global.lst_ordem, ds_type_list){
	global.lst_ordem = ds_list_create();
	for(var temp = 0;temp < 6;temp++){
		ds_list_add(global.lst_ordem, temp);
	}
	ds_list_shuffle(global.lst_ordem);
}

//Procediemento de escolher um item aleatória do array de perguntas, e definindo 
//as variaveis conforme o item escolhido
var i = ds_list_find_value(global.lst_ordem, 0);
ds_list_delete(global.lst_ordem, 0);
atual_pergunta = perguntas_brasil_precolo[i][0];
resposta_num = perguntas_brasil_precolo[i][5];
resposta = perguntas_brasil_precolo[i][resposta_num];


//Procedimento padrão para criar textos com Scribble
//Ver em: https://www.jujuadams.com/Scribble/#/latest/
text_pergunta = scribble(atual_pergunta);
text_pergunta.starting_format("font_padrao_quiz", c_black);
text_pergunta.align(fa_center,fa_middle);
text_pergunta.wrap(440);


//Buscando as alternativas do item do array de perguntas e escrevendo elas na
//tela com o Scribble
for(var j = 0;j < 4;j++){
	
	atual_alternativa = perguntas_brasil_precolo[i][j+1];
	text_alternativas[j] = scribble(atual_alternativa);
	text_alternativas[j].starting_format("font_padrao", c_black);
	text_alternativas[j].align(fa_center,fa_middle);
	
}

//Criando os botões para as opções, e guardando eles em variaveis
obj_alternativas[0] = instance_create_layer(640,385,"Instances",obj_quiz_opcao);
obj_alternativas[1] =instance_create_layer(640,461,"Instances",obj_quiz_opcao);
obj_alternativas[2] =instance_create_layer(640,536,"Instances",obj_quiz_opcao);
obj_alternativas[3] =instance_create_layer(640,612,"Instances",obj_quiz_opcao);

btn_tabu = instance_create_layer(1000,620,"Instances",btn_padrao);

textScore = scr_text_btn(global.scoreP1);

with(btn_tabu){
	image_xscale = 6;
}
