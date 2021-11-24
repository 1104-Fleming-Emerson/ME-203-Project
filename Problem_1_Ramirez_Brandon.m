% Brandon Ramirez Lopez, Gabriel Ritch, Emerson Fleming
% ME 203
% Exam 2
% Question 1 solution 1
clc,clear all,format compact
syms x1 x2 x3 x4 x5
% Write out each equations
eqn1=-5*x1+6*x2+7*x3+8*x5==6;
eqn2=4*x1+5*x2+6*x3+2*x4==1;
eqn3=-5*x1-3*x2+3*x3+5*x4+2*x5==8;
eqn4=x1-5*x2+4*x3+11*x4+9*x5==56;
eqn5=8*x1+8*x2+3*x3+7*x4+x5==13;
[A,B]=equationsToMatrix([eqn1,eqn2,eqn3,eqn4,eqn5]);,[x1,x2,x3,x4,x5];
Solution1=linsolve(A,B)
% Question 1 solution 2
A2=[-5,6,7,0,8;4,5,6,2,0;-5,-3,3,5,2;1,-5,4,11,9;8,8,3,7,1];
B2=[6;1;8;56;13];
% x3 should equal z3 if so there is a soultion
x2=rank(A2);
z2=rank([A2,B2]);
% Answer to variables
solution2=A2\B2