/// @description Insert description here
// You can write your code in this editor
textRound = scr_text_btn("Turno: "+string(global.round));

switch(global.round){
	case 1:
	case 2:
	case 3:
	textPeriodo = scr_text_btn("Periodo: Pré-Colonização");
	break;
	case 4:
	case 5:
	case 6:
	case 7:
	textPeriodo = scr_text_btn("Periodo: Colonização");
	break;
	case 8:
	case 9:
	case 10:
	case 11:
	case 12:
	textPeriodo = scr_text_btn("Periodo: Imperial");
	break;
	case 13:
	case 14:
	case 15:
	case 16:
	case 17:
	case 18:
	textPeriodo = scr_text_btn("Periodo: Velha-República");
	break;
	case 19:
	case 20:
	case 21:
	case 22:
	case 23:
	case 24:
	case 25:
	textPeriodo = scr_text_btn("Periodo: Nova-República");
	break;
}

