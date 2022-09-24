/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.7846568;
image_yscale = 0.8393977;

global.lst_ordem = 0;
global.loading = true;
get = http_get("https://us-east-1.aws.data.mongodb-api.com/app/historyking-dllqh/endpoint/get_eventos");

if !ds_exists(global.lst_ordem, ds_type_list){
			global.lst_ordem = ds_list_create();
			for(var temp = 0;temp < 3;temp++){
				ds_list_add(global.lst_ordem, temp);
		    }
		    ds_list_shuffle(global.lst_ordem);
		    }
			
ordem = ds_list_find_value(global.lst_ordem, 0);

