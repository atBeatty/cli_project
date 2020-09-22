#DESCRIPTION
This is a CLI project that uses an API to collect basketball player stats and information. It takes a user through a simulated basketball game.


#FUTURE DEVELOPMENTS

##AI
After getting the onboarding and matchup functionality working optimally, I plan on incorporating more variety in the games. Thoughts include:

    * FOULS
    * INJURIES
    * STRATEGIES (BIG/SMALL)

##COACHING SELECTION PRE GAME
The current program is teseting a lot of functionality with getting players and teams acquired and organized for every matchup. In the future I would like to set up programing to allow the user to hand pick some players or one player to build a team around.

#BUGS

##Duplicate Players
Duplicate players being selected at random during team creation.

##IDs
The data hash from the API that is responsible to retrieve stats for each player returns a lot of players that have an empty array. This causes the program to freeze up when iterating through team rosters. Right now, if a player has an empty data array the program assigns the player 2 points a quarter/period.
