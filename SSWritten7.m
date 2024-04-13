%% Signals and Systems Written Homework #7
%% Introduction
% * Author:                   Will Burgess
% * Class:                    ESE 351
% * Date:                     Created 4/12/2024, Last Edited 4/16/2024
%% Variable Initialization

close all 
clc

%% 1.iv.i : Lowpass RC LCCDE

%Lowpass
tau = 0.01; 
samplePeriod = 0.1; 

a = [1,1/tau];
b = 1/tau;

sys = tf(b, a, samplePeriod);
% plot
figure, hold on
bode(sys);
title('Bode plot for RC LoPass Coefficients')

hold off
%% 1.iv.ii : HiPass RC LCCDE 
%Hipass
tau = 0.01; 
samplePeriod = 0.1; 

a = [1, 1/tau] ;
b = [1,0];

sys = tf(b, a, samplePeriod);
% plot
figure, hold on
bode(sys);
title('Bode plot for RC HiPass Coefficients')
hold off

%% 1.iv.iii: Mass spring damper system
a = [1, 2*0.5*2, 2^2];
b = 1;

sys = tf(b, a);

%Plot
figure, hold on
bode(sys);
title('Bode plot for Mass Spring Damper System');
hold off
%% 1.iv.iv : 2nd order system with 2 zeros

sys = tf([1,2,1], [1,20,100]);

%Plot
figure, hold on
bode(sys);
title('Bode plot of 2nd order system with 2 Zeros');
hold off