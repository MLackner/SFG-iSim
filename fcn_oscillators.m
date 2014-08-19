function A = fcn_oscillators(X,L,ang)
% This function calculates the oscillator strenghts A of a certain mode through 
% the susceptibilities X by applying the fresnel factors L
%   X = [Xssp,Xppp,Xsps] susceptibilities
%   L = [LxxSF,LyySF,LzzSF;...Vis;...IR]: fresnel factors
%   ang = [angSF,angVis,angIR]: incident/reflective angles of SF,IR
%   and Vis


%% Sort the fresnel factors
LxxSF = L(1);
LyySF = L(2);
LzzSF = L(3);
LxxVis = L(4);
LyyVis = L(5);
LzzVis = L(6);
LxxIR = L(7);
LyyIR = L(8);
LzzIR = L(9);

%% Sort the angles
angSF = ang(1);
angVis = ang(2);
angIR = ang(3);

%% Sort the susceptibilities
Xssp = X{1};
Xppp = X{2};
Xsps = X{3};


%% Calculation for SSP polarisation
% Make Terms easier to handle
Lssp = LyySF*LyyVis*LzzIR*sin(angIR);
Assp = Xssp*Lssp;

%% Calculation for SPS polarisation
% Make Terms easier to handle
Lsps = LyySF*LzzVis*LyyIR*sin(angVis);
Asps = Xsps*Lsps;

%% Calculation for PPP polarisation
%Make the terms easier to handle
L1 = LxxSF*LxxVis*LzzIR*cos(angSF)*cos(angVis)*sin(angIR);
L2 = LxxSF*LzzVis*LxxIR*cos(angSF)*sin(angVis)*cos(angIR);
L3 = LzzSF*LxxVis*LxxIR*sin(angSF)*cos(angVis)*cos(angIR);
L4 = LzzSF*LzzVis*LzzIR*sin(angSF)*sin(angVis)*sin(angIR);

Appp = -L1*Xssp - L2*Xsps + L3*Xsps + L4*Xppp;

%% output
A = {Assp,Appp,Asps};

end