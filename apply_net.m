function [ result ] = apply_net( net, input )

    % net_size = net.layerWeights{2,1}.size(2);
    
    % need to use :
    % net.inputs{1}.processFcns = {};
    % net.outputs{2}.processFcns = {};
    % before training

    wb = getwb(net);
    [b,IW,LW] = separatewb(net,wb);
    input_weights = IW{1,:};
    input_biases = b{1};
    
    output_weights = LW{2,1};
    output_bias = b{2};

    result = [];
    for i = 1:size(input,1)
        %tansig input transfer function
        y = 2 ./ (1 + exp(-2*(input_weights * input(i,:)' + input_biases))) - 1;
        result = [result; output_weights * y + output_bias];
    end
end

