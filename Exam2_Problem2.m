% Emerson Fleming
% ME 203 Exam 2
% Problem 2
% 11-22-2021
clc,clear,format compact

% Part 1--use roots() to find zeros of A and B
% define coefficients to A (5x^5+8x^4+x^3+x+6)
A = [5 8 1 0 1 6];
% define coefficients to B (4x^3+8x^2+2)
B = [4 8 0 2];
% use roots() to find zeros of function A
Azeros=roots(A)
% use roots() to find zeros of function A
Bzeros=roots(B)

% Part 2--use polyval() to evaluate A and B at x=[1 2 3]
% define points x to evaluate A and B at
x=[1 2 3];
% use polyval() to evaluate A at x=[1 2 3]
Ax=polyval(A,x)
% use polyval() to evaluate B at x=[1 2 3]
Bx=polyval(B,x)

% Part 3--find C=A*B
C=Ax.*Bx

% Part 4--find D=A/B and remainder r
%since we are finding remainder, round down with floor() when finding quotient D
D=floor(Ax./Bx) 
%use rem()function to find remainder of quotient A/B
r=rem(Ax,Bx)