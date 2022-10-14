/// @description Insert description here
// You can write your code in this editor
if (ds_map_find_value(async_load, "id") == get)
{
    if (ds_map_find_value(async_load, "status") == 0)
    {
        var result = ds_map_find_value(async_load, "result");
		show_debug_message(result);
		var resultMap = json_decode(result);
		var list = ds_map_find_value(resultMap,"default");
	
		var map = ds_list_find_value(list,ordem);
		
		atual_pergunta = ds_map_find_value(map, "Enunciado");
		show_debug_message(atual_pergunta);
        resposta = ds_map_find_value(map, "Resposta");
	/*	show_debug_message(resposta_index);
        resposta = ds_map_find_value(map, string(resposta_index));*/
		show_debug_message(resposta);
		
		//Procedimento padrão para criar textos com Scribble
        //Ver em: https://www.jujuadams.com/Scribble/#/latest/
        text_pergunta = scribble(atual_pergunta);
        text_pergunta.starting_format("font_padrao_quiz", c_black);
        text_pergunta.align(fa_center,fa_middle);
        text_pergunta.wrap(440);

		alternativas = array_create(4);
		alternativas[0] = ds_map_find_value(map, "Opcao_A");
		alternativas[1] = ds_map_find_value(map, "Opcao_B");
		alternativas[2] = ds_map_find_value(map, "Opcao_C");
		alternativas[3] = ds_map_find_value(map, "Opcao_D");
		
		for(var j = 0;j < 4;j++){
			atual_alternativa = alternativas[j];
	        text_alternativas[j] = scribble(atual_alternativa);
	        text_alternativas[j].starting_format("font_padrao", c_black);
	        text_alternativas[j].align(fa_center,fa_middle);
		}	
		
		ds_map_destroy(map);
		ds_list_destroy(list);
		ds_map_destroy(resultMap);
		
		global.error = "";
    }
	else
	{
		global.error = "Database not found";
	}
	
	global.loading = false;
}
