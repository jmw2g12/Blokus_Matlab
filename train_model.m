function [ model ] = train_model( x, y )
    [net] = feedforwardnet(10);
    [net] = train(net, x', y');
    model = @(x) net(x');
end

