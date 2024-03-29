%Modified from codes found at BIO. AND MED. ENGG, UTM
%ECG real time plotter
%Please close the graph to exit the session
clear
clc
%User Defined Properties
serialPort = 'COM1'; % please change the port to your arduino port as in Arduino IDE
plotTitle = 'Real Time ECG'; % plot title
xLabel = 'Elapsed Time (s)'; % x-axis label
yLabel = 'Data'; % y-axis label
plotGrid = 'on'; % 'off' to turn off grid
min = -1; % set y-min
max = 1024; % set y-max
scrollWidth = 5; % display period in plot, plot entire data log if <= 0
delay = 0.001; % make sure sample faster than resolution
%Define Function Variables
time = 0;
data = 0;
count = 0;
%Set up Plot
plotGraph = plot(time,data);
title(plotTitle,'FontSize',25);
xlabel(xLabel,'FontSize',15);
ylabel(yLabel,'FontSize',15);
axis([0 10 min max]);
grid(plotGrid);
%Open Serial COM Port
s = serial(serialPort,'BaudRate',9600)
disp('Please Close Graph to End Session');
fopen(s);
flushinput(s);
tic
while ishandle(plotGraph) %Loop when Plot is Active
dat = fscanf(s,'%f'); %Read Data from Serial as Float
if(~isempty(dat) && isfloat(dat)) %Make sure Data Type is Correct
count = count + 1;
time(count) = toc; %Extract Elapsed Time
data(count) = dat(1); %Extract 1st Data Element Set Axis according to Scroll Width
set(plotGraph,'XData',time(time > time(count)- scrollWidth),'YData',data(time > time(count)-scrollWidth));
axis([time(count)-scrollWidth time(count) min max]);
%Allow MATLAB to Update Plot
pause(delay);
end
end
%Close Serial COM Port and Delete useless Variables
fclose(s);
clear count dat delay max min plotGraph plotGrid plotTitle s scrollWidth serialPort xLabel yLabel;
disp('Session Terminated...');
