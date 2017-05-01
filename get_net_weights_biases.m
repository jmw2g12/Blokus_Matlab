function [sz, wts, bs] = get_net_weights_biases( net, save )
    
    % Obtains the values that are required for neural network application
    % Saving the values is not necessary for the current Java network
    % implementation. 

    layers_size = net.numLayers-1;

    wb = getwb(net);
    [b,IW,LW] = separatewb(net,wb);
    
    wts = [];
    bs = [];
    
    weights = [IW(1,:)];
    bias = [b(1)];
    for j = 1:layers_size
        weights = [weights; LW(j+1,j)];
        bias = [bias; b(j+1)];
    end
    
    for i = 1:layers_size+1
        temp = cell2mat(weights(i));
        wts = cat(1,wts,weights(i));
        if (save) 
            save(strcat('weights',int2str(i-1),'-',int2str(i)),'temp','-ascii');
        end
        
        
        temp = cell2mat(bias(i));
        bs = cat(1,bs,bias(i));
        if (save) 
            save(strcat('bias',int2str(i-1),'-',int2str(i)),'temp','-ascii');
        end
    end
    temp = cell2mat(net.layers.size);
    temp = temp(1:layers_size);
    temp = [net.inputs{1}.size; temp; net.outputs{net.numLayers}.size];
    sz = temp;
    if (save) 
        save('net_size','temp','-ascii');
    end
end

