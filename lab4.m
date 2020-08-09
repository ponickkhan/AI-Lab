x=[0 0 1 1; 0 1 0 1]; % two inputs in XOR gate
t=[0 1 1 0]; % target outputs
or_net=perceptron; % creating perceptron
or_net=train(or_net, x, t); % training the perceptron for given  
                                 % input and target output
view(or_net); % display the perceptron
y=or_net(x); % calculate the outputs for given inputs 
y % showing the outputs calculated
