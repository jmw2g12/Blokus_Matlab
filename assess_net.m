function [ rate, results ] = assess_net( net, testing_data, testing_labels )

    % Assesses rounded prediction of win or loss
    % 50% correctness rate is as good as pure random
    
    outputs = net(testing_data')';
    results = [testing_labels - outputs, abs(testing_labels - outputs) < 0.5];
    rate = sum(results(:,2))/size(results,1);
    
end

