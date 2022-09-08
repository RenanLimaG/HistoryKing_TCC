/// @description Insert description here
// You can write your code in this editor
gpu_set_blendenable(false);

if(event_pause)
{	
	instance_deactivate_all(true);
	
	pauseSurf = surface_create(resW,resH);
	surface_set_target(pauseSurf);
	draw_surface(application_surface,0,0);
	surface_reset_target();
	
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
	buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	
	instance_create_layer(640, 416, "Instances_1", obj_evento);
	
	get = http_get("https://us-east-1.aws.data.mongodb-api.com/app/historyking-dllqh/endpoint/get_eventos");
	
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
	
	
	if(keyboard_check_pressed(vk_space))
	{
		event_pause = false;
		instance_activate_all();
		
		instance_destroy(obj_evento);
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
	
}

gpu_set_blendenable(true);