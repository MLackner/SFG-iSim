function varargout = SFGiSim_09(varargin)
% SFGiSim_09 MATLAB code for SFGiSim_09.fig
%      SFGiSim_09, by itself, creates a new SFGiSim_09 or raises the existing
%      singleton*.
%
%      H = SFGiSim_09 returns the handle to a new SFGiSim_09 or the handle to
%      the existing singleton*.
%
%      SFGiSim_09('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SFGiSim_09.M with the given input arguments.
%
%      SFGiSim_09('Property','Value',...) creates a new SFGiSim_09 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the SFGiSim_09 before SFGiSim_09_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SFGiSim_09_OpeningFcn via varargin.
%
%      *See SFGiSim_09 Options on GUIDE's Tools menu.  Choose "SFGiSim_09 allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SFGiSim_09

% Last Modified by GUIDE v2.5 15-Aug-2014 05:39:08

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SFGiSim_09_OpeningFcn, ...
                   'gui_OutputFcn',  @SFGiSim_09_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before SFGiSim_09 is made visible.
function SFGiSim_09_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SFGiSim_09 (see VARARGIN)

% Choose default command line output for SFGiSim_09
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SFGiSim_09 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

    setappdata(0, 'hMainGui', gcf);
    setappdata(0, 'nDataPnts', 364);
    setappdata(0, 'range_Ang', [0,90])
    setappdata(0, 'range_HypRatio', [1,6])
    

% --- Outputs from this function are returned to the command line.
function varargout = SFGiSim_09_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popup_moiety1.
function popup_moiety1_Callback(hObject, eventdata, handles)
% hObject    handle to popup_moiety1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_moiety1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_moiety1


% --- Executes during object creation, after setting all properties.
function popup_moiety1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_moiety1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_tilt_fixed.
function check_tilt_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_tilt_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_tilt_fixed


% --- Executes on button press in check_twist_fixed.
function check_twist_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_twist_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_twist_fixed


% --- Executes on button press in check_hypRatio_fixed.
function check_hypRatio_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_hypRatio_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_hypRatio_fixed



function edit_tiltAngle_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_tiltAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_tiltAngle_from as text
%        str2double(get(hObject,'String')) returns contents of edit_tiltAngle_from as a double


% --- Executes during object creation, after setting all properties.
function edit_tiltAngle_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_tiltAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_tiltAngle_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_tiltAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_tiltAngle_to as text
%        str2double(get(hObject,'String')) returns contents of edit_tiltAngle_to as a double


% --- Executes during object creation, after setting all properties.
function edit_tiltAngle_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_tiltAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_twistAngle_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_twistAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_twistAngle_from as text
%        str2double(get(hObject,'String')) returns contents of edit_twistAngle_from as a double


% --- Executes during object creation, after setting all properties.
function edit_twistAngle_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_twistAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_twistAngle_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_twistAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_twistAngle_to as text
%        str2double(get(hObject,'String')) returns contents of edit_twistAngle_to as a double


% --- Executes during object creation, after setting all properties.
function edit_twistAngle_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_twistAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_hypRatio_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_hypRatio_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_hypRatio_from as text
%        str2double(get(hObject,'String')) returns contents of edit_hypRatio_from as a double


% --- Executes during object creation, after setting all properties.
function edit_hypRatio_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_hypRatio_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_hypRatio_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_hypRatio_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_hypRatio_to as text
%        str2double(get(hObject,'String')) returns contents of edit_hypRatio_to as a double


% --- Executes during object creation, after setting all properties.
function edit_hypRatio_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_hypRatio_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_plotInCurrent.
function check_plotInCurrent_Callback(hObject, eventdata, handles)
% hObject    handle to check_plotInCurrent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_plotInCurrent


% --- Executes on button press in push_plotFresnel.
function push_plotFresnel_Callback(hObject, eventdata, handles)
% hObject    handle to push_plotFresnel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in popup_moiety2.
function popup_moiety2_Callback(hObject, eventdata, handles)
% hObject    handle to popup_moiety2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_moiety2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_moiety2


% --- Executes during object creation, after setting all properties.
function popup_moiety2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_moiety2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_angVis_Callback(hObject, eventdata, handles)
% hObject    handle to edit_angVis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_angVis as text
%        str2double(get(hObject,'String')) returns contents of edit_angVis as a double


% --- Executes during object creation, after setting all properties.
function edit_angVis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_angVis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_angIR_Callback(hObject, eventdata, handles)
% hObject    handle to edit_angIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_angIR as text
%        str2double(get(hObject,'String')) returns contents of edit_angIR as a double


% --- Executes during object creation, after setting all properties.
function edit_angIR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_angIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n1_sf_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n1_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n1_sf as text
%        str2double(get(hObject,'String')) returns contents of edit_n1_sf as a double


% --- Executes during object creation, after setting all properties.
function edit_n1_sf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n1_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n2_sf_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n2_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n2_sf as text
%        str2double(get(hObject,'String')) returns contents of edit_n2_sf as a double


% --- Executes during object creation, after setting all properties.
function edit_n2_sf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n2_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_nBL_sf_Callback(hObject, eventdata, handles)
% hObject    handle to edit_nBL_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_nBL_sf as text
%        str2double(get(hObject,'String')) returns contents of edit_nBL_sf as a double


% --- Executes during object creation, after setting all properties.
function edit_nBL_sf_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_nBL_sf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_numDataPoints_Callback(hObject, eventdata, handles)
% hObject    handle to edit_numDataPoints (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_numDataPoints as text
%        str2double(get(hObject,'String')) returns contents of edit_numDataPoints as a double


% --- Executes during object creation, after setting all properties.
function edit_numDataPoints_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_numDataPoints (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_saveSetup.
function push_saveSetup_Callback(hObject, eventdata, handles)
% hObject    handle to push_saveSetup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    % Get data
    Setup = {
        get(handles.edit_angVis,'String'),... 
        get(handles.edit_wlVis,'String'),...
        get(handles.edit_angIR,'String'),...
    	get(handles.edit_wlIR,'String'),...
        get(handles.edit_n1_sf,'String'),...
        get(handles.edit_n2_sf,'String'),...
        get(handles.edit_nBL_sf,'String'),...
        get(handles.edit_n1_vis,'String'),...
        get(handles.edit_n2_vis,'String'),...
        get(handles.edit_nBL_vis,'String'),...
        get(handles.edit_n1_ir,'String'),...
        get(handles.edit_n2_ir,'String'),...
        get(handles.edit_nBL_ir,'String'),...
        get(handles.edit_hypRatio,'String'),...
        get(handles.popup_moiety2,'Value'),...
        get(handles.edit_bondAngle,'String')
        };
        
    % Open save file dialog
    [FileName,PathName] = uiputfile('*.mat', 'Save Setup');
    
    % Return if no file was selected
    if FileName == 0
        return
    end
    
    % Save the file
    save([PathName FileName],'Setup');
    % Update file name above table
    set(handles.uipanel_setup,'Title',FileName);


% --- Executes on button press in push_loadSetup.
function push_loadSetup_Callback(hObject, eventdata, handles)
% hObject    handle to push_loadSetup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    % Open load file Dialog
    [FileName,PathName,FilterIndex] = uigetfile('*.mat',...
        'Select Setup Data');
    
    % Return if no file was selected
    if FileName == 0
        return
    end
    
    S = load([PathName FileName]);
    
    % Check if file is a setup file
    if isfield(S,'Setup') == 0
        % Create error dialog
        waitfor(errordlg('No setup data in selected file'));
        push_loadSetup_Callback(hObject, eventdata, handles)
        return
    end
        
        % Insert data
        set(handles.edit_angVis,'String',S.Setup{1});
        set(handles.edit_wlVis,'String',S.Setup{2});
        set(handles.edit_angIR,'String',S.Setup{3});
    	set(handles.edit_wlIR,'String',S.Setup{4});
        set(handles.edit_n1_sf,'String',S.Setup{5});
        set(handles.edit_n2_sf,'String',S.Setup{6});
        set(handles.edit_nBL_sf,'String',S.Setup{7});
        set(handles.edit_n1_vis,'String',S.Setup{8});
        set(handles.edit_n2_vis,'String',S.Setup{9});
        set(handles.edit_nBL_vis,'String',S.Setup{10});
        set(handles.edit_n1_ir,'String',S.Setup{11});
        set(handles.edit_n2_ir,'String',S.Setup{12});
        set(handles.edit_nBL_ir,'String',S.Setup{13});
        set(handles.edit_hypRatio,'String',S.Setup{14});
        set(handles.popup_moiety2,'Value',S.Setup{15});
        set(handles.edit_bondAngle,'String',S.Setup{16});
    
    % View file name as panel title
    set(handles.uipanel_setup,'Title',FileName);



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_hypRatio_Callback(hObject, eventdata, handles)
% hObject    handle to edit_hypRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_hypRatio as text
%        str2double(get(hObject,'String')) returns contents of edit_hypRatio as a double


% --- Executes during object creation, after setting all properties.
function edit_hypRatio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_hypRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function dataTable_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dataTable (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% set the tables 'Data' property to a cell array of empty matrices. 

% The size of the cell array determines the number of rows and columns in the table.

set(hObject,...
    'Data', [0 0 0; 0 0 0],...
    'RowName', {'ss', 'as'},...
    'ColumnName', {'Assp', 'Appp', 'Asps'},...
	'ColumnEditable', [true true true]);


% --- Executes on button press in push_saveData.
function push_saveData_Callback(hObject, eventdata, handles)
% hObject    handle to push_saveData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    % Get data in Table
    A = get(handles.dataTable,'Data');
    % Open save file dialog
    [FileName,PathName] = uiputfile('*.mat', 'Save Data Set');
    
    % Return if cancled
    if FileName == 0
        return
    end
    
    % Save the file
    save([PathName FileName],'A');
    % Update file name above table
    set(handles.text_fileName,'String',FileName);

% --- Executes on button press in push_loadData.
function push_loadData_Callback(hObject, eventdata, handles)
% hObject    handle to push_loadData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    % Open load file Dialog
    [FileName,PathName,FilterIndex] = uigetfile('*.mat','Select Data');
        
    % Return if no file was selected
    if FileName == 0
        return
    end
    
    S = load([PathName FileName]);
    
    % Check if file is a data file
    if isfield(S,'A') == 0
        % Create error dialog
        waitfor(errordlg('No readable data in selected file'));
        push_loadData_Callback(hObject, eventdata, handles)
        return
    end
    
    % Insert data in table
    set(handles.dataTable,'Data',S.A);
    % View file name above table
    set(handles.text_fileName,'String',FileName);

% --- Executes on button press in radio_unkn2.
function radio_unkn2_Callback(hObject, eventdata, handles)
% hObject    handle to radio_unkn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_unkn2


% --- Executes on button press in radio_unkn3.
function radio_unkn3_Callback(hObject, eventdata, handles)
% hObject    handle to radio_unkn3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radio_unkn3


% --- Executes on selection change in popup_ratio2b.
function popup_ratio2b_Callback(hObject, eventdata, handles)
% hObject    handle to popup_ratio2b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_ratio2b contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_ratio2b


% --- Executes during object creation, after setting all properties.
function popup_ratio2b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_ratio2b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popup_ratio2a.
function popup_ratio2a_Callback(hObject, eventdata, handles)
% hObject    handle to popup_ratio2a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_ratio2a contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_ratio2a


% --- Executes during object creation, after setting all properties.
function popup_ratio2a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_ratio2a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popup_ratio1b.
function popup_ratio1b_Callback(hObject, eventdata, handles)
% hObject    handle to popup_ratio1b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_ratio1b contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_ratio1b


% --- Executes during object creation, after setting all properties.
function popup_ratio1b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_ratio1b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popup_ratio1a.
function popup_ratio1a_Callback(hObject, eventdata, handles)
% hObject    handle to popup_ratio1a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_ratio1a contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_ratio1a


% --- Executes during object creation, after setting all properties.
function popup_ratio1a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_ratio1a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_plotOptions.
function push_plotOptions_Callback(hObject, eventdata, handles)
% hObject    handle to push_plotOptions (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    hMainGui = getappdata(0, 'hMainGui');
    FigName = getappdata(hMainGui, 'FigName');
    % Bring figure to front
    figure(FigName);
    propertyeditor('on');


% --- Executes on button press in check_irAngle_fixed.
function check_irAngle_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_irAngle_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_irAngle_fixed


% --- Executes on button press in check_visAngle_fixed.
function check_visAngle_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_visAngle_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_visAngle_fixed



function edit_irAngle_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_irAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_irAngle_to as text
%        str2double(get(hObject,'String')) returns contents of edit_irAngle_to as a double


% --- Executes during object creation, after setting all properties.
function edit_irAngle_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_irAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_irAngle_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_irAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_irAngle_from as text
%        str2double(get(hObject,'String')) returns contents of edit_irAngle_from as a double


% --- Executes during object creation, after setting all properties.
function edit_irAngle_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_irAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_visAngle_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_visAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_visAngle_to as text
%        str2double(get(hObject,'String')) returns contents of edit_visAngle_to as a double


% --- Executes during object creation, after setting all properties.
function edit_visAngle_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_visAngle_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_visAngle_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_visAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_visAngle_from as text
%        str2double(get(hObject,'String')) returns contents of edit_visAngle_from as a double


% --- Executes during object creation, after setting all properties.
function edit_visAngle_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_visAngle_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_plotData.
function [zData] = push_plotData_Callback(hObject, eventdata, handles)
% hObject    handle to push_plotData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
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
    
    
    %% Get the enteralbe parameters
    %% Get the parameters from the editable fields and store in array
    params = [...
        get(handles.popup_moiety2,'Value'),
        fcn_dtr(str2double(get(handles.edit_angVis,'String'))),
        str2double(get(handles.edit_wlVis,'String'))*10^-9,
        fcn_dtr(str2double(get(handles.edit_angIR,'String'))),
        str2double(get(handles.edit_wlIR,'String'))*10^-9,
        str2double(get(handles.edit_n1_sf,'String')),
        str2double(get(handles.edit_n2_sf,'String')),
        str2double(get(handles.edit_nBL_sf,'String')),
        str2double(get(handles.edit_n1_vis,'String')),
        str2double(get(handles.edit_n2_vis,'String')),
        str2double(get(handles.edit_nBL_vis,'String')),
        str2double(get(handles.edit_n1_ir,'String')),
        str2double(get(handles.edit_n2_ir,'String')),
        str2double(get(handles.edit_nBL_ir,'String')),
        str2double(get(handles.edit_hypRatio,'String')),
        fcn_dtr(str2double(get(handles.edit_bondAngle,'String'))/2)];
    
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
        
    %% Pass to plotting function
    zData = fcn_plotFcn...
        (params,xData,yData,...
        labelArray,holdFig,data_id,options);
    
    %% Send zData to Workspace
    assignin('base','zData',zData);



function edit_n1_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n1_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n1_from as text
%        str2double(get(hObject,'String')) returns contents of edit_n1_from as a double


% --- Executes during object creation, after setting all properties.
function edit_n1_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n1_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n1_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n1_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n1_to as text
%        str2double(get(hObject,'String')) returns contents of edit_n1_to as a double


% --- Executes during object creation, after setting all properties.
function edit_n1_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n1_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_n1_fixed.
function check_n1_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_n1_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_n1_fixed



function edit_n2_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n2_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n2_from as text
%        str2double(get(hObject,'String')) returns contents of edit_n2_from as a double


% --- Executes during object creation, after setting all properties.
function edit_n2_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n2_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n2_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n2_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n2_to as text
%        str2double(get(hObject,'String')) returns contents of edit_n2_to as a double


% --- Executes during object creation, after setting all properties.
function edit_n2_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n2_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_n2_fixed.
function check_n2_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_n2_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_n2_fixed



function edit_nbl_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_nbl_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_nbl_from as text
%        str2double(get(hObject,'String')) returns contents of edit_nbl_from as a double


% --- Executes during object creation, after setting all properties.
function edit_nbl_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_nbl_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_nbl_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_nbl_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_nbl_to as text
%        str2double(get(hObject,'String')) returns contents of edit_nbl_to as a double


% --- Executes during object creation, after setting all properties.
function edit_nbl_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_nbl_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_nbl_fixed.
function check_nbl_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_nbl_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_nbl_fixed


% --- Executes on button press in push_calcSuscept.
function push_calcSuscept_Callback(hObject, eventdata, handles)
% hObject    handle to push_calcSuscept (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    %% Get the parameters from the editable fields and store in array
    params = [...
        get(handles.popup_moiety2,'Value'),
        fcn_dtr(str2double(get(handles.edit_angVis,'String'))),
        str2double(get(handles.edit_wlVis,'String'))*10^-9,
        fcn_dtr(str2double(get(handles.edit_angIR,'String'))),
        str2double(get(handles.edit_wlIR,'String'))*10^-9,
        str2double(get(handles.edit_n1_sf,'String')),
        str2double(get(handles.edit_n2_sf,'String')),
        str2double(get(handles.edit_nBL_sf,'String')),
        str2double(get(handles.edit_n1_vis,'String')),
        str2double(get(handles.edit_n2_vis,'String')),
        str2double(get(handles.edit_nBL_vis,'String')),
        str2double(get(handles.edit_n1_ir,'String')),
        str2double(get(handles.edit_n2_ir,'String')),
        str2double(get(handles.edit_nBL_ir,'String')),
        str2double(get(handles.edit_hypRatio,'String')),
        fcn_dtr(str2double(get(handles.edit_bondAngle,'String'))/2)];
    
    %% Extract 'params' array
    angVis = params(2);
    wlVis = params(3);
    angIR = params(4);
    wlIR = params(5);
    n1_sf = params(6);
    n2_sf = params(7);
    nBL_sf = params(8);
    n1_vis = params(9);
    n2_vis = params(10);
    nBL_vis = params(11);
    n1_ir = params(12);
    n2_ir = params(13);
    nBL_ir = params(14);
    hypRatio = params(15);
    bondAngle = params(16);
    
    %% Calculate SF beam angle
    angSF = fcn_sfangle(wlVis,wlIR,n1_sf,n1_vis,n1_ir,angVis,angIR);
    
    % DEBUG
    fprintf('SF angle: %g°\n',fcn_rtd(angSF));
    
    %% Calculate the fresnel factors
    [LxxVis,LyyVis,LzzVis] =...
        fcn_fresnelfactors(angVis,n1_vis,n2_vis,nBL_vis);
    [LxxIR,LyyIR,LzzIR] =...
        fcn_fresnelfactors(angIR,n1_ir,n2_ir,nBL_ir);
    [LxxSF,LyySF,LzzSF] =...
        fcn_fresnelfactors(angSF,n1_sf,n2_sf,nBL_sf);
    
    %% Get the oscillator strengths from the table and store in Matrix
    A = get(handles.dataTable,'Data');
    % Array: A
%     Assp_ss = A(1);
%     Assp_as = A(2);
%     Appp_ss = A(3);
%     Appp_as = A(4);
%     Asps_ss = A(5);
%     Asps_as = A(6);
%     
    %% Calculate susceptibilities
    % Symmetric stretch oscillators
    A_sym = [A(1),A(3),A(5)];
    % Asymmetric stretch oscillators
    A_asym = [A(2),A(4),A(6)];
    % Define fresnel factor array and angle array
    L = [LxxSF,LyySF,LzzSF,LxxVis,LyyVis,LzzVis,LxxIR,LyyIR,LzzIR];
    ang = [angSF, angVis, angIR];
    % Calculate symmetric
    X_sym = fcn_susceptibility(A_sym,L,ang);
    % Calculate asymmetric
    X_asym = fcn_susceptibility(A_asym,L,ang);
    
    %% Output
    fprintf('Susceptibilities:\n') 
    fprintf(' (symmetric)\n ssp: %g\n ppp: %g\n sps: %g\n',X_sym(1),...
        X_sym(2),X_sym(3))
    fprintf(' (asymmetric)\n ssp: %g\n ppp: %g\n sps: %g\n',X_asym(1),...
        X_asym(2),X_asym(3))



function edit_wlVis_Callback(hObject, eventdata, handles)
% hObject    handle to edit_wlVis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_wlVis as text
%        str2double(get(hObject,'String')) returns contents of edit_wlVis as a double


% --- Executes during object creation, after setting all properties.
function edit_wlVis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_wlVis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_wlIR_Callback(hObject, eventdata, handles)
% hObject    handle to edit_wlIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_wlIR as text
%        str2double(get(hObject,'String')) returns contents of edit_wlIR as a double


% --- Executes during object creation, after setting all properties.
function edit_wlIR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_wlIR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_irWL_fixed.
function check_irWL_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_irWL_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_irWL_fixed


% --- Executes on button press in check_visWL_fixed.
function check_visWL_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to check_visWL_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_visWL_fixed



function edit_irWL_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_irWL_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_irWL_to as text
%        str2double(get(hObject,'String')) returns contents of edit_irWL_to as a double


% --- Executes during object creation, after setting all properties.
function edit_irWL_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_irWL_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_irWL_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_irWL_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_irWL_from as text
%        str2double(get(hObject,'String')) returns contents of edit_irWL_from as a double


% --- Executes during object creation, after setting all properties.
function edit_irWL_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_irWL_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_visWL_to_Callback(hObject, eventdata, handles)
% hObject    handle to edit_visWL_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_visWL_to as text
%        str2double(get(hObject,'String')) returns contents of edit_visWL_to as a double


% --- Executes during object creation, after setting all properties.
function edit_visWL_to_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_visWL_to (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_visWL_from_Callback(hObject, eventdata, handles)
% hObject    handle to edit_visWL_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_visWL_from as text
%        str2double(get(hObject,'String')) returns contents of edit_visWL_from as a double


% --- Executes during object creation, after setting all properties.
function edit_visWL_from_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_visWL_from (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on push_calcSuscept and none of its controls.
function push_calcSuscept_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to push_calcSuscept (see GCBO)
% eventdata  structure with the following fields (see UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function text_fileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in push_calculate.
function push_calculate_Callback(hObject, eventdata, handles)
% hObject    handle to push_calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    %% Reset former calculated results
    result = [];
    fval = [];
    exit = [];
    output = {};
    
    % Tilt angle
    set(handles.text_resultTiltAng,'String','...');
    
    % Twist angle
    set(handles.text_resultTwistAng,'String','...');
    
    % Hyperpol. Ratio
    set(handles.text_resultHypRatio,'String','...');
    
    % Output Message
    set(handles.text_resultExitDialog,'String','...');

    %% Get the parameters from the editable fields and store in array
    params = [...
        get(handles.popup_moiety2,'Value'),
        fcn_dtr(str2double(get(handles.edit_angVis,'String'))),
        str2double(get(handles.edit_wlVis,'String'))*10^-9,
        fcn_dtr(str2double(get(handles.edit_angIR,'String'))),
        str2double(get(handles.edit_wlIR,'String'))*10^-9,
        str2double(get(handles.edit_n1_sf,'String')),
        str2double(get(handles.edit_n2_sf,'String')),
        str2double(get(handles.edit_nBL_sf,'String')),
        str2double(get(handles.edit_n1_vis,'String')),
        str2double(get(handles.edit_n2_vis,'String')),
        str2double(get(handles.edit_nBL_vis,'String')),
        str2double(get(handles.edit_n1_ir,'String')),
        str2double(get(handles.edit_n2_ir,'String')),
        str2double(get(handles.edit_nBL_ir,'String')),
        str2double(get(handles.edit_hypRatio,'String')),
        fcn_dtr(str2double(get(handles.edit_bondAngle,'String'))/2)];
    
    %% Get the oscillator strengths from the table and store in Matrix
    A = get(handles.dataTable,'Data');
    
    %% Check which parameter is unknown
    % Make an empty array
    unknowns = zeros(1,2);
    % Guess for tilt angle
    unknowns(1) = 0.75;
    
    % Twist Angle
    if get(handles.radio_unkn_twistAng,'Value') == 1
        % Guess 
        unknowns(2) = 0.75;
        
        % If the hyp. ratio is known a value has to be entered in the
        % setup section. Check that:
        if isnan(params(15)) == 1
            % Open error dialog
            errordlg('No hyperpol. ratio value entered in setup panel',...
                'Error');
            % Cancel execution
            return
        end
    elseif get(handles.radio_unkn_hypRatio,'Value') == 1
        % Hyp. Ratio is selected
        % Guess #2 is for the hyp. Ratio
        unknowns(2) = 3;
    end
    
    
    %% Get the ratios which shall be calculated and store in array
    Ratios = [...
        get(handles.popup_ratio1a,'Value'),...
        get(handles.popup_ratio1b,'Value'),...
        get(handles.popup_ratio2a,'Value'),...
        get(handles.popup_ratio2b,'Value'),...
        ];
    
    %% Check if 'Plot Solution' is selected
    % Default is no plot
    plotVal = 0;
    if get(handles.check_plotSolution,'Value') == 1
        % 'plotVal' gets passed to 'fcn_calculate'
        plotVal = 1;
    end
    
    %% Pass to function
    [result,fval,exit,output] =...
        fcn_calculate(params,A,unknowns,Ratios,plotVal)
    
    %% Present results in SFGiSim_09
    % Tilt angle
    resultTiltDialog = [num2str(result(1)) '°'];
    set(handles.text_resultTiltAng,'String',resultTiltDialog);
    
    % Twist angle
    if get(handles.radio_unkn_twistAng,'Value') == 1
        % Check if tilt is unknown and display result
        resultTwistDialog = [num2str(result(2)) '°'];
    else
        % Otherwise print 'nc' (not calculated)
        resultTwistDialog = 'nc';
    end
    set(handles.text_resultTwistAng,'String',resultTwistDialog);
    
    % Hyperpol. Ratio
    if get(handles.radio_unkn_hypRatio,'Value') == 1
        % Check if tilt is unknown and display result
        resultHypRatioDialog = num2str(result(2));
    else
        % If known display the entered setup parameter
        resultHypRatioDialog = [num2str(params(15)),' (nc)'];
    end
    set(handles.text_resultHypRatio,'String',resultHypRatioDialog);
    
    % Output Message
    set(handles.text_resultExitDialog,'String',output.message);
    


function edit_n1_vis_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n1_vis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n1_vis as text
%        str2double(get(hObject,'String')) returns contents of edit_n1_vis as a double


% --- Executes during object creation, after setting all properties.
function edit_n1_vis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n1_vis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n2_vis_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n2_vis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n2_vis as text
%        str2double(get(hObject,'String')) returns contents of edit_n2_vis as a double


% --- Executes during object creation, after setting all properties.
function edit_n2_vis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n2_vis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_nBL_vis_Callback(hObject, eventdata, handles)
% hObject    handle to edit_nBL_vis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_nBL_vis as text
%        str2double(get(hObject,'String')) returns contents of edit_nBL_vis as a double


% --- Executes during object creation, after setting all properties.
function edit_nBL_vis_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_nBL_vis (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n1_ir_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n1_ir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n1_ir as text
%        str2double(get(hObject,'String')) returns contents of edit_n1_ir as a double


% --- Executes during object creation, after setting all properties.
function edit_n1_ir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n1_ir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_n2_ir_Callback(hObject, eventdata, handles)
% hObject    handle to edit_n2_ir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_n2_ir as text
%        str2double(get(hObject,'String')) returns contents of edit_n2_ir as a double


% --- Executes during object creation, after setting all properties.
function edit_n2_ir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_n2_ir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_nBL_ir_Callback(hObject, eventdata, handles)
% hObject    handle to edit_nBL_ir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_nBL_ir as text
%        str2double(get(hObject,'String')) returns contents of edit_nBL_ir as a double


% --- Executes during object creation, after setting all properties.
function edit_nBL_ir_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_nBL_ir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_bondAngle_Callback(hObject, eventdata, handles)
% hObject    handle to edit_bondAngle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_bondAngle as text
%        str2double(get(hObject,'String')) returns contents of edit_bondAngle as a double


% --- Executes during object creation, after setting all properties.
function edit_bondAngle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_bondAngle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_plotSolution.
function check_plotSolution_Callback(hObject, eventdata, handles)
% hObject    handle to check_plotSolution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_plotSolution


% --- Executes during object creation, after setting all properties.
function check_plotSolution_CreateFcn(hObject, eventdata, handles)
% hObject    handle to check_plotSolution (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text_resultHypRatio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_resultHypRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object creation, after setting all properties.
function text_resultTiltAng_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_resultTiltAng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in check_unknTiltAng.
function check_unknTiltAng_Callback(hObject, eventdata, handles)
% hObject    handle to check_unknTiltAng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_unknTiltAng


% --- Executes on button press in check_unknTwistAng.
function check_unknTwistAng_Callback(hObject, eventdata, handles)
% hObject    handle to check_unknTwistAng (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_unknTwistAng


% --- Executes on button press in check_unknHypRatio.
function check_unknHypRatio_Callback(hObject, eventdata, handles)
% hObject    handle to check_unknHypRatio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_unknHypRatio


% --- Executes on button press in push_simulate.
function push_simulate_Callback(hObject, eventdata, handles)
% hObject    handle to push_simulate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    

% --- Executes on button press in check_applRatios.
function check_applRatios_Callback(hObject, eventdata, handles)
% hObject    handle to check_applRatios (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_applRatios



function edit_twist_fixed_Callback(hObject, eventdata, handles)
% hObject    handle to edit_twist_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_twist_fixed as text
%        str2double(get(hObject,'String')) returns contents of edit_twist_fixed as a double


% --- Executes during object creation, after setting all properties.
function edit_twist_fixed_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_twist_fixed (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in check_applFresnel.
function check_applFresnel_Callback(hObject, eventdata, handles)
% hObject    handle to check_applFresnel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_applFresnel


% --- Executes on button press in push_settings.
function push_settings_Callback(hObject, eventdata, handles)
% hObject    handle to push_settings (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Open a prompt in which the settings can be changed
prompt = {'Number of data points: (default: 300)'};
    title = 'Settings';
    answer = inputdlg(prompt,title);
    % Get the entered data
    nDataPnts = str2double(answer{1});
    
    % Save the settings in root
    % Check every time if a value was entered
    if isnan(nDataPnts) == 0
        setappdata(0, 'nDataPnts', nDataPnts);
    end
    % Give a warning if high number is entered
    if nDataPnts >= 3000
        helpdlg('High number of data points can cause 3D plotting to run slow or even crash the program.','Warning');
    end


% --- Executes on button press in check_tiltDist.
function check_tiltDist_Callback(hObject, eventdata, handles)
% hObject    handle to check_tiltDist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of check_tiltDist



function edit_tiltDist_Callback(hObject, eventdata, handles)
% hObject    handle to edit_tiltDist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_tiltDist as text
%        str2double(get(hObject,'String')) returns contents of edit_tiltDist as a double


% --- Executes during object creation, after setting all properties.
function edit_tiltDist_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_tiltDist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
