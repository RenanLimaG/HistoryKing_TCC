// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_quiz_resposta(obj_resp){
with(obj_resp)
{
	if mouse_check_button_pressed(mb_left)
	{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			show_debug_message("Resposta correta!");
		}
	}
	
}
}