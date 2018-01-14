 HANGMAN - Based on the retro wordgame which features the hangman animation. The game has three rounds namely sports, capital cities and countries.
The aim of the game is to allow a player to guess a word one letter at a time. It indicates the number of letters in the word as well as which letters the player has currently guessed correctly.
 
 Each player has 10 lives at the beginning of the game and after correctly guessing a word in a round, the game automatically proceeds to the next round.
 The game posts a generic tweet to (Hangman.MATLAB @ECO2017) at the end of each game with the contents of the message depending on the player winning or losing.
*PLEASE NOTE: However, twitter restricts the number of tweets sent out within a given period from external applications. As such, if the game is played multiple times within a short period, only the first two tweets are sent and lerror messages appears for the twit or twit1 functions after successive games have ended. This however does not affect the game itself and it should still run normally.
 
 
 INSTRUCTIONS ON HOW TO RUN THE GAME.
 
Download all files in the repository into a folder ideally titled "Hangman" and add the folder to the path on matlab either by using the addpath command or copying and pasting the folder into the main MATLAB folder ensure all functions correspond to the names they have been saved with. i.e The wordgame function saved as 'wordgame.m' etc
 
To initialise the game, on the command window type wordgame.

The game should now display a welcome message and should prompt you to type a letter.

Follow the instructions provided.

The number of lives you have is displayed and would reduce if the player guesses the incorrect letter.
•	After guessing a letter incorrectly, the hangman animation is displayed in a new window. The animation is displayed gradually with every life lost until the full image is shown which indicates the game is over and you have lost.
*PLEASE NOTE: The animation takes about a minute to initialise so please be patient. This depends on the processing capabilities of the computer the game is being played on.

The player is also notified if a letter is used more than once in a round and prompted to choose another.

After correctly guessing the word, the game proceeds to the next stage.

If you lose the game by running out of lives, the game notifies you and posts a tweet and terminates

If you guess all words correctly through all three rounds then a congratulatory message is shown indicating the number of lives you have left at the end of the game as well as a tweet being sent out.


