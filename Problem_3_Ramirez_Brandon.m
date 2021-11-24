% Brandon Ramirez Lopez, Gabriel Ritch, Emerson Fleming
% ME 203
% Exam 2
% Question 3
clc, clear all, format compact
wants_to_play = 1;

while wants_to_play == 1
    % generate a random integer form 1 to 15.
    number = randi(15,1);

    % The player should be able to make unlimited guesses of the number

    guess = 0;
    
    while number ~= guess
        guess = input('\nGuess a number between 1 and 15: \n');
        % indicate if the player has won or give the player hints if the guess is wrong.
        distance = abs(guess-number);
        switch(distance)
            case 0
                fprintf('You won \n \n') % “You won” ask if the player wants to restart the game
                wants_to_play = input('Would you like to play again? (Yes/No): \n', 's');
                switch(wants_to_play)
                    case 'Yes'
                        wants_to_play = 1;
                    case 'No'
                        wants_to_play = 0;
                end
                
            case 1 %“Very close” if the guess is within 1 of the correct number
                fprintf('Very close \n')

            case {2,3} % “Getting closer” if the guess is within 2 or 3 of the correct number
                fprintf('Getting closer \n')

            otherwise % “Not close” if the guess is not within 3 of the correct number
                fprintf('Not close\n')

        end
    end
    
end

fprintf('Thank you for playing the game. △□○\n \n')
