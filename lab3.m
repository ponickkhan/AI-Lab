 net = network; % creating blank network with the name ‘net’
 net.numInputs = 1; % number of input layers, only single input 
% layer 
 net.inputs{1}.size = 2; % two inputs in input layer
 net.numLayers = 2; % number of layers in the network, two layers
 net.layers{1}.size = 3; % three neurons in the first layer
 net.layers{2}.size = 1; % one neuron in the second layer
 net.inputConnect(1) = 1; % connecting input terminals
 net.layerConnect(2, 1) = 1; % connecting hidden layers
 net.outputConnect(2) = 1; % connecting output terminals
 net.layers{1}.transferFcn = 'logsig'; % first layer activation 
                                           %function
 net.layers{2}.transferFcn = 'purelin'; % second layer activation
                                            % function
 net.biasConnect = [ 1 ; 1]; % connecting the biases
 net.inputWeights{1,1}.initFcn = 'rands'; % randomly generated         
                               % weight values assigned in input layer
                                                                             
 net.layerWeights{1,2}.initFcn = 'rands'; % randomly generated     
                                   % weight values assigned in between 
                                    % layer 1 and layer 2 
 view(net); % view the network
