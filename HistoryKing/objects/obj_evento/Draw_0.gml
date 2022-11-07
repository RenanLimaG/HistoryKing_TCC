/// @description Insert description here
// You can write your code in this editor
if(global.loading){
	instance_create_layer(640, 360, "Instances", obj_loading);
}
else{
	instance_destroy(obj_loading);
	draw_self();
    draw_sprite_ext(imagem, -1, 383, 128, 1, 1, 0, -1, 1 );
    text_evento.draw(640, 550);
	text_titulo.draw(640, 445);
}




