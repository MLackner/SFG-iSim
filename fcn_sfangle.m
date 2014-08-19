function sfAngle =...
    fcn_sfangle(wlVis,wlIR,n1SF,n1Vis,n1IR,angVis,angIR)
% Calculates the reflection angle of the SF beam. Reference: J. Löbau, K.
% Wolfrum, J. Opt. Soc. Am. B/Vol. 14, No.10/ October 1997

%% Calculate the wavelenth of the SF beam
wlSF = 1/(1/wlVis + 1/wlIR);

%% DEBUG
% fprintf('SF wavelength: %g nm \n',wlSF*10^9)

%% Transform wavelenths to frequencies
% Speed of light in m/s
c = 299792458;
% Speed of light in media
cSF = c/n1SF;
cVis = c/n1Vis;
cIR = c/n1IR;
% Transform
vSF = cSF/wlSF;
vVis = cVis/wlVis;
vIR = cIR/wlIR;

%% Make terms easier to handle
A = vIR/vSF * n1IR/n1SF * sin(angIR);
B = vVis/vSF * n1Vis/n1SF * sin(angVis);

%% Calculation and output
sfAngle = asin(A + B);

end