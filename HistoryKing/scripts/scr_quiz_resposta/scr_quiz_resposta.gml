// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_quiz_resposta(obj_resp, obj_alter, text1, text2){

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

case turnState.turn_player2 :
with(obj_resp)
{
	if mouse_check_button_pressed(mb_left)
	{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			global.scoreP2 += 15;
			//show_debug_message(global.scoreP1);
			text1.overwrite(string(global.scoreP1));
            text2.overwrite(string(global.scoreP2));
            global.quizLoop++;
            room_restart();
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			global.scoreP2 -= 5;
			//show_debug_message(global.scoreP1); 
			text1.overwrite(string(global.scoreP1));
            text2.overwrite(string(global.scoreP2));
            global.quizLoop++;
            room_restart();
			}
		}
		
	}

}
}
}