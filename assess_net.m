function [ rate, results ] = assess_net( net, testing_data, testing_labels )
    outputs = net(testing_data')';
    results = [testing_labels - outputs, abs(testing_labels - outputs) < 0.5];
    rate = sum(results(:,2))/size(results,1);
end

