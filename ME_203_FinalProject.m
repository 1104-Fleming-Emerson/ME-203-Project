%Ritch, Gabriel
% ME 203, Section# 1001
%9/22/21
%Lab 9 
%formated plots

clc; clear all; format compact;

%% Project 1
% task 1
OPlayer = 'O';
XPlayer = 'X';
empty = NaN;
Board = zeros(3,3);
Board(:,:) = empty;

Player1 = input('Xs or Os?\n', 's');
if Player1 == 'X'
    Player1 = XPlayer
    Player2 = OPlayer
elseif Player1 == 'O'
        Player1 = OPlayer
        Player2 = XPlayer
end
    

while sum(isnan(Board(:))) > 0
    cac = inputdlg('Pick your position:(_,_) \n');
    num = str2num( cac{:} )
    
    Board(num) = Player1
    
end
