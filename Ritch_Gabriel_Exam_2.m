%Ritch, Gabriel
% ME 203, Section# 1001
%10/13/21
%Exam 1

clc; clear all; format compact;

%% Problem 3 -Gabriel Ritch

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

%% Problem 5 -Gabriel Ritch

%givens:
% set 1
xi = -2:0.01:8;
yi = 0.025:0.001:1000;

% set 2
xi2 = 25:1:365;
yi2 = 25:0.2:100;

f1 = get_f_xy_Ritch_Gabriel(xi,yi);

f2 = get_f_xy_Ritch_Gabriel(xi2,yi2);

[rows1,columns1]=size(f1);
[rows2,columns2]=size(f2);
fprintf('The dimentions of f1 and f2 are %d rows by %d colums',rows1,colums1)