%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Math 3800
%Seth Goldish, Ely Biggs, Taylor Saintable
%
%Flood Model     Main program    Version 0.02
%
%
%
%
%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   START OF MAIN PROGRAM
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%dimensions of our grid
m = 300;%rows
n = 300;%columns
Q = 50;%Total number of layers
V = ((4*Q-1)+(n-2)*(5*Q-1)+(3*Q-1))*(m-1)+(2*Q-1)*(n-1)+(Q-1);%Total number of variables

% number of iterations
iter = 50;

% test functions encode and undoing
% i = 100;
% j = 150;
% k = 25;
% l = 3;
i = 300;
j = 300;
k = 49;
l = 3;
g=encode(i,j,k,l,m,n,Q);

[i,j,k,l] = decode(g, m, n, Q);
V
g