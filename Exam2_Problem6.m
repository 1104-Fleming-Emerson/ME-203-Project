% Emerson Fleming
% ME 203 Exam 2
% Problem 6
% 11-22-2021
clc,clear,format compact

% Part 1--user input commands for A,b,Wn
A=input('Enter value for A: ')
b=input('Enter value for b: ')
Wn=input('Enter value for Wn: ')
t=[0:.001:10]
% Amplitude equation
Amp=A.*exp(b.*t).*cos(Wn.*t)
%% Parts 2 and 3--switch case to find and graph amplitude
switch b
    case {b<0}
        t=0;
        while t>=0
            Amp=A*exp(b*t)*cos(Wn*t);
            Amp>=-40;
            Amp<=40;
        end
        figure(1)
        plot(t,Amp)
        title('Amplitude for b<0')
        xlabel('t')
        ylabel('Amplitude')
    case {b==0}
        t=linspace(0,tf,1000);
        figure(2)
        plot(t,Amp)
        title('Amplitude for b=0')
        xlabel('t')
        ylabel('Amplitude')
    case {b>0}
        t=linspace(0,tf,1000);
        figure(3)
        plot(t,Amp)
        title('Amplitude for b>0')
        xlabel('t')
        ylabel('Amplitude')
end
