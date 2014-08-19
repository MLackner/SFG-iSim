function [susceptibility] = fcn_carbonyl_ss(tiltAngle,hypRatio,...
    options)
% This function calculates the suseptibilities of the C=O vibration
% t is the twist angle and r the hyperpolarizability ratio between
% the acc and ccc components. Literature: Tyrode et al. J. Phys. Chem. B,
% Vol. 109, No. 1, 2005.

t = tiltAngle;
r = hypRatio;

if options.deltaFcn == 0
    % Get entered tilt distribution
    variance = options.tiltDist;
    % How many data points has the tilt angle array?
    numIter = numel(t);
    % Make empty arrays for susceptibilities
    Xxxz = zeros(1,numIter);
    Xxzx = zeros(1,numIter);
    Xzzz = zeros(1,numIter);
    % Set index number
    i = 1;
    while i <= numIter
        % Set the mean angle
        tMean = t(i);
        
        Xxxz(i) = (1/2)*( fcn_gauss(t,tMean,variance,1).*(r + 1) + ...
            fcn_gauss(t,tMean,variance,3).*(r - 1) );
        
        Xxzx(i) = (1/2)*(fcn_gauss(t,tMean,variance,1) - ...
            fcn_gauss(t,tMean,variance,3)).*(1 - r);
        
        Xzzz(i) = r.*fcn_gauss(t,tMean,variance,1) + ...
            fcn_gauss(t,tMean,variance,3).*(1 - r);
        
        % Increase index number
        i = i + 1;
    end
    
elseif options.deltaFcn == 1
    
    %% Calculate susceptibilities for delta function
    
    Xxxz = (1/2)*( cos(t).*(r + 1) + cos(t).^3.*(r - 1) );
    
    Xxzx = (1/2)*(cos(t) - cos(t).^3).*(1 - r);
    
    Xzzz = r.*cos(t) + cos(t).^3.*(1 - r);
    
end

%% Function output

susceptibility = {Xxxz, Xzzz, Xxzx};

end