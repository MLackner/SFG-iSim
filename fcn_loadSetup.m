function fcn_loadSetup(handles)
% Loads setup parameters

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

%% Output
fprintf('Setup parameters "%s" loaded successfully.\n',FileName)

end