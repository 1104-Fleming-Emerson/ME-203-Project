function data=get_words_BB(Hulk)
% data=GETWORDS(hero)
% This function gets the words from a .txt file and stores them as an array
FID =fopen('Bruce_Banner.txt');% Open the file
data= textscan(FID,'%s');%scan through the file for each word;
fclose(FID); %close the file
end