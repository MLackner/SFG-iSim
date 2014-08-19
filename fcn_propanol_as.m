function [susceptibility] =...
    fcn_propanol_as(tiltAngle,twistAngle,bondAngle)
% This function calculates the suseptibilities of the CH3 asymmetric
% stretches of 2-Propanol. t is the twist angle and r the hyperpolarizability
% ratio between the acc and ccc components. Literature: Katoka, Cremer, J.
% Am. Chem. Soc. 2006, 128, 5516-5522.

t = tiltAngle;
p = twistAngle;
a = bondAngle;

% Make Terms easier to handle
A = cos(a) - cos(a)^3;
P1 = 1 + cos(2*p);
T = cos(t) - cos(t).^3;

%% Calculate susceptibilities

Xxxz = A*(-2*cos(t) + 3*T.*P1) - 2*cos(a)^3*T;

Xxzx = 3*A*T.*P1 + 2*cos(a)^3*cos(t).^3;

Xzzz = 2*(A*(2*cos(t) + 3*T.*P1) - 2*cos(a)^3*T);

%% Function output

susceptibility = {Xxxz, Xzzz, Xxzx};

end