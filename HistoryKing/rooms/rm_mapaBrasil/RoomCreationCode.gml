enum state
{
	init,
	startTurn,
	process,
	checkFinish,
	endTurn,
	endGame
}

enum turnState
{
	turn_player1,
	turn_player2,
	turn_player3,
	turn_player4
}

global.quizLoop = 0;
global.lst_ordem = 0;
