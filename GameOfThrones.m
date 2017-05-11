clear;

Fs = 8000;
Ts = 1/Fs; % Frequencia de Amostragem
metronomo = 168;
semibrevi = 4*60/metronomo;
minima = 2*60/metronomo;
seminima = 1*60/metronomo;
colcheia = 0.5*60/metronomo;


% parte 1
g41  = sin(2*pi*392*(0:Ts:seminima));
c41  = sin(2*pi*261.6*(0:Ts:seminima));
d441  = sin(2*pi*311.1*(0:Ts:colcheia));
f41 = sin(2*pi*349.2*(0:Ts:colcheia));

% parte 2
g42  = sin(2*pi*392*(0:Ts:seminima));
c42  = sin(2*pi*261.6*(0:Ts:seminima));
e42  = sin(2*pi*329.6*(0:Ts:colcheia));
f42 = sin(2*pi*349.2*(0:Ts:colcheia));

% parte 3
g33 = sin(2*pi*196*(0:Ts:semibrevi));
c33 = sin(2*pi*130.8*(0:Ts:semibrevi));
d333 = sin(2*pi*155.6*(0:Ts:colcheia));
f33 = sin(2*pi*174.6*(0:Ts:colcheia));
g33g = sin(2*pi*196*(0:Ts:minima));
c33g = sin(2*pi*130.8*(0:Ts:minima));

% parte 4
d44 = sin(2*pi*293.7*(0:Ts:seminima));
g34 = sin(2*pi*196*(0:Ts:seminima));
a334 = sin(2*pi*233.1*(0:Ts:colcheia));
c44 = sin(2*pi*261.6*(0:Ts:colcheia));

% parte 5
d45 = sin(2*pi*293.7*(0:Ts:seminima));
g35 = sin(2*pi*196*(0:Ts:seminima));
a335m = sin(2*pi*233.1*(0:Ts:seminima));
f35g = sin(2*pi*174.6*(0:Ts:minima));
a225 = sin(2*pi*116.5*(0:Ts:semibrevi));
d335 = sin(2*pi*155.6*(0:Ts:colcheia));
d35 = sin(2*pi*146.8*(0:Ts:colcheia));
f35m = sin(2*pi*174.6*(0:Ts:seminima));
c35 = sin(2*pi*130.8*(0:Ts:seminima));
g335 = sin(2*pi*207.7*(0:Ts:colcheia));
a335p = sin(2*pi*233.1*(0:Ts:colcheia));
c45 = sin(2*pi*261.6*(0:Ts:seminima));

%parte 6
g226 = sin(2*pi*207.7*(0:Ts:colcheia));
a226 = sin(2*pi*233.1*(0:Ts:colcheia));
c36 = sin(2*pi*261.6*(0:Ts:seminima));
f26 = sin(2*pi*174.6*(0:Ts:seminima));
g226m = sin(2*pi*207.7*(0:Ts:seminima));
g36g= sin(2*pi*392*(0:Ts:minima));
c36g = sin(2*pi*261.6*(0:Ts:minima));
d336 = sin(2*pi*311.1*(0:Ts:colcheia));
f36 = sin(2*pi*349.2*(0:Ts:colcheia));
d36 = sin(2*pi*293.7*(0:Ts:seminima));

% formando acordes
parte1 = [g41, c41, d441, f41];
parte2 = [g42, c42, e42, f42];
parte3 = [g33, c33, d333, f33, g33g, c33g, d333, f33];
parte4 = [d44, g34, a334, c44];
parte5 = [d45, g35, a335m, f35g, a225, d335, d35, f35m, a225, d335, d35, c35, g335, a335p, c45];
parte6 = [g226, a226, c36, f26, g226, a226, c36, f26, g226, a226, c36, f26, g226m, g36g, c36g, d336, f36, g36g, c36g, d336, f36, d36];

% formando musica
got = [parte1, parte1, parte1, parte2, parte2, parte2, parte3, parte4, parte4, parte4, parte5, parte6];


sound(got);
