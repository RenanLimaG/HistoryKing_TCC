/// @description OBJ para controlar eventos
// You can write your code in this editor

//get = http_get("https://history-king-mongodb.herokuapp.com/perguntas");
get = http_get("https://us-east-1.aws.data.mongodb-api.com/app/historyking-dllqh/endpoint/get_perguntas");
global.loading = true;

global.turn = turnState.turn_player1;

//Criando o Array para as perguntas
/*perguntas_brasil_precolo[0][0] = noone;
scr_quiz_questions(perguntas_brasil_precolo);*/
if !ds_exists(global.lst_ordem, ds_type_list){
			global.lst_ordem = ds_list_create();
			for(var temp = 0;temp < 4;temp++){
				ds_list_add(global.lst_ordem, temp);
		    }
		    ds_list_shuffle(global.lst_ordem);
		    }

        //Procediemento de escolher um item aleatória do array de perguntas, e definindo 
        //as variaveis conforme o item escolhido
        ordem = ds_list_find_value(global.lst_ordem, 0);
		ds_list_delete(global.lst_ordem, 0);
		
		var str = ds_list_write(global.lst_ordem);
		show_debug_message(str);


//Criando os botões para as opções, e guardando eles em variaveis
obj_alternativas[0] = instance_create_layer(448,385,"Instances",obj_quiz_opcao);
obj_alternativas[1] =instance_create_layer(448,461,"Instances",obj_quiz_opcao);
obj_alternativas[2] =instance_create_layer(448,536,"Instances",obj_quiz_opcao);
obj_alternativas[3] =instance_create_layer(448,612,"Instances",obj_quiz_opcao);

