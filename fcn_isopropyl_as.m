function [susceptibility] =...
    fcn_isopropyl_as(tiltAngle,twistAngle,bondAngle)
% This function calculates the suseptibilities of the Isopropyl symmetric
% stretch. t is the tiltt angle, p the twist angle and r the 
% hyperpolarizability ratio between the acc and ccc components. 
% Literature: Weidner et al., PNAS 2010, 107, 30

t = tiltAngle;
p = twistAngle;
a = bondAngle;

% Make Terms easier to handle
A = cos(a) - cos(a)^3;
P1 = 1 + cos(2*p);
T = cos(t) - cos(t).^3;


%% Calculate susceptibilities

Xxxz = A* (-2*cos(t) + 3*T.*P1) -...
    2*cos(a)^3*T;

Xxzx = 3*A*T.*...
    P1 + 2*cos(a)^3*cos(t).^3;

Xzzz = 2*( A* (2*cos(T) - 3*T.*P1) - 2*cos(a)^3*T);

%% Function output

susceptibility = {Xxxz, Xzzz, Xxzx};

end