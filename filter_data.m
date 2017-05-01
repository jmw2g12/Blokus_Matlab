function [ filtered_data ] = filter_data( all_data, criteria )
    
    % Given an array of data and an anonymous function, it applies the
    % function to each element, if the result is false then the element is
    % omitted.

    filtered_data = [];
    for d = all_data'
        if (criteria(d))
            filtered_data = [filtered_data; d];
        end
    end
end

