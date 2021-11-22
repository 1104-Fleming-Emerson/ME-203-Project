% Brandon Ramirez Lopez
% ME 203
% Exam 2
%% Question 1a
syms x1 x2 x3 x4 x5
eqn1=-5*x1+6*x2+7*x3+8*x5==6;
eqn2=4*x1+5*x2+6*x3+2*x4==1;
eqn3=-5*x1-3*x2+3*x3+5*x4+2*x5==8;
eqn4=x1-5*x2+4*x3+11*x4+9*x5==56;
eqn5=8*x1+8*x2+3*x3+7*x4+x5==13;
[A,B]=equationsToMatrix([eqn1,eqn2,eqn3,eqn4,eqn5]);,[x1,x2,x3,x4,x5];
V=linsolve(A,B)
%% Question 1b
syms x1 x2 x3 x4 x5
eqns=[-5*x1+6*x2+7*x3+8*x5==6,4*x1+5*x2+6*x3+2*x4==1,-5*x1-3*x2+3*x3+5*x4+2*x5==8,x1-5*x2+4*x3+11*x4+9*x5==56,8*x1+8*x2+3*x3+7*x4+x5==13];
S=solve(eqns,[x1 x2 x3 x4 x5])
%% Question 1c 
A3=[-5,6,7,0,8;4,5,6,2,0;-5,-3,3,5,2;1,-5,4,11,9;8,8,3,7,1];
B3=[6;1;8;56;13];
% x3 should equal z3
x3=rank(A3)
z3=rank([A3,B3])
% Answer to variables
solution3=A3\B3
%% Question 4 
x=[1:10];
y=[1:10];
f=ExamF(200,759);
g=ExamF(x,y);
