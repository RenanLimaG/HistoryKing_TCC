/// @description Efeito de "bordas de destaque"

//Efeito só acontece quando o mouse passar por cima do objeto
if (instance_position(mouse_x,mouse_y,self))
{
	
	draw_sprite_ext(sprite_index, image_index, x-1, y, image_xscale,image_yscale,0,c_olive,1);
	draw_sprite_ext(sprite_index, image_index, x+1, y, image_xscale,image_yscale,0,c_olive,1);
	draw_sprite_ext(sprite_index, image_index, x, y-1, image_xscale,image_yscale,0,c_olive,1);
	draw_sprite_ext(sprite_index, image_index, x, y+1, image_xscale,image_yscale,0,c_olive,1);
}
draw_self();
