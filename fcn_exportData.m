function fcn_exportData(handles,zData)
% Sends zData to workspace

% Get entered name
dataName = get(handles.edit_zDataName,'String');
% Check if String is a variable name
if isvarname(dataName) == 1
    ;
else
    % Create random string
    symbols = ['a':'z'];
    stLength = 4;
    nums = randi(numel(symbols),[1 stLength]);
    dataName = symbols (nums);
    % Open help dialog
    helpdlg(['Entered z-data name was not a valid variable name. Z-Data exported as "', dataName, '".'], 'Info')
end

% send
assignin('base',dataName,zData);

%% Output
fprintf('Exported data points as %s.\n',dataName)

end