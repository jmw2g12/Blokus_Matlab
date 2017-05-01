function [ data ] = load_in_training_data( data_cutoff )

    % This function loads the training data.
    % Data_cutoff specifies the maximum amount of data to load in, which is
    % useful for testing without waiting hours.

    data = [];
    file_name = '../Data Processing/training_data/';
    files = dir(file_name);
    num_of_fields = 9;
    count = 1;
    for file = files'
        data_size = size(data,1);
        if (mod(count,50) == 0)
            fprintf('%d used out of %d found\n',data_size,count);
        end
        if (data_size >= data_cutoff)
            return;
        end
        count = count + 1;
        if (~strcmp(file.name(1),'.'))
            try
                if (length(fieldnames(loadjson(strcat(file_name,file.name)))) == num_of_fields)
                    json = loadjson(strcat(file_name,file.name));
                    json = filter_data (json, @(x) x.num_moves(x.player) >= 8 && x.num_moves(x.player) <= 21);
                    if (json.player == 2)
                        json = invert_player(json);
                    end
                    data = [data; json];
                else
                    continue;
                end
            catch
            end
        end
    end
end