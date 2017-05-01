function [ model ] = train_model( x, y )
    [net] = feedforwardnet(20);
    [net] = train(net, x', y');
    model = @(x) net(x');
end

