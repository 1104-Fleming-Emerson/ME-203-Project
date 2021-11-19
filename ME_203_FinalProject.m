%Ritch, Gabriel
% ME 203, Section# 1001
%9/22/21
%Lab 9 
%formated plots

clc; clear all; format compact;

%% Project 1
% task 1
empty = NaN;
Board = zeros(3,3);
Board(:,:) = empty;

Player = input('Pick Player 1 or Player 2 (1 or 2)\n');

while sum(isnan(Board(:))) > 0
    
    row = input('choose your row: \n');
    column = input('choose your column: \n');
    isnan(Board(row,column))

    if isnan(Board(row,column))
        Board(row,column) = Player
        
    else
        fprintf('That square has already been played.')
    end
end
