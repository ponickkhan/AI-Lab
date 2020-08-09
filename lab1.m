 x=[3 2 6]; % input values
 w=[0.5 0.6 0.1]; % weight values
 b=-1.0; % bias
 v=x*w';+b; % activation potential
 func='hardlim'; % activation function
 y=feval(func,v); % output calculation
 y