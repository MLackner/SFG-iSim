function [susceptibility] =...
    fcn_isopropyl_ss(tiltAngle,twistAngle,hypRatio,bondAngle)
% This function calculates the suseptibilities of the Isopropyl symmetric
% stretch. t is the tiltt angle, p the twist angle and r the 
% hyperpolarizability ratio between the acc and ccc components. 
% Literature: Weidner et al., PNAS 2010, 107, 30

t = tiltAngle;
p = twistAngle;
r = hypRatio;
a = bondAngle;

% Make Terms easier to handle
R = 1 - 1./r;
A = cos(a) - cos(a)^3;
P5 = 5 + cos(2*p);
P1 = 1 + cos(2*p);
T = cos(t) - cos(t).^3;


%% Calculate susceptibilities

Xxxz = 1/2*R.*( (A*P5 - 2*cos(a)) .*...
    T - 2*A*cos(t) ) + cos(a)*cos(t);

Xxzx = 1/2*R.*(A*...
    P5.*T + 2*cos(a)*cos(t).*(cos(a)^2 + cos(t).^2 - 2));

Xzzz = R.*( A* (2*cos(t).^3 - 3*P1.*...
    T ) - 2*cos(a)*cos(t).^3 ) + cos(a)*cos(t);

%% Function output

susceptibility = {Xxxz, Xzzz, Xxzx};

end