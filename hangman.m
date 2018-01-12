function[lives] = hangman(word, lives)
l = length(word);
current = '**************************************';
current = current(1:l);
guessed = string([]);

while lives > 0
    x = input('Guess a letter.','s');
    
    if isletter(x)
        if length(x) == 1
            
            check = 0;
            
            for i = 1:length(guessed)
                if  guessed(i) == x
                    check = 1;
                end
            
            end
            
            if check == 1
                disp('You have already guessed that letter, please guess a different letter.')
            
            else 
                guessed = [guessed, x];
                
                if contains(word,string(x))
                    for i = 1:l
                        if word(i) == string(x)
                            current(i) = string(x);
                        end
                    end

                else
                    lives = lives - 1        
                end

                if word == current
                    break
                end
            end
        else
            disp('Please enter a single letter.')
        end
    else
        disp('Please enter a letter.')
    end
    
    disp(['Current = ', current])
    
    if lives < 10
    imshow([num2str(lives), 'lives.png'])
    end
end

if lives == 0
    disp(['You lost. The word was ', word, '.'])
else
    disp(['You correctly guessed the word with ', num2str(lives), ' lives remaining! The word was ', word, '.'])
end

end