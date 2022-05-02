// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text_btn(textBtn){
text = scribble(textBtn);
text.starting_format("font_padrao_menu", c_black);
text.align(fa_center,fa_middle);
image_alpha = 0.8;
return text;

}