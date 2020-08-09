close all; 
clear all; 
clc
format compact;

N = 20; % number of samples of each class

% define inputs and outputs
offset = 5; % offset for second class
x = [randn(2,N) randn(2,N)+offset]; % inputs
y = [zeros(1,N) ones(1,N)]; % outputs

% Plot input samples with PLOTPV (Plot perceptron input/target %vectors)
figure(1)
plotpv(x,y);
net = perceptron;
net = train(net,x,y);
view(net);
figure(1)
plotpc(net.IW{1},net.b{1});
