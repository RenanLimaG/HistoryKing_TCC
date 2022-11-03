/// @description Insert description here
// You can write your code in this editor
btn_brasil = instance_create_layer(350,400,"Instances",btn_padrao);	

mapa_selecionado = false;
global.num_jogs = 0;
global.lst_ordem = 0;
global.lst_ordem_evento = 0;

btn_2jogs = instance_create_layer(660,280,"Instances",btn_padrao);	
btn_3jogs = instance_create_layer(660,380,"Instances",btn_padrao);	
btn_4jogs = instance_create_layer(660,480,"Instances",btn_padrao);	

with(btn_2jogs){
	visible = false;
}
with(btn_3jogs){
	visible = false;
}
with(btn_4jogs){
	visible = false;
}

