/// @description Insert description here
// You can write your code in this editor
if(event_pause)
{	

	instance_deactivate_object(obj_control_tabuleiro);
	instance_deactivate_object(obj_player1);
	instance_deactivate_object(obj_player2);
	instance_deactivate_object(obj_player3);
	instance_deactivate_object(obj_player4);
	instance_deactivate_object(obj_round);
	instance_deactivate_object(obj_seta);
	
	
	pauseSurf = surface_create(resW,resH);
	surface_set_target(pauseSurf);
	draw_surface(application_surface,0,0);
	surface_reset_target();
	
	if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	pauseSurfBuffer = buffer_create(resW * resH * 4, buffer_fixed, 1);
	buffer_get_surface(pauseSurfBuffer, pauseSurf, 0);
	
	if(!instance_exists(obj_evento)){
		instance_create_layer(640, 416, "Instances", obj_evento);	
	}
	
	//draw_sprite_ext(imagem, -1, 383, 128, 1, 1, 0, -1, 1 );
	
	if(!global.loading){
		if(keyboard_check_pressed(vk_space))
		{
			instance_activate_all();
		
			with(obj_evento){
				ds_list_destroy(global.lst_ordem);
		        global.lst_ordem = 0;
			}
			instance_destroy(obj_evento);
		
			if(surface_exists(pauseSurf)) surface_free(pauseSurf);
			if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
		
			event_pause = false;
		}
	}
	
}

