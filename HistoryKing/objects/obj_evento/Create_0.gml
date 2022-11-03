/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.7846568;
image_yscale = 0.8393977;

global.loading = true;
get = http_get("https://us-east-1.aws.data.mongodb-api.com/app/historyking-dllqh/endpoint/get_eventos");

switch(global.round){
		case 1:
		case 2:
		case 3:
		  if !ds_exists(global.lst_ordem_evento, ds_type_list){
			global.lst_ordem_evento = ds_list_create();
			for(var temp = 0;temp < 10;temp++){
				ds_list_add(global.lst_ordem_evento, temp);
		    }
		    ds_list_shuffle(global.lst_ordem_evento);
		    }
			ordem = ds_list_find_value(global.lst_ordem_evento, 0);
			ds_list_delete(global.lst_ordem_evento, 0);
			
			for(var i = 0;i < 10;i++){
				string_lst = ds_list_find_value(global.lst_ordem_evento, i);
				show_debug_message("lst_ordem_evento:"+string(string_lst));
		    }
	
		break;
		
		case 4:
	    case 5:
	    case 6:
	    case 7:
		if !ds_exists(global.lst_ordem_evento, ds_type_list){
			global.lst_ordem_evento = ds_list_create();
			for(var temp = 10;temp < 20;temp++){
				ds_list_add(global.lst_ordem_evento, temp);
		    }
		    ds_list_shuffle(global.lst_ordem_evento);
		    }
			ordem = ds_list_find_value(global.lst_ordem_evento, 0);
			ds_list_delete(global.lst_ordem_evento, 0);
			
			for(var i = 0;i < 10;i++){
				string_lst = ds_list_find_value(global.lst_ordem_evento, i);
				show_debug_message("lst_ordem_evento:"+string(string_lst));
		    }

		break;
}