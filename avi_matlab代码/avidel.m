function varargout = avidel(varargin)
% AVIDEL MATLAB code for avidel.fig
%      AVIDEL, by itself, creates a new AVIDEL or raises the existing
%      singleton*.
%
%      H = AVIDEL returns the handle to a new AVIDEL or the handle to
%      the existing singleton*.
%
%      AVIDEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AVIDEL.M with the given input arguments.
%
%      AVIDEL('Property','Value',...) creates a new AVIDEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before avidel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to avidel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help avidel

% Last Modified by GUIDE v2.5 13-Nov-2020 21:34:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @avidel_OpeningFcn, ...
                   'gui_OutputFcn',  @avidel_OutputFcn, ...
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


% --- Executes just before avidel is made visible.
function avidel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to avidel (see VARARGIN)

% Choose default command line output for avidel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes avidel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = avidel_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbuttonExit.
function pushbuttonExit_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonExit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
choice = questdlg('确定退出系统？','退出','确定','取消','取消');
switch choice
    case '确定'
        close;
    case '取消'
        return;
end

function editFrameNum_Callback(hObject, eventdata, handles)
% hObject    handle to editFrameNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFrameNum as text
%        str2double(get(hObject,'String')) returns contents of editFrameNum as a double


% --- Executes during object creation, after setting all properties.
function editFrameNum_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFrameNum (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFrameWidth_Callback(hObject, eventdata, handles)
% hObject    handle to editFrameWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFrameWidth as text
%        str2double(get(hObject,'String')) returns contents of editFrameWidth as a double


% --- Executes during object creation, after setting all properties.
function editFrameWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFrameWidth (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFrameHeight_Callback(hObject, eventdata, handles)
% hObject    handle to editFrameHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFrameHeight as text
%        str2double(get(hObject,'String')) returns contents of editFrameHeight as a double


% --- Executes during object creation, after setting all properties.
function editFrameHeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFrameHeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editFrameRate_Callback(hObject, eventdata, handles)
% hObject    handle to editFrameRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editFrameRate as text
%        str2double(get(hObject,'String')) returns contents of editFrameRate as a double


% --- Executes during object creation, after setting all properties.
function editFrameRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editFrameRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editDuration_Callback(hObject, eventdata, handles)
% hObject    handle to editDuration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editDuration as text
%        str2double(get(hObject,'String')) returns contents of editDuration as a double


% --- Executes during object creation, after setting all properties.
function editDuration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editDuration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editVideoFormat_Callback(hObject, eventdata, handles)
% hObject    handle to editVideoFormat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editVideoFormat as text
%        str2double(get(hObject,'String')) returns contents of editVideoFormat as a double


% --- Executes during object creation, after setting all properties.
function editVideoFormat_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editVideoFormat (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function videoFilePathName_Callback(hObject, eventdata, handles)
% hObject    handle to videoFilePathName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of videoFilePathName as text
%        str2double(get(hObject,'String')) returns contents of videoFilePathName as a double


% --- Executes during object creation, after setting all properties.
function videoFilePathName_CreateFcn(hObject, eventdata, handles)
% hObject    handle to videoFilePathName (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in OpenVideo.
function OpenVideo_Callback(hObject, eventdata, handles)
% hObject    handle to OpenVideo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on button press in getVideoInformation.
function getVideoInformation_Callback(hObject, eventdata, handles)
% hObject    handle to getVideoInformation (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.videoFilePathName == 0
    msg('请载入视频文件！','提示信息');
    return;
end
videoInfo = VideoReader(handles.videoFilePath);
handles.videoInfo = videoInfo;
guidata(hObject,handles);%获取并保存信息。
set(handles.editFrameNum,'String',sprintf('%d',videoInfo.NumberOfFrames));
set(handles.editFrameWidth,'String',sprintf('%d px',videoInfo.Width));
set(handles.editFrameHeight,'String',sprintf('%d px',videoInfo.Height));
set(handles.editFrameRate,'String',sprintf('%d f/s',videoInfo.FrameRate));
set(handles.editDuration,'String',sprintf('%.1f s',videoInfo.Duration));
set(handles.editVideoFormat,'String',sprintf('%s',videoInfo.VideoFormat));
msgbox('获取信息成功并且已经显示！','提示信息');



% --- Executes on button press in getPictureList.
function getPictureList_Callback(hObject, eventdata, handles)
% hObject    handle to getPictureList (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if isequal(handles.videoFilePath,0)
   msgbox('该路径不存在！','错误信息');
    return;
end
I = video2Imags( handles.videoFilePath );
if I ~= 0
msgbox('已经成功生成序列文件video_images！','成功信息');
end

% --- Executes on button press in productAvi.
function productAvi_Callback(hObject, eventdata, handles)
% hObject    handle to productAvi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 videoPath = OutputVideoFile();
 if isequal(videoPath,0)
     return;
 end
 %输出文件
 imagefolder = fullfile(pwd,'video_images');
 Images2Video(imagefolder,videoPath);%将video_images文件夹中的文件转化成.avi文件并存到out文件夹中
 msgbox('导出成功！','提示信息');

% --- Executes on slider movement.
function sliderVideoPlay_Callback(hObject, eventdata, handles)
% hObject    handle to sliderVideoPlay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function sliderVideoPlay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderVideoPlay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editSlider_Callback(hObject, eventdata, handles)
% hObject    handle to editSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSlider as text
%        str2double(get(hObject,'String')) returns contents of editSlider as a double


% --- Executes during object creation, after setting all properties.
function editSlider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSlider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbuttonPlay.
function pushbuttonPlay_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonPlay (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.pushbuttonPause,'Enable','On');
set(handles.pushbuttonPause,'String','暂停');
set(handles.sliderVideoPlay,'Max',handles.videoInfo.NumberOfFrames,'Min',0,'Value',1);
set(handles.editSlider,'String',sprintf('%d\\%d',0,handles.videoInfo.NumberOfFrames));
for i = 1:handles.videoInfo.NumberOfFrames
    waitfor(handles.pushbuttonPause,'tag','pushbuttonPause');
    I = imread(fullfile(pwd,sprintf('video_images\\%03d.jpg',i)));
    try
        imshow(I,[],'Parent',handles.axesVideo);%很重要
        %设置进度条
        set(handles.sliderVideoPlay,'Value',i);
        set(handles.editSlider,'String',sprintf('%d/%d',i,handles.videoInfo.NumberOfFrames));
    catch
        return;
    end
    drawnow;
end
%播放完了之后得暂停
set(handles.pushbuttonPause,'Enable','Off');


% --- Executes on button press in pushbuttonPause.
function pushbuttonPause_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonPause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str = get(handles.pushbuttonPause,'tag');
if strcmp(str,'pushbuttonPause') == 1
    set(handles.pushbuttonPause,'tag','pushbuttonContinue','String','暂停');
    pause on;
else
    set(handles.pushbuttonPause,'tag','pushbuttonPause','String','播放');
    pause off;
end


% --- Executes on button press in pushbuttonStop.
function pushbuttonStop_Callback(hObject, eventdata, handles)
% hObject    handle to pushbuttonStop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axesVideo);
cla;axis on;box on;
set(gca,'Color',[0.7020 0.7804 1.0000]);
set(handles.editSlider,'String','0/0');
set(handles.pushbuttonPause,'tag','pushbuttonContinue','String','继续');
set(handles.pushbuttonPause,'Enable','off','String','暂停');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in openVideo.
function openVideo_Callback(hObject, eventdata, handles)
% hObject    handle to openVideo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.videoFilePath = OpenVideoFile();
guidata(hObject,handles);
set(handles.videoFilePathName,'String',handles.videoFilePath);
