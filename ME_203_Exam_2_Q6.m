%% Question 6
% inputs:
A=input('Enter value for A: ') 
b=input('Enter value for b: ')
Wn=input('Enter value for Wn: ')
%interation starting at t = 1
t=1;

%given equation:
Amp=A.*exp(b.*t).*cos(Wn.*t);

% Parts 2 and 3--switch case to find and graph amplitude

% Because logical oporators cannot be used in case functions, We converted
% the numarial input to a string.

if b<0 
    bcase='less than zero'
elseif b==0
    bcase='zero'
elseif b>0
    bcase='greater than zero'
end

% switch-case based on the previous if statement
switch bcase
    case {'greater than zero'}
        while abs(Amp) <= 40 % Create a while loop that stops when the amplitude is just larger inabsolute magnitude of ± 40
            Amp=A.*exp(b.*t).*cos(Wn.*t);
            t = t+0.0001;
        end
        % print the final time and final amplitude
        Amp
        tfinal = t
        
        % Plot the function with 1000 points from t=0 to the stop time.
        tplot = linspace(0,tfinal,1000);
        Amp_Val = A.*exp(b.*tplot).*cos(Wn.*tplot);
        figure(1)
        
        plot(tplot,Amp_Val)
        % Label all axes and title.
        title('Amplitude versus time, b<0')
        xlabel('time')
        ylabel('Amplitude')
        

    case {'zero'}
        ti=0;
        tf=25*2*pi*(1/Wn); % we converted the frequency to a final time after 25 cycles
        t=linspace(ti,tf,1000);
        Amp=A.*cos(Wn.*t);
        
        % Plot the function with 1000 points from t=0 to the stop time
        figure(2)
        plot(t,Amp)
        
        % Label all axes and title
        title('Amplitude versus time, b=0')
        xlabel('time')
        ylabel('Amplitude')
        
        
        
    case {'less than zero'}
        i = 0;
        Amp_Array = [0 0 0];
        Local_Max = [1 1 1];
        Len_Local_Max = length(Local_Max)
        while  Local_Max(Len_Local_Max) < 0.1
            i = i+1
            Amp_Array(i)=A.*exp(b.*t).*cos(Wn.*t);
            t = t+0.0001;
            Local_Max = findpeaks(Amp_Array)
            Len_Local_Max = length(Local_Max)
            
%         figure(3) https://imgflip.com/i/5vfcxu
%         plot(t,Amp)
%         title('Amplitude versus time, b>0')
%         xlabel('time')
%         ylabel('Amplitude')
        end
        

        
        tfinal = t
        image(imread('https://i.imgur.com/E6WGUhc.jpeg'))
end