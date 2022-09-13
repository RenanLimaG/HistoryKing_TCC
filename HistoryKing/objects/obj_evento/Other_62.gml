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
	
		var map = ds_list_find_value(list,1);
		
		atual_evento = ds_map_find_value(map, "Enunciado");
		show_debug_message(atual_evento);
		titulo = ds_map_find_value(map, "Titulo");
        pontos = ds_map_find_value(map, "Pontos");
		imagem_url = ds_map_find_value(map, "Imagem");
		show_debug_message("");
		show_debug_message(imagem_url);
		imagem = sprite_add(imagem_url, 0, false, false, 0, 0);
		
		
		//Procedimento padrão para criar textos com Scribble
        //Ver em: https://www.jujuadams.com/Scribble/#/latest/
        text_evento = scribble(atual_evento);
        text_evento.starting_format("font_padrao_quiz", c_black);
        text_evento.align(fa_center,fa_middle);
        text_evento.wrap(440);
		
		
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


