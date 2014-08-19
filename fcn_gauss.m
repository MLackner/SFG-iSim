function thetaAvg = fcn_gauss(theta,thetaMean,variance,power)


% Create a function handle for the integral function below
fh = @(theta) fcn_gaussIntegral(theta,thetaMean,variance,power);

% Gauss function
thetaAvg = 1/(variance*sqrt(2*pi)) .* integral(fh,0,pi);
end

function integral = fcn_gaussIntegral(theta,thetaMean,variance,power)
integral = cos(theta).^(power) .* ...
    exp((-(theta - thetaMean).^2)./(2*variance.^2)).* ...
    sin(theta);
end
