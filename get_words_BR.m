function data=get_words_BR(S)
% data=GETWORDS(hero)
% This function gets the words from a .txt file and stores them as an array
if S=="Thor"
    FID=fopen("Thor.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID); %close the file
elseif S=="Hulk"
    FID=fopen("Bruce_Banner.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
elseif S=="Eyepatch"
    FID=fopen("Nick_Fury.txt");
    data= textscan(FID,'%s')%scan through the file for each word;
    fclose(FID);
elseif S=="Blackwidow"
    FID=fopen("Natasha_Romanoff.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
elseif S=="Ironman"
    FID=fopen("Tony_Stark.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
else S=="CaptinAmerica"
    FID=fopen("Steve_Rogers.txt");
    data= textscan(FID,'%s');%scan through the file for each word;
    fclose(FID);
end
end