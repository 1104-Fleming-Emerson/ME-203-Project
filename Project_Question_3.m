% Brandon Ramirez Lopez
% Question Three
clc,clear all,format compact
Hero="Thor";
d=get_words_BR(Hero);
data=d;
Output=remove_delim_BR(data);
[data_filtered,L]=clean_words_BR(Output);
[barx,count]=categorizes_words_BR(data_filtered);
[TOP,subcount]=Top_N (count,barx,L)

