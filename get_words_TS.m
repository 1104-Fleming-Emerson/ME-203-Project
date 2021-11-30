function data=get_words_TS(IronMan)
% data=GETWORDS(hero)
% This function gets the words from a .txt file and stores them as an array
FID =fopen('Tony_Stark.txt');% Open the file
data= textscan(FID,'%s');%scan through the file for each word;
fclose(FID); %close the file
end