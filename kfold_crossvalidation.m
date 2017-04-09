function [ confusion ] = kfold_crossvalidation( data, labels, train_model, k )
    test_start = 1;
    sz = size(data,1);
    %confusion = [0,0;0,0];
    confusion = [0;0];
    %data_length = size(data,2);
    %idx = randperm(data_length);
    %data = data(idx);
    %labels = labels(idx);
    
    for i = 1:k
    %for i = 1:1
        test_end = ceil(i*(sz/k));
        fprintf('i = %d :  %d to %d\n',i,test_start,test_end);

        training_data = data([1:test_start-1 test_end+1:end],:);
        training_labels = labels([1:test_start-1 test_end+1:end],:);
        test_data = data(test_start:test_end,:);
        test_labels = labels(test_start:test_end,:);
        
        test_length = size(test_data,1);
        training_length = size(training_data,1);

        %

        %*train model*
        model = train_model(training_data,training_labels);
        
        %*test model*
        for j = 1:test_length
            classification = model(test_data(j,:));
            fprintf('j = %d\n',j);
            
            fprintf('guess for testing data %d is %f\n',test_data(j,:),classification);
            if (abs(model(test_data(j,:)) - test_labels(j,:)) < 0.01)
                confusion(1) = confusion(1) + 1;
                fprintf('this is within bounds\n');
            else
                confusion(2) = confusion(2) + 1;
                fprintf('this is NOT within bounds\n');
            end
        end
        fprintf('\nhere\n');
        %
        test_start = test_end + 1;
    end

end

