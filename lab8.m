close all, clear all  clc, format compact

% generate data
[X,Xtrain,Ytrain,fig] = data_generator();
%---------------------------------

% no hidden layers
net = feedforwardnet([]);

% % one hidden layer with linear transfer functions
% net = feedforwardnet([10]);
% net.layers{1}.transferFcn = 'purelin';
% set early stopping parameters
net.divideParam.trainRatio = 1.0; % training set [%]
net.divideParam.valRatio = 0.0; % validation set [%]
net.divideParam.testRatio = 0.0; % test set [%]

% train a neural network
net.trainParam.epochs = 200;
net = train(net,Xtrain,Ytrain);
%---------------------------------

% view net
view (net)

% simulate a network over complete input range
Y = net(X);

% plot network response
figure(fig)
plot(X,Y,'color',[1 .4 0])
legend('original function','available data','Linear regression','location','northwest')
% generate data
[X,Xtrain,Ytrain,fig] = data_generator();
%---------------------------------

% choose a spread constant
spread = .4;

% create a neural network
net = newrbe(Xtrain,Ytrain,spread);
%---------------------------------

% view net
view (net)
% simulate a network over complete input range
Y = net(X);

% plot network response
figure(fig)
plot(X,Y,'r')
legend('original function','available data','Exact RBFN','location','northwest')