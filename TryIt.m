function varargout = TryIt(varargin)
% TRYIT MATLAB code for TryIt.fig
%      TRYIT, by itself, creates a new TRYIT or raises the existing
%      singleton*.
%
%      H = TRYIT returns the handle to a new TRYIT or the handle to
%      the existing singleton*.
%
%      TRYIT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRYIT.M with the given input arguments.
%
%      TRYIT('Property','Value',...) creates a new TRYIT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TryIt_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TryIt_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TryIt

% Last Modified by GUIDE v2.5 06-Jul-2018 21:19:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TryIt_OpeningFcn, ...
                   'gui_OutputFcn',  @TryIt_OutputFcn, ...
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


% --- Executes just before TryIt is made visible.
function TryIt_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TryIt (see VARARGIN)

% Choose default command line output for TryIt
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TryIt wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TryIt_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=gcf;
main;
close(h);


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str=get(handles.edit1,'String');
str=str{1};
n=length(str);
fs=32000;
for index=1:n
    if(str(index)=='1')
        m(index,:)=key2(60,fs);
        k(index,:)=key(60,4,fs);
    elseif(str(index)=='2')
        m(index,:)=key2(62,fs);
        k(index,:)=key(62,4,fs);
    elseif(str(index)=='3')
        m(index,:)=key2(64,fs);
        k(index,:)=key(64,4,fs);
    elseif(str(index)=='4')
        m(index,:)=key2(65,fs);
        k(index,:)=key(65,4,fs);
    elseif(str(index)=='5')
        m(index,:)=key2(67,fs);
        k(index,:)=key(67,4,fs);
    elseif(str(index)=='6')
        m(index,:)=key2(69,fs);
        k(index,:)=key(69,4,fs);
    elseif(str(index)=='7')
        m(index,:)=key2(71,fs);
        k(index,:)=key(71,4,fs);
    end    
end
song2=[m(1,:) m(2,:) m(3,:) m(4,:) m(5,:) m(6,:) m(7,:) m(8,:) m(9,:)];
song3=[k(1,:) k(2,:) k(3,:) k(4,:) k(5,:) k(6,:) k(7,:) k(8,:) k(9,:)];
soundsc(song3,32000);
axes(handles.axes1);
plot(song2);
%%fft
N=4096;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(song2,N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));  %绘出Nyquist频率之前随频率变化的振幅
axis([0,1000,0,200]);
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');
