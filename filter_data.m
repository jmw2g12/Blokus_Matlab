function [ filtered_data ] = filter_data( all_data, criteria )
    filtered_data = [];
    for d = all_data'
        if (criteria(d))
            filtered_data = [filtered_data; d];
        end
    end
end

