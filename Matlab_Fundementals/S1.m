clear
clc

A = [1 2; 3 4];
A
disp(' "repmat" repeats a matrix')
repmat(A,2,4)

disp(' range is defined with start:distance:end ')
r = 3:6:72

disp('A(:) can be used to convert matrix to vector')
A(:)

disp('reshape changes the shape of a vector to a matrix of (vector,rows,columns)')
B = 1:20;
B
reshape(B,4,5)

disp('diag can both create a diagonal matrix or extract the diagonal vector from a matrix')
diag(A)
diag(B)

disp('randi creates random integer numbers ([range],rows,columns)')
randi([1 50],4,3)

disp('floor & round & ceil')
C = 1.5;
C
floor(C)
round(C)
ceil(C)

disp('trace gives the sum of the diagonal vector')
sum(diag(A))
trace(A)

disp('det gives the product of the diagonal vector / Determinant')
det(A)
prod(eig(A))

disp('eye give Identify Matrix ')
eye(4)

disp('isnan/isinf checks whether something is NaN/Infinite')
X = nan
Y = inf
NaN == X
isnan(X)
inf == Y
isinf(Y)
