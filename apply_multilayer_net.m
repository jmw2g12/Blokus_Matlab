function [ result, weights, bias ] = apply_multilayer_net( net, input )
    
    % Testing function for the neural network application formula.
    
    % need to use :
    % net.inputs{1}.processFcns = {};
    % net.outputs{2}.processFcns = {};
    % before training
    
    layers_size = net.numLayers-1;
    disp(layers_size);

    wb = getwb(net);
    [b,IW,LW] = separatewb(net,wb);
    
    weights = [IW(1,:)];
    bias = [b(1)];
    for j = 1:layers_size
        weights = [weights; LW(j+1,j)];
        bias = [bias; b(j+1)];
    end

    result = [];
    for i = 1:size(input,1)
        y = input(i,:)';
        for j = 1:layers_size+1
            if (j > layers_size)
                y = weights{j} * y + bias{j};
            else
                y = 2 ./ (1 + exp(-2 * (weights{j} * y + bias{j}))) - 1;
            end
        end
        result = cat(1, result, y);
    end
end

