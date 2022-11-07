/// @description OBJ para controlar eventos
// You can write your code in this editor

//get = http_get("https://history-king-mongodb.herokuapp.com/perguntas");
global.loading = true;
get = http_get("https://us-east-1.aws.data.mongodb-api.com/app/historyking-dllqh/endpoint/get_perguntas");

global.turn = turnState.turn_player1;

//Criando o Array para as perguntas
/*perguntas_brasil_precolo[0][0] = noone;
scr_quiz_questions(perguntas_brasil_precolo);*/
switch(global.round){
		case 1:
		case 2:
		case 3:
		  if !ds_exists(global.lst_ordem, ds_type_list){
			global.lst_ordem = ds_list_create();
			for(var temp = 0;temp < 12;temp++){
				ds_list_add(global.lst_ordem, temp);
		    }
		    ds_list_shuffle(global.lst_ordem);
		    }
			ordem = ds_list_find_value(global.lst_ordem, 0);
			ds_list_delete(global.lst_ordem, 0);
			
			for(var i = 0;i < 11;i++){
				string_lst = ds_list_find_value(global.lst_ordem, i);
				show_debug_message("lst_ordem:"+string(string_lst));
		    }
			show_debug_message("\n");
			show_debug_message(ordem);
	
		break;
		
		case 4:
	    case 5:
	    case 6:
	    case 7:
		if !ds_exists(global.lst_ordem, ds_type_list){
			global.lst_ordem = ds_list_create();
			for(var temp = 12;temp < 27;temp++){
				ds_list_add(global.lst_ordem, temp);
		    }
		    ds_list_shuffle(global.lst_ordem);
		    }
			ordem = ds_list_find_value(global.lst_ordem, 0);
			ds_list_delete(global.lst_ordem, 0);
			
			for(var i = 0;i < 14;i++){
				string_lst = ds_list_find_value(global.lst_ordem, i);
				show_debug_message("lst_ordem:"+string(string_lst));
		    }
			show_debug_message("\n");
			show_debug_message(ordem);

		break;
		
		case 8:
	    case 9:
	    case 10:
	    case 11:
		if !ds_exists(global.lst_ordem, ds_type_list){
			global.lst_ordem = ds_list_create();
			for(var temp = 27;temp < 36;temp++){
				ds_list_add(global.lst_ordem, temp);
		    }
		    ds_list_shuffle(global.lst_ordem);
		    }
			ordem = ds_list_find_value(global.lst_ordem, 0);
			ds_list_delete(global.lst_ordem, 0);
			
			for(var i = 0;i < 14;i++){
				string_lst = ds_list_find_value(global.lst_ordem, i);
				show_debug_message("lst_ordem:"+string(string_lst));
		    }
			show_debug_message("\n");
			show_debug_message(ordem);

		break;
	}

//Criando os botões para as opções, e guardando eles em variaveis
obj_alternativas[0] = instance_create_layer(448,385,"Instances",obj_quiz_opcao);
obj_alternativas[1] =instance_create_layer(448,461,"Instances",obj_quiz_opcao);
obj_alternativas[2] =instance_create_layer(448,536,"Instances",obj_quiz_opcao);
obj_alternativas[3] =instance_create_layer(448,612,"Instances",obj_quiz_opcao);

