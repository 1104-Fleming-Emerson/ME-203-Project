% Brandon Ramirez Lopez
% Question Three
clc,clear all,format compact
S="Thor"
d=get_words_BR(S);
d{1};
data=d{1};
for i=1:length(data)
    data(i)=erase(data,".") %Removes "." from every string
    data(i)=erase(data,",") %Removes "," from every string
    data(i)=erase(data,"?") %Removes "?" from every string
    data(i)=erase(data,"!") %Removes "!" from every string
    data(i)=lower(data)%lowercases every string
end

