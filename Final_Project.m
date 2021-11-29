%Ritch, Gabriel
% ME 203, Section# 1001
%9/22/21
%Lab 9 
%formated plots

clc; clear all; format compact;

%% Project 1
% task 1
OPlayer = 0;
XPlayer = 1;
empty = NaN;
Board = zeros(3,3);
Board(:,:) = empty;
Turn_end = 0;
Test = 1;

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


while sum(isnan(Board(:))) > 0
    row = input('choose your row: \n');
    column = input('choose your column: \n');
    
    if isnan(Board(row,column))
        Board(row,column) = char(Player);
        Board
        Turn_end = 1;
    else
        fprintf('Please choose an empty space. \n')
        Turn_end = 0;
    end
    
        %diaginal check
    while Test ~= 0 % if Test = 0; the test fails. 
        
        for i = 1:size(Board,1)
            for j = 1:size(Board,2)
                    if i==j
                        fprintf('i = j \n')
                        if Board(i,j) == Player
                            Test = Test+1
                        else
                            Test = 0;
                        end
                    end
            end
        end
    end
    Test = 1;
    
    
    if Player == Player1 && Turn_end == 1
        Player = Player2;
        fprintf('Player 2: \n')
        
    elseif Player == Player2 && Turn_end == 1
        Player = Player1;
        fprintf('Player 1: \n')
    end
if Test == 4
        fprintf('You won!')
        break;
end
end
    

    