function fcn_settingsPrompt()
% Opens settings prompt

% Open a prompt in which the settings can be changed
prompt = {'Number of data points: (default: 361)'};
    title = 'Settings';
    answer = inputdlg(prompt,title);
    % Executes when canceling
    if numel(answer) == 0
        return
    end
    % Get the entered data
    newnDataPnts = str2double(answer{1});
    
    % Save the settings in root
    % Check every time if a value was entered
    if isnan(newnDataPnts) == 0
        setappdata(0, 'nDataPnts', newnDataPnts);
    else
        return
    end
    % Give a warning if high number is entered
    if newnDataPnts >= 3000
        helpdlg('High number of data points can cause 3D plotting to run slow or even crash the program.','Warning');
    end

end