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
	
	evento = instance_create_layer(640, 416, "Instances_1", obj_evento);
	
	if(keyboard_check_pressed(vk_space))
	{
		instance_destroy(evento);
		event_pause = false;
		
		instance_activate_all();
		if(surface_exists(pauseSurf)) surface_free(pauseSurf);
		if(buffer_exists(pauseSurfBuffer)) buffer_delete(pauseSurfBuffer);
	}
	
}

gpu_set_blendenable(true);