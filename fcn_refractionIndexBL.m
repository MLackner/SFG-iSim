function [ nMean ] = fcn_refractionIndexBL(handles)
% Calculates the refractive index of the boundary layer. Ref.: Zhuang, X., 
% Miranda, P., Kim, D. and Shen, Y. (1999). Mapping molecular orientation 
% and conformation at interfaces by surface nonlinear optics. Physical 
% Review B, [online] 59(19), pp.12632-12640. Available at: 
% http://dx.doi.org/10.1103/physrevb.59.12632.

%% Open prompt for entering the refractive index of the bulk boundary layer
helpdlg('Please enter the refractive indices of the bondary layer''s bulk material.','Calculation')
waitforbuttonpress;
prompt = {'Refractive index for SF beam:',...
    'Refractive index for Vis beam:',...
    'Refractive index for IR beam:'};
    title = 'Calculation';
    answer = inputdlg(prompt,title);
    % Executes when canceling
    if numel(answer) < 3
        return
    end

    % Get the entered data
    nBulkBLSF = str2double(answer{1});
    nBulkBLVis = str2double(answer{2});
    nBulkBLIR = str2double(answer{3});

%% Visible beam
% Get refractive index of the substrate
nSubstrate = str2double(get(handles.edit_n2_vis,'String'));
% Calculate for Bulk boundary layer and substrate
nOne = lorentzModel(nBulkBLVis);
nTwo = lorentzModel(nSubstrate);
% Calculate the Mean value of tose
nMean = (nOne + nTwo)/2;
% Set value
set(handles.edit_nBL_vis,'String',num2str(nMean))
% Print output
fprintf('____________________________________\n')
fprintf(['The refractive Index of the boundary layer for the Vis beam should\nlie ',...
    'between %g and %g. The mean value is %g.\n'],...
    nOne,nTwo,nMean);
fprintf('____________________________________\n')

%% Infrared beam

nSubstrate = str2double(get(handles.edit_n2_ir,'String'));
nOne = lorentzModel(nBulkBLIR);
nTwo = lorentzModel(nSubstrate);
nMean = (nOne + nTwo)/2;

fprintf('____________________________________\n')
fprintf(['The refractive Index of the boundary layer for the IR beam should\nlie ',...
    'between %g and %g. The mean value is %g.\n'],...
    nOne,nTwo,nMean);
fprintf('____________________________________\n')

% Set value
set(handles.edit_nBL_ir,'String',num2str(nMean))


%% SF beam

nSubstrate = str2double(get(handles.edit_n2_sf,'String'));
nOne = lorentzModel(nBulkBLSF);
nTwo = lorentzModel(nSubstrate);

nMean = (nOne + nTwo)/2;

fprintf('____________________________________\n')
fprintf(['The refractive Index of the boundary layer for the SF beam should\nlie ',...
    'between %g and %g. The mean value is %g.\n'],...
    nOne,nTwo,nMean);
fprintf('____________________________________\n')

% Set value
set(handles.edit_nBL_sf,'String',num2str(nMean))

end

function nBL = lorentzModel(n)

nBL = 1/sqrt((4*n^2 + 2)/(n^2*(n^2 + 5)));

end