%Ritch, Gabriel
% ME 203, Section# 1001
%9/22/21
%Lab 9 
%formated plots

clc; clear all; format compact;
%% task 1
suppress = false;

OPlayer = 0;
XPlayer = 1;
empty = NaN;
Board = zeros(3,3);
Board(:,:) = empty;
Turn_end = 0;
Test = 1;
Test2 = 1;
no_winner = true;
Player1 = input('1s or 0s?\n', 's');

if Player1 == '1'
    Player1 = XPlayer
    Player2 = OPlayer
elseif Player1 == '0'
        Player1 = OPlayer
        Player2 = XPlayer
end

Player = Player1;
fprintf('Player 1: \n')


while sum(isnan(Board(:))) > 0 && no_winner
    row = input('choose your row: \n');
    column = input('choose your column: \n');
    
    if isnan(Board(row,column))
        Board(row,column) = char(Player);
        Board
        Turn_end = true;
    else
        fprintf('Please choose an empty space. \n')
        Turn_end = false;
    end
    
    % check
    no_winner = Total_check(Board, Player, Player1, Player2, suppress);
    
    % Switch players
    if no_winner
        if Player == Player1 && Turn_end == true 
            Turn_end = false;
            Player = Player2;
            fprintf('Player 2: \n')

        elseif Player == Player2 && Turn_end == true
            Turn_end = false;
            Player = Player1;
            fprintf('Player 1: \n')
        end
    end
    
    
end

%% Task 2
iterations = 5000;
P1_wins = 0;
P2_wins = 0 ;
ties = 0;
winner = NaN;
wins = NaN;
suppress = true;


OPlayer = 0;
XPlayer = 1;
empty = NaN;
Board = zeros(3,3);
Board(:,:) = empty;
Turn_end = 0;
Test = 1;
Test2 = 1;
no_winner = true;
Player1 = '1';



if Player1 == '1'
    Player1 = XPlayer;
    Player2 = OPlayer;
elseif Player1 == '0'
    Player1 = OPlayer;
    Player2 = XPlayer;
end

Player = Player1;

for i = 1:iterations
    no_winner = true;
    Board(:,:) = empty;
    
    while sum(isnan(Board(:))) > 0 && no_winner
        row = randi(size(Board,2),1);
        column = randi(size(Board,1),1);

        if isnan(Board(row,column))
            Board(row,column) = char(Player);
            Turn_end = true;
        else
            Turn_end = false;
        end

        % check
        [no_winner,winner] = Total_check(Board, Player, Player1, Player2, suppress);

        % Switch players
        if no_winner
            if Player == Player1 && Turn_end == true 
                Turn_end = false;
                Player = Player2;

            elseif Player == Player2 && Turn_end == true
                Turn_end = false;
                Player = Player1;
            end
        end


    end
    wins = Tally(winner,wins);

end
A = categorical(wins,[1 2 NaN],{'Player 1 wins','Player 2 wins','Tie'});
histogram(A)
%% diaginal check function
function [no_winner] = Back_diaginal_Check(Board,Player)

Test = 0;
for i = 1:size(Board,1)
    for j = 1:size(Board,2)
            if i==j
                if Board(i,j) == Player  && Test < 3
                    Test = Test+1;
                elseif Test == 3
                    break
                else
                    Test = 0;
                end
            end
    end
end
if Test == 3
    no_winner = false;
 else
    no_winner = true;
end
end

%% diaginal check function
function [no_winner] = Forward_diaginal_Check(Board,Player)

Test = 0;
for i = 1:size(Board,1)
    for j = size(Board,1):-1:1
        if i+j == 4 
            if Board(i,j) == Player  && Test < 3
                Test = Test+1;
            elseif Test == 3
                break
            else
                Test = 0;
            end
        end
    end
end
 if Test == 3
     no_winner = false;
 else
     no_winner = true;
end
end

%% Vertical Check
function [no_winner] = Vertical_check(Board,Player)

Test = 0;
for i = 1:size(Board,1)
    if all(Board(:, i)==Player)
        Test = 1;
        break
    end
end
 if Test == 1
     no_winner = false;
 else
     no_winner = true;
end
end
%% Horizontal Check
function [no_winner] = Horizontal_check(Board,Player)

Test = 0;
for i = 1:size(Board,2)
    if all(Board(i,:)==Player)
        Test = 1;
        break
    end
end
 if Test == 1
     no_winner = false;
 else
     no_winner = true;
end
end
%% Total Check
function [no_winner,winner] = Total_check(Board,Player, Player1, Player2, suppress)
winner = NaN;
no_winner1 = Back_diaginal_Check(Board,Player);
no_winner2 = Forward_diaginal_Check(Board,Player);
no_winnner3 = Vertical_check(Board,Player);
no_winner4 = Horizontal_check(Board,Player);

if ~no_winner1 || ~no_winner2 || ~no_winnner3 || ~no_winner4
    no_winner = false;
    
    if Player == Player1
        if ~suppress
            fprintf('Player 1, %ds won!!! \n', Player)
        end
        winner = 'Player 1';
    elseif Player == Player2
        if ~suppress
            fprintf('Player 2, %ds won!!! \n', Player)
        end
        winner = 'Player 2';
    end
    
else
    no_winner = true;
end

if no_winner && sum(isnan(Board(:))) == 0
    if ~suppress
        fprintf('The game has ended in a tie \n')
    end
    winner = 'cat';
end

end

%% Tally 
function [wins] = Tally(winner,wins)

switch winner
    case 'Player 1'
        wins = [wins 1];
        
    case 'Player 2'
        wins = [wins 2];
        
    case 'cat'
        wins = [wins NaN];
    otherwise
        fprintf('err');

end

end