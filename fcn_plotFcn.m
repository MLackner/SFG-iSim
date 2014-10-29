function [zData] = fcn_plotFcn...
    (handles,xData,yData,...
    labelArray,data_id,options)

%% Get Setup parameters
angVis = fcn_dtr(str2double(get(handles.edit_angVis,'String')));
wlVis = str2double(get(handles.edit_wlVis,'String'))*10^-9;
angIR = fcn_dtr(str2double(get(handles.edit_angIR,'String')));
wlIR = str2double(get(handles.edit_wlIR,'String'))*10^-9;
n1_sf = str2double(get(handles.edit_n1_sf,'String'));
n2_sf = str2double(get(handles.edit_n2_sf,'String'));
nBL_sf = str2double(get(handles.edit_nBL_sf,'String'));
n1_vis = str2double(get(handles.edit_n1_vis,'String'));
n2_vis = str2double(get(handles.edit_n2_vis,'String'));
nBL_vis = str2double(get(handles.edit_nBL_vis,'String'));
n1_ir = str2double(get(handles.edit_n1_ir,'String'));
n2_ir = str2double(get(handles.edit_n2_ir,'String'));
nBL_ir = str2double(get(handles.edit_nBL_ir,'String'));
hypRatio = str2double(get(handles.edit_hypRatio,'String'));
bondAngle = fcn_dtr(str2double(get(handles.edit_bondAngle,'String'))/2);

%% 3D Plot preparations (if yData isn't empty)
if isempty(yData) == 0
    % greate meshgrid
    [xData,yData] = meshgrid(xData,yData);
end

% Get chosen moiety
moietyVal = options.moietyVal;
% Get twist angle
twistAngle = options.twistAngle;

%% Check data_id and define xData and yData
xData_id = data_id(1);
yData_id = data_id(2);

% Info IDs:
% X
% 1: tilt angle
% 2: twist angle
% 3: hyp. ratio
% Y
% 0: none
% 1: tilt angle
% 2: twist angle
% 3: hyp. ratio

% x Data
if xData_id == 1
    tiltAngle = xData;
elseif xData_id == 2
    twistAngle = xData;
elseif xData_id == 3
    hypRatio = xData;
end

% y Data
if yData_id == 0
    yData = [];
elseif yData_id == 1
    tiltAngle = yData;
elseif yData_id == 2
    twistAngle = yData;
elseif yData_id == 3
    hypRatio = yData;
end


    function checkParameters()
        if yData_id ~= 2 && xData_id ~= 2 && isempty(twistAngle) == 1
            % If twist Angle is not selected as y Data or x Data and is not
            % set as a fixed value return error
            waitfor(errordlg(['Twist angle must either be a variable or a fixed value. ',...
                'Twist angle will be set to 0°.']));
            twistAngle = 0;
            return
        end
    end


%% Symmetric Stretch
if options.mode == 1
    if moietyVal == 1
        % 2-Propanol
        checkParameters()
        zData = fcn_propanol_ss(tiltAngle,twistAngle,hypRatio,bondAngle);
    elseif moietyVal == 2
        % Isopropyl
        checkParameters()
        zData = fcn_isopropyl_ss(tiltAngle,twistAngle,hypRatio,bondAngle);
    elseif moietyVal == 3
        % Methyl
        zData = fcn_methyl_ss(tiltAngle,hypRatio,options);
    elseif moietyVal == 4
        % Methylene
        
    elseif moietyVal == 5
        % Isopropyl (Miyamae)
        checkParameters()
        zData = fcn_isopropyl2_ss(tiltAngle,twistAngle,hypRatio,bondAngle);
    
    elseif moietyVal == 6
        % Carbonyl
        zData = fcn_carbonyl_ss(tiltAngle,hypRatio,...
            options);
    end
else
%% Asymmetric Stretch
    if moietyVal == 1
        % 2-Propanol
        zData = fcn_propanol_as(tiltAngle,twistAngle,bondAngle);
    elseif moietyVal == 2
        % Isopropyl
        zData = fcn_isopropyl_as(tiltAngle,twistAngle,bondAngle);
    elseif moietyVal == 3
        zData = fcn_methyl_as(tiltAngle,options);
    elseif moietyVal == 4
        % Methylene
        
    elseif moietyVal == 5
        % Isopropyl (Miyamae)
        zData = fcn_isopropyl2_as(tiltAngle,twistAngle,bondAngle);
    elseif moietyVal == 6
        % Carbonyl
        helpdlg('Because the C=O vibration has only symmetric modes, these are plotted.','Info')
        zData = fcn_carbonyl_ss(tiltAngle,hypRatio,...
            options);
    end
end

%% Apply Fresnel factors to z Data if selected
if options.fresnel == 1
    %% Calculate SF beam angle
    angSF = fcn_sfangle(wlVis,wlIR,n1_sf,n1_vis,n1_ir,angVis,angIR);
    
    % DEBUG
    % fprintf('SF angle: %g°\n',fcn_rtd(angSF));
    
    %% Calculate the fresnel factors
    [LxxVis,LyyVis,LzzVis] =...
        fcn_fresnelfactors(angVis,n1_vis,n2_vis,nBL_vis);
    [LxxIR,LyyIR,LzzIR] =...
        fcn_fresnelfactors(angIR,n1_ir,n2_ir,nBL_ir);
    [LxxSF,LyySF,LzzSF] =...
        fcn_fresnelfactors(angSF,n1_sf,n2_sf,nBL_sf);
    
    % Define Arrays for oscillator function
    X = {zData{1},zData{2},zData{3}};
    L = [LxxSF,LyySF,LzzSF,LxxVis,LyyVis,LzzVis,LxxIR,LyyIR,LzzIR];
    ang = [angSF, angVis, angIR];
    
    % Pass to function
    zData = fcn_oscillators(X,L,ang);
    % In case of TIF-geometry the frensnel factors can be complex numbers.
    % The plotting function only works wiht non-complex numbers, so only
    % the real part is taken into account.
    zData{1} = real(zData{1});
    zData{2} = real(zData{2});
    zData{3} = real(zData{3});
end

%% Plot intensityies or susceptibilities?
if options.zData == 1
    % Plot intensities (square zData)
    zData{1} = zData{1}.^2;
    zData{2} = zData{2}.^2;
    zData{3} = zData{3}.^2;
end


%% Create chosen Ratios of Xeff if selected
if options.ratiosSelect == 1
    % For symmetric stretch
    if options.mode == 1
        if options.ratios(1) >= 4 || options.ratios(2) >= 4
            errordlg('Selected mode and modes in "Ratios 1" do not match',...
                'Error');
            return
        end
        % Modify zData
        zData = zData{options.ratios(1)}./zData{options.ratios(2)};
        % Error Dialog if selected mode and mode in ratios doesnt match
    end
    % For asymmetric stretch
    if options.mode == 2
        % Error Dialog if selected mode and mode in ratios doesnt match
        if options.ratios(1) < 4 || options.ratios(2) < 4
            errordlg('Selected mode and modes in "Ratios 1" do not match',...
                'Error');
            return
        end
        % Manipulate index numbers in ratio array
        options.ratios(1) = options.ratios(1) - 3;
        options.ratios(2) = options.ratios(2) - 3;
        % Modify zData
        zData = zData{options.ratios(1)}./zData{options.ratios(2)};
    end
end



%% Convert xData and yData to Degrees
% x Data
if xData_id == 1 || xData_id == 2
    xData = fcn_rtd(xData);
end
% y Data
if yData_id == 1 || yData_id == 2
    yData = fcn_rtd(yData);
end


%% Layout options
% Titles
polSSP = 'SSP';
polPPP = 'PPP';
polSPS = 'SPS';
% Color map range
if options.ratiosSelect == 0
    % If 'simulate ratios' is not selected
    zData_max = max([zData{1},zData{2},zData{3}]);
    zData_min = min([zData{1},zData{2},zData{3}]);
elseif options.ratiosSelect == 1
    % If 'simulate ratios' is selected
    zData_max = max(zData);
    zData_min = min(zData);
end
zData_max = max(zData_max);
zData_min = min(zData_min);
if zData_max >= 10
    % If zData has too high values set the maximum value manually
    zData_max = 10;
end
if zData_min <= -10 || zData_min >= zData_max
    % If zData has too low values set the boundaries for the colormap
    zData_min = -10;
end
if zData_max == zData_min
    % If both values are equal set the value manually
    zData_max = zData_max + 0.1;
    zData_min = zData_min - 0.1;
end
cmrange = [zData_min, zData_max];
% Axis scaling
% xRange = [min(xData(:)),max(xData(:))];
% yRange = [min(yData(:)),max(yData(:))];
% zRange = [zData_min, zData_max];
xRange = options.xRange;
yRange = options.yRange;
zRange = options.zRange;
% Axis labels
if options.zData == 1 && options.ratiosSelect == 0
    zLabel = 'Theoretical Intensity (a.u.)';
elseif options.zData == 2 && options.ratiosSelect == 0
    zLabel = '\chi_{eff} (theoretical) (a.u.)';
elseif options.zData == 1 && options.ratiosSelect == 1
    zLabel = 'Intensity Ratio';
elseif options.zData == 2 && options.ratiosSelect == 1
    zLabel = '\chi_{eff} Ratio';
end

%% Make 2D plots
% Get figure
h = handles.figure1;
myFig = getappdata(h,'myFig');
figure(myFig)
hold on

if isempty(yData) == 1
    % set limits of y axis
    ylim(zRange);
    if options.ratiosSelect == 1
        % Make RATIO plot
        % Set box on
        box on
        % Plot the data
        plot(xData,zData,[options.style options.color])
        % Set axis scaling
        ylim(zRange);
        xlim(xRange);
        % Set axis labels
        xlabel(labelArray(1));
        ylabel(zLabel)
    else
        % Make NORMAL plot
        i = 1;
        while i <= 3
            hold on
            % Select subplot
            subplot(1,3,i)
            % Plot the data
            plot(xData,zData{i},[options.style options.color])
            
            i = i + 1;
        end
    end
end

%% Make 3D plots
if isempty(yData) == 0
    if options.ratiosSelect == 1
        % Make RATIO plot
        
        % Plot the data
        mesh(xData,yData,zData)
        
        % Make colorbar
        t = colorbar('peer',gca);
        set(get(t,'ylabel'),'String', zLabel);
        caxis(cmrange);
        
        % set perspective
        view(0,90);
        
        % Set axis ranges
        xlim(xRange)
        ylim(yRange)
        zlim(zRange)
        
        % Set title
        title('Ratio');
        
        % Set labels
        xlabel(labelArray(1));
        ylabel(labelArray(2));
        zlabel(zLabel);
        
        % Appearance
        box on
        
    else
        % Loop for NORMAL plot
        i = 1;
        while i <= 3
            % Select subplot
            subplot(1,3,i)
            % Plot the data
            mesh(xData,yData,zData{i})
            
            % Make colorbar
            t = colorbar('peer',gca);
            set(get(t,'ylabel'),'String', zLabel);
            caxis(cmrange);
            
            % Set labels
            xlabel(labelArray(1));
            ylabel(labelArray(2));
            zlabel(zLabel);
            
            % Appearance
            axis square
            
            i = i + 1;
        end
    end
end

% Set Labels and titles for 3D subplots
if isempty(yData) == 0 && options.ratiosSelect == 0
    % figure
    % Activate colorbar
    % set Colormap axis
    % colorbar
    
    i = 1;
    while i <= 3
        % box on
        box on;
        subplot(1,3,i)
        % set x axis label
        xlabel(labelArray{1});
        % set y axis label
        ylabel(labelArray{2});
        % set z axis label
        zlabel(zLabel);
        % set x Range
        xlim(xRange)
        % set y Range
        ylim(yRange)
        % set perspective
        view(0,90);
        % set titles
        if i == 1
            title(polSSP)
        elseif i == 2
            title(polPPP)
        elseif i == 3
            title(polSPS)
        end
        
        i = i + 1;
    end
end


% Set Labels and titles for 2D subplots
if isempty(yData) == 1 && options.ratiosSelect == 0
    i = 1;
    while i <= 3
        % box on
        box on;
        subplot(1,3,i)
        % set x axis label
        xlabel(labelArray{1});
        % set y axis label
        ylabel(zLabel);
        % set axis limits
        xlim(xRange)
        ylim(zRange)
        if i == 1
            title(polSSP)
        elseif i == 2
            title(polPPP)
        elseif i == 3
            title(polSPS)
        end
        
        i = i + 1;
    end
end

        
end