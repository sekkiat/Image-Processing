function varargout = signature(varargin)
% SIGNATURE MATLAB code for signature.fig
%      SIGNATURE, by itself, creates a new SIGNATURE or raises the existing
%      singleton*.
%
%      H = SIGNATURE returns the handle to a new SIGNATURE or the handle to
%      the existing singleton*.
%
%      SIGNATURE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIGNATURE.M with the given input arguments.
%
%      SIGNATURE('Property','Value',...) creates a new SIGNATURE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before signature_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to signature_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help signature

% Last Modified by GUIDE v2.5 21-Mar-2018 18:35:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @signature_OpeningFcn, ...
                   'gui_OutputFcn',  @signature_OutputFcn, ...
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

% --- Executes just before signature is made visible.
function signature_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to signature (see VARARGIN)

% Choose default command line output for signature
guidata(hObject, handles);

% UIWAIT makes signature wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = signature_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure




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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%fullfile - build full filename form part
global filename;
sample_image_folder = fullfile('C:\Users\Romeo VaVa\Desktop\');
%imgetfile - opent the image file dialog
[filename,user_canceled] = imgetfile('InitialPath',sample_image_folder);
set(handles.text3, 'String', "Image Path: "+filename);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and us  er data (see GUIDATA)
global filename2;
sample_image_folder = fullfile('C:\Users\Romeo VaVa\Desktop\');
%imgetfile - opent the image file dialog
[filename2,user_canceled] = imgetfile('InitialPath',sample_image_folder);
set(handles.text4, 'String', "Image Path: "+filename2);

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global rotated;
global rotated2;
compare(rotated,rotated2,handles);

% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listbox3.
function listbox3_Callback(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox3


% --- Executes during object creation, after setting all properties.
function listbox3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
 
% --- Compare
function p = compare(rotated,rotated2,handles)
%p1=detectHarrisFeatures(rotated);
%p2=detectHarrisFeatures(rotated2);
%[ff1,valid_p1]=extractFeatures(rotated,p1);
%[ff2,valid_p2]=extractFeatures(rotated2,p2);
%indexp=matchFeatures(ff1,ff2);
%mp1=valid_p1(indexp(:,1));
%mp2=valid_p2(indexp(:,2));
%figure;
%ax=axes;
%showMatchedFeatures(rotated,rotated2,mp1,mp2,'Parent',ax);
%legend(ax,'Corner match1','Corner match2');
%display(legend)
%pause;
point1=detectSURFFeatures(rotated);
point2=detectSURFFeatures(rotated2);
[f1,vpts1]=extractFeatures(rotated,point1);
[f2,vpts2]=extractFeatures(rotated2,point2);
indexPairs=matchFeatures(f1,f2);
disp("Match Features");
disp(indexPairs);
matchedPoints1=vpts1(indexPairs(:,1));
matchedPoints2=vpts2(indexPairs(:,2));
figure;
ax=axes;
showMatchedFeatures(rotated,rotated2,matchedPoints1,matchedPoints2,'Parent',ax);
legend(ax,'Matched points 1','Matched points 2');
display(legend)
if(length(indexPairs)>3)
title(['\fontsize{16}{\color{magenta}Match }']);
else
title(['\fontsize{16}{\color{red}Not Match }']);
end


% --- Rotate
function p = rotate(I3)
%extracting the black pixels
k=1;
for i=1:128
    for j=1:128
        if(I3(i,j)==0)
            u(k)=i;
            v(k)=j;
            k=k+1;
            I3(i,j)=1;
        end
    end
end
C=[u;v];%the curve of the signature
N=k-1;%the number of pixels in the signature
oub=sum(C(1,:))/N;   %the original x co-ordinate center of mass of the image
ovb=sum(C(2,:))/N;   %the original y co-ordinate center of mass of the image



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%********ROTATE******%%%%%%%%%%%%%%%%%%%%%%%%
%moving the signature to the origin
for i=1:N
    u(i)=u(i)-oub+1;
    v(i)=v(i)-ovb+1;
end
% the new curve of the signature
C=[u;v];

ub=sum(C(1,:))/N;
vb=sum(C(2,:))/N;
ubSq=sum((C(1,:)-ub).^2)/N;
vbSq=sum((C(2,:)-vb).^2)/N;
 
for i=1:N
    uv(i)=u(i)*v(i);
end

uvb=sum(uv)/N;
M=[ubSq uvb;uvb vbSq]
%calculating minimum igen value of the matrix
minIgen=min(abs(eig(M)))
%the eigen vector
MI=[ubSq-minIgen uvb;uvb vbSq-minIgen]
theta=(atan((-MI(1))/MI(2))*180)/pi


thetaRad=(theta*pi)/180;
rotMat=[cos(thetaRad) -sin(thetaRad);sin(thetaRad) cos(thetaRad)];
%% rotating the signature and passing the new co-ordinates
for i=1:N
    v(i)=(C(2,i)*cos(thetaRad))-(C(1,i)*sin(thetaRad));
    u(i)=(C(2,i)*sin(thetaRad))+(C(1,i)*cos(thetaRad));
end
C=[u;v];
%moving the signature to its original position

for i=1:N
    u(i)=round(u(i)+oub-1);
    v(i)=round(v(i)+ovb-1);
end

%after rotating the image the signature might go out of the boundry (128x128) therefore 
%we have to move the signature curve 
mx=0;%the moving x co-ordinate
my=0;%the moving y co-ordinate

if (min(u)<0)
    mx=-min(u)
    for i=1:N
        u(i)=u(i)+mx+1;
    end
end

if (min(v)<0)
    my=-min(v)
    for i=1:N
        v(i)=v(i)+my+1;
    end
end

C=[u;v];

for i=1:N
    I3((u(i)),(v(i)))=0;
end

%%%%%%%%%%%%%%%%%%%%%%%****DRWING THE BOUNDRY BOX*****%%%%%%%%%%%%%%%%%%%%
%getting the margins
xstart=128;
xend=1;
ystart=128;
yend=1;

for r=1:128
    for c=1:128
        if((I3(r,c)==0))
            if (r<ystart)
                ystart=r;
            end
            if((r>yend))
                yend=r; 
            end
            if (c<xstart)
                xstart=c;
            end
            if (c>xend)
                xend=c;
            end     
       end  
    end
end
%cutting the image and copying it to another matrix        
for i=ystart:yend
    for j=xstart:xend
        im((i-ystart+1),(j-xstart+1))=I3(i,j);
    end
end

p=im;

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
global rotated;
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename;
%read the image
I=imread(filename);
%rescale the size of the picture
%[row,col] - column
I2=imresize(I,[128 ,128]);
%create figure graphic object (window)
%change to gray
I7=rgb2gray(I2);
%noise removal
%I4=medfilt2(I7);
I3=im2double(I7);
%convert to black and white
I5=im2bw(I3);
%object to line
I3=bwmorph(~I5,'thin',inf);
%change back to white
I6=~I3;
rotated=rotate(I6);
figure('rend','painters','pos',[10 10 900 600]);
%gcf - get the current handle
set(gcf, 'name', 'Picture 1');
subplot(1,5,1);
%show the picture
imshow(I2);
title('Original');
subplot(1,5,2);
imshow(I7);
title('Gray');
%subplot(1,6,3);
%imshow(I4);
%title('Noise.R');
subplot(1,5,3);
imshow(I5);
title('B&W');
subplot(1,5,4);
imshow(I6);
title('Thin');
subplot(1,5,5);
imshow(rotated);
title('Rotated');


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
global rotated2;
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global filename2;
%read the image
A=imread(filename2);
%rescale the size of the picture
%[row,col] - column
A2=imresize(A,[128 ,128]);
%create figure graphic object (window)
%change to gray
A7=rgb2gray(A2);
%noise removal
%A4=medfilt2(A7);
A3=im2double(A7);
%convert to black and white
A5=im2bw(A3);
%object to line
A3=bwmorph(~A5,'thin',inf);
%change back to white
A6=~A3;
rotated2=rotate(A6);
figure('rend','painters','pos',[10 10 900 600]);
%gcf - get the current handle
set(gcf, 'name', 'Picture 1');
subplot(1,5,1);
%show the picture
imshow(A2);
title('Original');
subplot(1,5,2);
imshow(A7);
title('Gray');
%subplot(1,6,3);
%imshow(A4);
%title('Noise.R');
subplot(1,5,3);
imshow(A5);
title('B&W');
subplot(1,5,4);
imshow(A6);
title('Thin');
subplot(1,5,5);
imshow(rotated2);
title('Rotated');
