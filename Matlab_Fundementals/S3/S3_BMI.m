clc;
clear;
close all;

while (true)
    disp('Calculate BMI');
    w = input('enter weight (KG): ');
    h = input('enter height (m): ');
    
    if h>3
        disp('Height inputted as meter, converting... ')
        h = h/100;
    end
    wmin = 20*h^2;
    wmax = 26*h^2;
    b = w / (h^2);
    
    disp(['BMI is ',num2str(b)]);
    
    if b>26
        disp('Stop eating you ...!');
        disp(['Should be less than: ', num2str(wmax)]);
    elseif b<20
        disp('You need some milk!');
        disp(['Should be more than: ', num2str(wmin)])
    else
        disp('Well well');
    end

    disp(' ');

    Answer = input('Wanna continue [Yes/No]? ','s');

    if strcmpi(Answer, 'No') || strcmpi(Answer, 'N')
        break;
    end
end