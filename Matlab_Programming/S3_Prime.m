clc;
clear;
close all;

while (true)
    N = input('What number? ');
    
    IsPrime = true;

    for i = 2:ceil(sqrt(N))
        
        if mod(N,i) == 0
            IsPrime = false;
            break;
        end
    end

    if IsPrime
        disp([num2str(N) ' is Prime'])
    else 
        disp([num2str(N) ' is not Prime'])
    end

    Answer = input('Wanna continue [Yes/No]? ','s');

    if strcmpi(Answer, 'No') || strcmpi(Answer, 'N')
        break;
    end

end