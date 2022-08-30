/// @description Insert description here
// You can write your code in this editor
	
	draw_sprite_ext(sprite_index, image_index, x-1.5, y, image_xscale,image_yscale,0,c_black,1);
	draw_sprite_ext(sprite_index, image_index, x+1.5, y, image_xscale,image_yscale,0,c_black,1);
	draw_sprite_ext(sprite_index, image_index, x, y-1.5, image_xscale,image_yscale,0,c_black,1);
	draw_sprite_ext(sprite_index, image_index, x, y+1.5, image_xscale,image_yscale,0,c_black,1);

draw_self();

