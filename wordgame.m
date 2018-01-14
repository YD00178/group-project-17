function [] = wordgame()
%List of words to be used in the game 
list1 = ["golf", "football", "hockey", "basketball", "swimming", "cycling", "badminton", "judo", "karate", "squash", "boxing", "athletics", "darts", "snooker", "pool", "tennis", "curling", "bowling", "skiing", "snowboarding", "esports", "fencing", "kayaking", "triathalon", "canoeing", "chess", "shooting"];
 
list2 = ["Kabul", "London", "Paris", "Madrid", "Dhaka", "Brussels", "Sofia", "Prague", "Berlin", "Reykjavik", "Tokyo", "Amsterdam", "Oslo", "Moscow", "Bucharest", "Dakar", "Ljubljana", "Juba", "Lome", "Cardiff", "Hanoi", "Lisbon", "Warsaw", "Belfast", "Pyongyang", "Wellington", "Dublin", "Athens", "Zagreb"];
 
list3 = ["Cuba", "Egypt", "England", "Scotland", "Fiji", "Finland", "France", "Germany", "Italy", "America", "Ecuador", "Chile", "Chad", "Canada", "Greece", "Iran", "Iraq", "Jamaica", "Jordan", "Kenya", "Kuwait", "Laos", "Latvia", "Mali", "Nepal", "Netherlands", "Norway", "Sweden", "Peru", "Paraguay", "Poland", "Qatar", "Russia", "Portugal", "Romania", "Serbia", "Spain", "Syria", "Switzerland", "Swaziland", "Thailand", "Turkey", "Uganda", "Togo", "Zimbabwe", "Wales", "Uzbekistan"];

%%Displays the introductory message
disp('Welcome player!')
disp('Try to guess the word and advance to the next level!')
disp('LEVEL 1 - Sports!')

%%Initiates the first stage of the game
%randomly selects a word from the first list
n = randi(length(list1));
%Converting string to lowercase characters for the first list of words 
word = lower(convertStringsToChars(list1(n)));
lives = hangman(word, 10)

%%Determines the of number lives the player has left and initiates the second stage of the game if it is greater than 0
if lives > 0
%Displays introductory message for second stage of the game.
    disp('LEVEL 2 - Capital Cities!')
 %%Randomly selects a word from the second list
    n = randi(length(list2));
 %%Converting string to lowercase characters for the second list of words 
    word = lower(convertStringsToChars(list2(n)));
    lives = hangman(word, lives);
end

%%Determines the number of lives the player has left and initiates the third stage of the game if it is greater than 0
if lives > 0
    disp('LEVEL 3 - Countries!')
%Randomly selects a word from the third list
    n = randi(length(list3));
%Converting string to lowercase characters for the third list of words
    word = lower(convertStringsToChars(list3(n)));
    lives = hangman(word, lives);
end

%%Displays winning message if lives are greater than 0 at the end of the third stage
if lives > 0
    disp(['Congratulations, you won the game with ', num2str(lives), ' lives remaining!'])
%Sends out a preloaded tweet based on the player winning using the twit function 
    twit
else
%Displays losing message if lives become 0 at any stage of the game
    disp('Bad Luck! You lost!')
%Sends out a preloaded tweet based on the player losing the game using a modified twit function titled twit1.m
    twit1
end

end

