clear
clc

disp('class tells the type of a variable')
A = 1<2;
B = [1 2];
class(A)
class(B)

disp('find gives the logical state of given condition')
C = [12 5 24 33];
find(C>20)

disp('example of finding even and larger than 15 elements ')
C(mod(C,2)==0 & C>15)

disp('why old tvs screen looked like a scattered black and white')
A = uint8(randi([0 255],2000,2000));
imshow(A)

realmax
realmin

disp('strcmp compares two strings')
P = '1255f'
T = '2244'
strcmp(P,T)