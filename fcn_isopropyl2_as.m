function [susceptibility] =...
    fcn_isopropyl2_as(tiltAngle,twistAngle,bondAngle)
% This function calculates the suseptibilities of the Isopropyl symmetric
% stretch. t is the tiltt angle, p the twist angle and r the 
% hyperpolarizability ratio between the acc and ccc components. 
% Literature: Miyamae et al. Macromolecules, Vol. 40, No. 13, 2007

t = tiltAngle;
p = twistAngle;
a = bondAngle;

% Make Terms easier to handle
A = cos(a) - cos(a)^3;
P3 = 3 + cos(2*p);
P1 = 1 + cos(2*p);
P1n = 1 - cos(2*p);
T = cos(t) - cos(t).^3;


%% Calculate susceptibilities for a1 vibration (symmetric in plane)

Xxxz_a1 = -A.*(cos(t) - (1/2).* ...
    T.*P3);

Xxzx_a1 = (1/2)*A.* ...
    T.*P3;

Xzzz_a1 = A.* ...
    (cos(t) - 3*cos(t).^3 + T.*cos(2*p));

%% Calculate susceptibilities for b1 vibration (asymmetric in-plane)

Xxxz_b1 = (1/2)*(cos(a) - 2*cos(a).^3)* ...
    (cos(t) - T.*P1);

Xxzx_b1 = -(1/2)*(cos(a) - 2*cos(a).^3).* ...
    (cos(t) - T.*P1);

Xzzz_b1 = -(cos(a) - 2*cos(a).^3).*T.* ...
    P1;

%% Calculate susceptibilities for b2 vibration (asymmetric out-of-plane)

Xxxz_b2 = -(1/2)*cos(a).*T.*P1n;

Xxzx_b2 = (1/2)*cos(a).*(cos(t) - T.*P1n);

Xzzz_b2 = cos(a).*T.*P1n;

%% Sum up the two vibrational modes(?)

Xxxz = Xxxz_a1 + Xxxz_b1 + Xxxz_b2 ;
Xzzz = Xzzz_a1 + Xzzz_b1 + Xzzz_b2 ;
Xxzx = Xxzx_a1 + Xxzx_b1 + Xzzz_b2 ;


%% Function output

susceptibility = {Xxxz, Xzzz, Xxzx};

end