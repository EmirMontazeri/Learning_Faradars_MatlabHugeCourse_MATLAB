clc;
clear;
close all;

S.make = 'BMW';
S.model = 'E39 M5';
S.year = 2001;

save('MyData1','-struct','S');
save('MyData2','S');

S.color = 'LeMans Blue';

save('MyData1','-struct','S','-append');
save('MyData2','S');

clear;
