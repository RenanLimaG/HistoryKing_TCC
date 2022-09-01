/// @description Insert description here
// You can write your code in this editor
	
	draw_sprite_ext(sprite_index, image_index, x-1, y, image_xscale+0.05,image_yscale+0.05,0,c_black,1);
	draw_sprite_ext(sprite_index, image_index, x+1, y, image_xscale+0.05,image_yscale+0.05,0,c_black,1);
	draw_sprite_ext(sprite_index, image_index, x, y-1, image_xscale+0.05,image_yscale+0.05,0,c_black,1);
	draw_sprite_ext(sprite_index, image_index, x, y+1, image_xscale+0.05,image_yscale+0.05,0,c_black,1);

draw_self();

