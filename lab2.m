%Implementation of simple neural networks with array of inputs and array of weights and plotting input versus output

 x=[-25;0.1;+25]; % array of input values
 w=[-1.0;0.04;+1.0]; % & array of weight values
 b=-1.0; % bias
 v=x(:)*w(:)'+b; % activation potential
 func='logsig'; % activation function
 y=feval(func,v); % output calculation
 y
 plot(x,y); % plotting input versus output
 xlabel('Input Vector'); % labeling horizontal axis
 ylabel('Output Vector'); % labeling vertical axis
