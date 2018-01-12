function [] = wordgame()

list1 = ["fizz", "ball", "joke", "java", "fuji", "bowl", "head", "fuse", "jeep", "maze", "flux", "john", "jury", "jobs", "aqua", "womb", "pick", "just", "find", "mate", "jolt", "tuck", "flak", "folk", "club", "next", "chew"];
 
list2 = ["Kabul", "London", "Paris", "Madrid", "Dhaka", "Brussels, Sofia", "Prague", "Berlin", "Reykjavik", "Tokyo", "Amsterdam", "Oslo", "Moscow", "Bucharest", "Dakar", "Ljubljana", "Juba", "Lome", "Cardiff", "Hanoi", "Lisbon", "Warsaw", "Belfast", "Pyongyang", "Wellington", "Dublin", "Athens", "Zagreb"];
 
list3 = ["Cuba", "Egypt", "England", "Scotland", "Fiji", "Finland", "France", "Germany", "Italy", "America", "Ecuador", "Chile", "Chad", "Canada", "Greece", "Iran", "Iraq", "Jamaica", "Jordan", "Kenya", "Kuwait", "Laos", "Latvia", "Mali", "Nepal", "Netherlands", "Norway", "Sweden", "Peru", "Paraguay", "Poland", "Qatar", "Russia", "Portugal", "Romania", "Serbia", "Spain", "Syria", "Switzerland", "Swaziland", "Thailand", "Turkey", "Uganda", "Togo", "Zimbabwe", "Wales", "Uzbekistan"];


disp('Welcome player!')
disp('Try to guess the word and advance to the next level!')
disp('LEVEL 1 - 4 Letter words!')

n = randi(length(list1));
word = lower(convertStringsToChars(list1(n)));
lives = hangman(word, 10)

if lives > 0
    disp('LEVEL 2 - Capital Cities!')
    n = randi(length(list2));
    word = lower(convertStringsToChars(list2(n)));
    lives = hangman(word, lives)
end

if lives > 0
    disp('LEVEL 3 - Countries!')
    n = randi(length(list3));
    word = lower(convertStringsToChars(list3(n)));
    lives = hangman(word, lives);
end

if lives > 0
    disp(['Congratulations, you won the game with ', num2str(lives), ' lives remaining!'])
else
    disp('Bad Luck! You lost!')
end

end

