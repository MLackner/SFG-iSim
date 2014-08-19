function angle = fcn_refracangle(incidentAngle,n1,n2)
% This function calculates the refractive angle via Snellnius

%% Calculation and output

angle = asin((n1/n2)*sin(incidentAngle));

% DEBUG
% fprintf('Refraction Angle: %g\n', fcn_rtd(angle));

end