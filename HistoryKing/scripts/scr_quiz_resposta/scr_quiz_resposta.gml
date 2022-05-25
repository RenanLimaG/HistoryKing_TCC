// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_quiz_resposta(obj_resp, obj_alter){

switch(global.turn){

case turnState.turn_player1 :
with(obj_resp)
{
	if mouse_check_button_pressed(mb_left)
	{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			global.scoreP1 += 15;
			//show_debug_message(global.scoreP1);
			global.turn = turnState.turn_player2;
			mouse_clear(mb_any);
			
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			global.scoreP1 -= 5;
			//show_debug_message(global.scoreP1);		
			global.turn = turnState.turn_player2;
			mouse_clear(mb_any);
			}
		}
		
	}
}
break;

case turnState.turn_player2 :
with(obj_resp)
{
	switch(global.num_jogs){
		case 3:
		case 4:
		if mouse_check_button_pressed(mb_left)
		{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			global.scoreP2 += 15;
			global.turn = turnState.turn_player3;
			mouse_clear(mb_any);
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			global.scoreP2 -= 5;
			global.turn = turnState.turn_player3;
			mouse_clear(mb_any);
			}
			}
		}
		break;
		
		default:
		if mouse_check_button_pressed(mb_left)
		{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			global.scoreP2 += 15;
			instance_destroy(obj_score);
			instance_create_layer(32,32,"Instances", obj_score);
            global.quizLoop++;
            room_restart();
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			global.scoreP2 -= 5;
			instance_destroy(obj_score);
			instance_create_layer(32,32,"Instances", obj_score);
            global.quizLoop++;
            room_restart();
			}
			}
		}
		break;
	}
}
break;
	
case turnState.turn_player3 :
with(obj_resp)
{
	switch(global.num_jogs){
		case 4:
		if mouse_check_button_pressed(mb_left)
		{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			global.scoreP3 += 15;
			global.turn = turnState.turn_player4;
			mouse_clear(mb_any);
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			global.scoreP3 -= 5;
			global.turn = turnState.turn_player4;
			mouse_clear(mb_any);
			}
			}
		}
		break;
		
		default:
		if mouse_check_button_pressed(mb_left)
		{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			global.scoreP3 += 15;
			instance_destroy(obj_score);
			instance_create_layer(32,32,"Instances", obj_score);
            global.quizLoop++;
            room_restart();
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			global.scoreP3 -= 5;
			instance_destroy(obj_score);
			instance_create_layer(32,32,"Instances", obj_score);
            global.quizLoop++;
            room_restart();
			}
			}
		}
		break;
	}
}
break;

case turnState.turn_player4 :
with(obj_resp)
{
	if mouse_check_button_pressed(mb_left)
	{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			global.scoreP4 += 15;
			instance_destroy(obj_score);
			instance_create_layer(32,32,"Instances", obj_score);
            global.quizLoop++;
            room_restart();
			
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			global.scoreP4 -= 5;
			instance_destroy(obj_score);
			instance_create_layer(32,32,"Instances", obj_score);
            global.quizLoop++;
            room_restart();
			}
		}	
	}
}
break;
}
}