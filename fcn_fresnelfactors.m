function [Lxx,Lyy,Lzz] = fcn_fresnelfactors(b,n1,n2,nx)

%   b: incident angle
%   n1,2: refractive indices medium 1 and 2
%   nx: refractive index of interfacial layer

%% Calculate the refractive angle g
g = fcn_refracangle(b,n1,n2);

%% Make Terms easier to handle
A = 2*n1*cos(g);
B = 2*n1*cos(b);
C = 2*n2*cos(b);

M = n1*cos(g) + n2*cos(b);
N = n1*cos(b) + n2*cos(g);
O = n1*cos(g) + n2*cos(b);

S = (n1/nx)^2;

%% Calculation
Lxx = A./M;
Lyy = B./N;
Lzz = (C./O)*S;

%% Output Dialog
%fprintf('Fresnel Factors:\nLxx = %g\nLyy = %g\nLzz = %g\n',Lxx,Lyy,Lzz)

end