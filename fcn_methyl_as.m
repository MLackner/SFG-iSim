function [susceptibility] = fcn_methyl_as(tiltAngle,options)
% This function calculates the suseptibilities of the CH3 antisymmetric
% stretch. t is the twist angle. Literature: Wang et al., J. Phys. Chem. B
% 2001, 105, 12118 - 12125

t = tiltAngle;

if options.deltaFcn == 0
    % Get entered tilt distribution
    variance = options.tiltDist;
    % Calculate number of required iterations (Length of tilt angle array)
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
        
        Xxxz(i) = - (1/2)*(fcn_gauss(t,tMean,variance,1) - ...
            fcn_gauss(t,tMean,variance,3));
        
        Xxzx(i) = (1/2)*fcn_gauss(t,tMean,variance,3);
        
        Xzzz(i) = fcn_gauss(t,tMean,variance,1) - ...
            fcn_gauss(t,tMean,variance,3);
        
        % Increase index number
        i = i + 1;
    end
    
elseif options.deltaFcn == 1

    %% Calculate susceptibilities
    
    Xxxz = - (1/2)*(cos(t) - cos(t).^3);
    
    Xxzx = (1/2)*cos(t).^3;
    
    Xzzz = cos(t) - cos(t).^3;
    
end

%% Function output

susceptibility = {Xxxz, Xzzz, Xxzx};

end