function zData = fcn_plotPreparation(handles)

% Get data from root
    hMainGui = getappdata(0, 'hMainGui');
    nDataPnts = getappdata(0, 'nDataPnts');
    range_Ang = getappdata(0, 'range_Ang');
    range_Ang_lower = range_Ang(1);
    range_Ang_upper = range_Ang(2);
    range_Ang = linspace(...
        range_Ang_lower,...
        range_Ang_upper,...
        nDataPnts);
    range_HypRatio = getappdata(0, 'range_HypRatio');
    range_HypRatio_lower = range_HypRatio(1);
    range_HypRatio_upper = range_HypRatio(2);
    range_HypRatio = linspace(...
        range_HypRatio_lower,...
        range_HypRatio_upper,...
        nDataPnts);
    
    %% Get chosen Data to simulate
    % x Data
    if get(handles.radio_xData_tiltAng,'Value') == 1
        xData = fcn_dtr(range_Ang);
        xLabel = 'Tilt Angle';
        xData_id = 1;
    elseif get(handles.radio_xData_twistAng,'Value') == 1
        xData = fcn_dtr(range_Ang);
        xLabel = 'Twist Angle';
        xData_id = 2;
    elseif get(handles.radio_xData_hypRatio,'Value') == 1
        xData = range_HypRatio;
        xLabel = 'Hyperpolarizability Ratio';
        xData_id = 3;
    end
    
    % y Data
    if get(handles.radio_yData_tiltAng,'Value') == 1
        yData = fcn_dtr(range_Ang);
        yLabel = 'Tilt Angle';
        yData_id = 1;
    elseif get(handles.radio_yData_twistAng,'Value') == 1
        yData = fcn_dtr(range_Ang);
        yLabel = 'Twist Angle';
        yData_id = 2;
    elseif get(handles.radio_yData_hypRatio,'Value') == 1
        yData = range_HypRatio;
        yLabel = 'Hyperpolarizability Ratio';
        yData_id = 3;
    elseif get(handles.radio_yData_none,'Value') == 1
        yData = [];
        yData_id = 0;
        yLabel = '';
    end
    
    % In case the hyperpolarizability ratio is neither selected as x nor as
    % y data AND is not entered in setup panel, create an error dialog
    if isnan(str2double(get(handles.edit_hypRatio,'String'))) == 1 && ...
            get(handles.radio_xData_hypRatio,'Value') == 0 && ...
            get(handles.radio_yData_hypRatio,'Value') == 0
        errordlg('Hyperpolarizability Ratio must be either selected as x or y data or entered as fixed value in setup panel.');
        return
    end
    
    % Currently the tilt angle has to be selected wether as x or y data. 
    % If it isn't abort the function
    if xData_id ~= 1 && yData_id ~= 1
        % Create error dialog
        errordlg('The tilt angle has to be selected wether as x or y data')
        return
    end
    
    % z Data
    if get(handles.radio_zData_intensity,'Value') == 1
        % If Intensity is selected
        options.zData = 1;
    elseif get(handles.radio_zData_suscept,'Value') == 1
        % If Susceptibility is selected
        options.zData = 2;
    end
    
    % Combine data_ids in array
    data_id = [xData_id,yData_id];
    
    %% Define array with axis labels
    labelArray = {xLabel yLabel};
    
    
    %% Get moieties and modes that shall be plotted
    % Get moiety
    options.moietyVal = get(handles.popup_moiety2,'Value');
    % ss or as?
    stretchVal = get(handles.radio_symStretch,'Value');
    if stretchVal == 1
        options.mode = 1;    % for symmetric stretch
    else
        options.mode = 2;    % for asymmetric stretch
    end
    
    %% Check wether twist angle is fixed or not
    if get(handles.check_twist_fixed,'Value') == 1
        % if fixed take value
        options.twistAngle =...
            fcn_dtr(str2double...
            (get(handles.edit_twist_fixed,'String')));
    else
        options.twistAngle = [];
    end
    
    %% Check if Hyperpol. ratio is variable. If not take Value in 'Setup' 
    %   Panel
    
    if get(handles.radio_xData_hypRatio,'Value') == 0 &&...
            get(handles.radio_yData_hypRatio,'Value') == 0
        hypRatio = str2double(get(handles.edit_hypRatio,'String'));
        % Write in 'params' array
        params(15) = hypRatio;
    else
        % ?? investigate if correct
        params(15) = 0;
    end

     
    %% Check if 'Apply ratios' is selected
    if get(handles.check_applRatios,'Value') == 1
        % Get the ratios (1) and store in array
        Ratios = [...
            get(handles.popup_ratio1a,'Value'),...
            get(handles.popup_ratio1b,'Value')
            ];
        options.ratiosSelect = 1;
        options.ratios = Ratios;
    else
        options.ratiosSelect = 0;
    end
    
    %% Check if 'Apply Fresnel Factors' is selected
    if get(handles.check_applFresnel,'Value') == 1
        % Store in 'options' structure
        options.fresnel = 1;
    else
        options.fresnel = 0;
    end
    
    %% Check if 'Tilt Angle Distribution' is selected
    if get(handles.check_tiltDist,'Value') == 1
        options.deltaFcn = 0;
        % If it is get it's value
        options.tiltDist = str2double(get(handles.edit_tiltDist,'String'));
        options.tiltDist = fcn_dtr(options.tiltDist);
        % If the entered value is 0 give warning and evaluate delta
        % function
        if options.tiltDist == 0
            options.deltaFcn = 1;
            % Dialog
            warndlg('Cannot evaluate with a distribution of 0°. Evaluating delta-function instead.','Information')
        end
    else
        options.deltaFcn = 1;
        % If not selected
        options.tiltDist = [];
    end
    
    %% Check if "Plot in current figure" is selected
    holdFig = get(handles.check_plotInCurrent,'Value');
    if holdFig == 0
        % Make new figure
        FigName = figure;
        setappdata(hMainGui, 'FigName', FigName);
        % switch hold to 'off' (may not be needed)
        hold off
    else
        hMainGui = getappdata(0, 'hMainGui');
        FigName = getappdata(hMainGui, 'FigName');
        % Bring figure to front
        figure(FigName);
        % Switch hold to 'on' (may not be needed)
        hold on
    end
    
    %% Get Axes Settings
    % X Axis
    xstr = get(handles.edit_xRange,'String');
    xnum = str2num(xstr);
    if numel(xnum) == 2
        options.xRange = xnum;
    else
        options.xRange = 'auto';
    end
    % Y Axis
    ystr = get(handles.edit_yRange,'String');
    ynum = str2num(ystr);
    if numel(ynum) == 2
        options.yRange = ynum;
    else
        options.yRange = 'auto';
    end
    % Z Axis
    zstr = get(handles.edit_zRange,'String');
    znum = str2num(zstr);
    if numel(znum) == 2
        options.zRange = znum;
    else
        options.zRange = 'auto';
    end
    
    %% Get Plot Color Settings
    options.color = get(handles.popup_color,'Value');
    switch(options.color);
        case 1
            options.color = 'black';
        case 2
            options.color = 'blue';
        case 3
            options.color = 'cyan';
        case 4
            options.color = 'green';
        case 5
            options.color = 'magenta';
        case 6
            options.color = 'red';
        case 7
            options.color = 'white';
        case 8
            options.color = 'yellow';
    end
    
    %% Get Plot Style Settings
    options.style = get(handles.popup_style,'Value');
    switch(options.style);
        case 1
            options.style = '-';
        case 2
            options.style = '--';
        case 3
            options.style = ':';
        case 4
            options.style = '-.';
        case 5
            options.style = 'none';
    end

        
    %% Pass to plotting function
    zData = fcn_plotFcn...
        (handles,xData,yData,...
        labelArray,holdFig,data_id,options);

end