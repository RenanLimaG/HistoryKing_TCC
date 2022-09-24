enum state
{
	init,
	startTurn,
	mini_game,
	endTurn,
	endGame
}

enum turnState
{
	turn_player1,
	turn_player2,
	turn_player3,
	turn_player4,
	turn_loop
}

global.quizLoop = 0;
global.round = 1;
global.loading = false;
global.error = "";
