function [ confusion ] = kfold_crossvalidation( data, labels, train_model, k )

    % Remember to pass functions with as @function-name
    % Designed to handle data as created by the load_in_training_data and
    % separate_into_labelled functions within this directory

    test_start = 1;
    sz = size(data,1);
    confusion = [0;0];
    
    for i = 1:k
        %split data
        test_end = ceil(i*(sz/k));
        fprintf('i = %d :  %d to %d\n',i,test_start,test_end);

        training_data = data([1:test_start-1 test_end+1:end],:);
        training_labels = labels([1:test_start-1 test_end+1:end],:);
        test_data = data(test_start:test_end,:);
        test_labels = labels(test_start:test_end,:);
        
        test_length = size(test_data,1);
        training_length = size(training_data,1);
        
        %*train model*
        model = train_model(training_data,training_labels);
        
        %*test model*
        for j = 1:test_length
            classification = model(test_data(j,:));
            
            if (abs(model(test_data(j,:)) - test_labels(j,:)) < 0.01)
                confusion(1) = confusion(1) + 1;
            else
                confusion(2) = confusion(2) + 1;
            end
        end
        test_start = test_end + 1;
    end
    
    fprintf('Correct: %d',confusion(1));
    fprintf('Incorrect: %d',confusion(2));

end

