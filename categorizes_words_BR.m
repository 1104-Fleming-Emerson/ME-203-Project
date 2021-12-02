function [barx,count]=categorizes_words_BR(data_filtered)
c =sort(data_filtered);
[count,barx]=groupcounts(c);
end