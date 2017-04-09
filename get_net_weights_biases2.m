function [ output_args ] = get_net_weights_biases2( net )
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
    
    for i = 1:layers_size+1
        temp = cell2mat(weights(i));
        save(strcat('weights',int2str(i-1),'-',int2str(i)),'temp','-ascii');
        temp = cell2mat(bias(i));
        save(strcat('bias',int2str(i-1),'-',int2str(i)),'temp','-ascii');
    end
end

