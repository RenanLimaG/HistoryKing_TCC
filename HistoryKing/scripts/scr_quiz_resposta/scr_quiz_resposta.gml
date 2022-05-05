// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_quiz_resposta(obj_resp, obj_alter, textX){
	
var scoreX = global.scoreP1;
with(obj_resp)
{
	if mouse_check_button_pressed(mb_left)
	{
		if collision_point(mouse_x, mouse_y, obj_resp, true, false){
			scoreX += 15;
			//show_debug_message(global.scoreP1);
			textX.overwrite(string(scoreX));
			
			global.scoreP1 = scoreX; 
			global.quizLoop++;
			room_restart();
		}
		for(var i = 0;i < 4;i++){
			if collision_point(mouse_x, mouse_y, obj_alter[i], true, false){
			scoreX -= 5;
			//show_debug_message(global.scoreP1);
			textX.overwrite(string(scoreX));
			
			global.scoreP1 = scoreX; 
			global.quizLoop++;
			room_restart();
			}
		}
		
	}
}
}