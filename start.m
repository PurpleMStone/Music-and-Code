function varargout = start(varargin)
% START MATLAB code for start.fig
%      START, by itself, creates a new START or raises the existing
%      singleton*.
%
%      H = START returns the handle to a new START or the handle to
%      the existing singleton*.
%
%      START('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in START.M with the given input arguments.
%
%      START('Property','Value',...) creates a new START or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before start_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to start_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help start

% Last Modified by GUIDE v2.5 05-Jul-2018 23:39:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @start_OpeningFcn, ...
                   'gui_OutputFcn',  @start_OutputFcn, ...
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


% --- Executes just before start is made visible.
function start_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to start (see VARARGIN)

% Choose default command line output for start
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes start wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = start_OutputFcn(hObject, eventdata, handles) 
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
global fs
fs=32000;
do_1=key(60,4,fs);
soundsc(do_1,fs);
axes(handles.axes1);
plot(key2(60,fs));
axis([0,120,-0.4,0.4]);

%%fft
N=128;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(key2(60,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));    %绘出随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs=32000;
re_1=key(62,4,fs);
soundsc(re_1,fs);
axes(handles.axes1);
plot(key2(62,fs));
axis([0,120,-0.4,0.4]);
%%fft
N=128;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(key2(62,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));  %绘出Nyquist频率之前随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs=32000;
mi_1=key(64,4,fs);
soundsc(mi_1,fs);
axes(handles.axes1);
plot(key2(64,fs));
axis([0,120,-0.4,0.4]);
%%fft
N=128;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(key2(64,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));  %绘出Nyquist频率之前随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs=32000;
fa_1=key(65,4,fs);
soundsc(fa_1,fs);
axes(handles.axes1);
plot(key2(65,fs));
axis([0,120,-0.4,0.4]);
%%fft
N=128;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(key2(65,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));  %绘出Nyquist频率之前随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs=32000;
so_1=key(67,4,fs);
soundsc(so_1,fs);
axes(handles.axes1);
plot(key2(67,fs));
axis([0,120,-0.4,0.4]);
%%fft
N=128;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(key2(67,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2)); %绘出Nyquist频率之前随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs=32000;
la_1=key(69,4,fs);
soundsc(la_1,fs);
axes(handles.axes1);
plot(key2(69,fs));
axis([0,120,-0.4,0.4]);
%%fft
N=128;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(key2(69,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));  %绘出Nyquist频率之前随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs=32000;
ti_1=key(71,4,fs);
soundsc(ti_1,fs);
axes(handles.axes1);
plot(key2(71,fs));
axis([0,120,-0.4,0.4]);
%%fft
N=128;   %采样频率和数据点数
n=0:N-1;   %时间序列
y=fft(key2(71,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));  %绘出Nyquist频率之前随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global fs
fs=32000;
do2_q=key(72,4,fs);
soundsc(do2_q,fs);
axes(handles.axes1);
plot(key2(72,fs));
axis([0,120,-0.4,0.4]);
%%fft
N=128;   %采样频率和数据点数
n=0:1:N-1;   %时间序列
y=fft(key2(72,fs),N);    %对信号进行快速Fourier变换
mag=abs(y);     %求得Fourier变换后的振幅
f=n*fs/N;    %频率序列
axes(handles.axes2);
plot(f(1:N/2),mag(1:N/2));  %绘出Nyquist频率之前随频率变化的振幅
xlabel('frequency/Hz');
ylabel('magnitude');title('N=128');


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h=gcf;
main;
close(h);