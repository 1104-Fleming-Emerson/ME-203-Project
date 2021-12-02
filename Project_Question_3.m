% Brandon Ramirez Lopez
% Question Three
clc,clear all,format compact
S="Thor";
d=get_words_BR(S);
data=d;
Output=remove_delim_BR(data);
data_filtered=clean_words_BR(Output);
[barx,count]=categorizes_words_BR(data_filtered)
