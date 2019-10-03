# ECG_Arduino_Matlab
Real time ECG data acquision using Arduino and AD8232 (Heart rate sensor module)

Equipment:
a) MATLAB Software
b) Arduino IDE
c) Arduino Mega ADK (Any arduino board is okay) and USB cable
d) AD8232 Heart rate sensor module
e) ECG cable
f) ECG electrodes

Implementation:

Hardware setup:
A. Connect the AD8232 Heart rate sensor module to the Arduino Mega ADK with the following pin connections:

AD8232 (3.3V,Gnd,Output) pins with Arduino Mega ADK (3.3V, Gnd, A0) pin resperctively.       
          
B. Connect the ECG cable with the following connection:

ECG Cable Color (Black, Blue, Red) with Right Arm,Left Arm, Right Leg. 

Software setup:

A. Write the Arduino codes (.ino) in Arduino IDE and upload the codes to the Arduino Mega ADK (any arduino).

B. Write the matlab codes0 (M-File) in matlab software and Run the M-File by clicking Debug and run.

C. In order to exit the session, close the plotting graph.
