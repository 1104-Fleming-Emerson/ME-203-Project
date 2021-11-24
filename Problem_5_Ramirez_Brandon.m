% Brandon Ramirez Lopez, Gabriel Ritch, Emerson Fleming
% ME 203
% Exam 2
% Problem 5
clc, clear all, format compact
%givens:
% set 1
xi = -2:0.01:8;
yi = 0.25:0.01:100;
n = min(size(xi,1), size(yi,1));
m = min(size(xi,2), size(yi,2));
x=xi(1:n,1:m);
y=yi(1:n,1:m);

% set 2
xi2 = 25:1:365;
yi2 = 25:0.2:100;
n1 = min(size(xi2,1), size(yi2,1));
m1 = min(size(xi2,2), size(yi2,2));
x1=xi2(1:n1,1:m1);
y1=yi2(1:n1,1:m1);

f1 = get_f_xy_Ritch_Gabriel(x,y);

f2 = get_f_xy_Ritch_Gabriel(x1,y1);

[rows1,columns1]=size(f1);
[rows2,columns2]=size(f2);
fprintf('The dimensions of f1 is %d row by %d columns\n',rows1,columns1)

fprintf('The dimensions of f2 is %d row by %d columns\n',rows2,columns2)