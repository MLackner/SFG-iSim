function [susceptibility] =...
    fcn_isopropyl2_ss(tiltAngle,twistAngle,hypRatio,bondAngle)
% This function calculates the suseptibilities of the Isopropyl symmetric
% stretch. t is the tiltt angle, p the twist angle and r the 
% hyperpolarizability ratio between the acc and ccc components. 
% Literature: Miyamae et al. Macromolecules, Vol. 40, No. 13, 2007

t = tiltAngle;
p = twistAngle;
r = hypRatio;
a = bondAngle;

% Make Terms easier to handle
R = 1 - 1./r;
A = cos(a) - cos(a)^3;
P3 = 3 + cos(2*p);
P1 = 1 + cos(2*p);
T = cos(t) - cos(t).^3;


%% Calculate susceptibilities for a1 vibration (symmetric in plane)

Xxxz_a1 = (1/2)*R.*((A.* ...
    P3 - 2*cos(a)).*T - ...
    2*A.*cos(t)) + 2*cos(a)*cos(t);

Xxzx_a1 = (1/2)*R.*(A* ...
    P3 - 2*cos(a)).*T;

Xzzz_a1 = (1/2).*R.*(A.*P1.* ...
    T + 2*cos(a).^3 .* cos(t).^3);

%% Calculate susceptibilities for b1 vibration (asymmetric out-of-plane)

Xxxz_b1 = R.*A.*T.*P1;

Xxzx_b1 = -R.*A.* ...
    (cos(t) - T.*P1);

Xzzz_b1 = -2.*R.*A.*T.*P1;

%% Sum up the two vibrational modes(?)

Xxxz = Xxxz_a1 + Xxxz_b1 ;
Xzzz = Xzzz_a1 + Xzzz_b1 ;
Xxzx = Xxzx_a1 + Xxzx_b1 ;


%% Function output

susceptibility = {Xxxz, Xzzz, Xxzx};

end