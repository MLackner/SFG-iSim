function varargout = SFGiSim_10(varargin)
% SFGiSim_10 MATLAB code for SFGiSim_10.fig
%      SFGiSim_10, by itself, creates a new SFGiSim_10 or raises the existing
%      singleton*.
%
%      H = SFGiSim_10 returns the handle to a new SFGiSim_10 or the handle to
%      the existing singleton*.
%
%      SFGiSim_10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SFGiSim_10.M with the given input arguments.
%
%      SFGiSim_10('Property','Value',...) creates a new SFGiSim_10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the SFGiSim_10 before SFGiSim_10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SFGiSim_10_OpeningFcn via varargin.
%
%      *See SFGiSim_10 Options on GUIDE's Tools menu.  Choose "SFGiSim_10 allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SFGiSim_10

% Last Modified by GUIDE v2.5 11-Sep-2014 11:12:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SFGiSim_10_OpeningFcn, ...
                   'gui_OutputFcn',  @SFGiSim_10_OutputFcn, ...
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


% --- Executes just before SFGiSim_10 is made visible.
function SFGiSim_10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SFGiSim_10 (see VARARGIN)

% Choose default command line output for SFGiSim_10
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SFGiSim_10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

    setappdata(0, 'hMainGui', gcf);
    setappdata(0, 'nDataPnts', 361);
    setappdata(0, 'range_Ang', [0,90])
    setappdata(0, 'range_HypRatio', [1,6])
    

% --- Outputs from this function are returned to the command line.
function varargout = SFGiSim_10_OutputFcn(hObject, eventdata, handles) 
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

% Call save function
fcn_saveSetup(handles)

% --- Executes on button press in push_loadSetup.
function push_loadSetup_Callback(hObject, eventdata, handles)
% hObject    handle to push_loadSetup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Call load function
fcn_loadSetup(handles)


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



% --- Executes on button press in push_plotData.
function [zData] = push_plotData_Callback(hObject, eventdata, handles)
% hObject    handle to push_plotData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
% Call plot preparation function
zData = fcn_plotPreparation(handles);
% Call export function
fcn_exportData(handles,zData)
    
    
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




% --- Executes during object creation, after setting all properties.
function text_fileName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_fileName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called




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

% Open settings prompt
fcn_settingsPrompt

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



function edit_zRange_Callback(hObject, eventdata, handles)
% hObject    handle to edit_zRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_zRange as text
%        str2double(get(hObject,'String')) returns contents of edit_zRange as a double



% --- Executes during object creation, after setting all properties.
function edit_zRange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_zRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_yRange_Callback(hObject, eventdata, handles)
% hObject    handle to edit_yRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_yRange as text
%        str2double(get(hObject,'String')) returns contents of edit_yRange as a double



% --- Executes during object creation, after setting all properties.
function edit_yRange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_yRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_xRange_Callback(hObject, eventdata, handles)
% hObject    handle to edit_xRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_xRange as text
%        str2double(get(hObject,'String')) returns contents of edit_xRange as a double



% --- Executes during object creation, after setting all properties.
function edit_xRange_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_xRange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popup_color.
function popup_color_Callback(hObject, eventdata, handles)
% hObject    handle to popup_color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_color contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_color


% --- Executes during object creation, after setting all properties.
function popup_color_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popup_style.
function popup_style_Callback(hObject, eventdata, handles)
% hObject    handle to popup_style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popup_style contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popup_style


% --- Executes during object creation, after setting all properties.
function popup_style_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popup_style (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_zDataName_Callback(hObject, eventdata, handles)
% hObject    handle to edit_zDataName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_zDataName as text
%        str2double(get(hObject,'String')) returns contents of edit_zDataName as a double


% --- Executes during object creation, after setting all properties.
function edit_zDataName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_zDataName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in push_calcRefIndBL.
function push_calcRefIndBL_Callback(hObject, eventdata, handles)
% hObject    handle to push_calcRefIndBL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

fcn_refractionIndexBL(handles);


% --- Executes during object creation, after setting all properties.
function push_calcRefIndBL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to push_calcRefIndBL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
