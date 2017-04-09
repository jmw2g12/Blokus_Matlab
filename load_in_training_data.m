function [ data ] = load_in_training_data( data_cutoff )
    data = [];
    file_name = '../Data Management/random_training/';
    files = dir(file_name);
    num_of_fields = 9; %choose value that gets most input files
    count = 1;
    for file = files'
        %disp(strcat('training/',file.name));
        data_size = size(data,1);
        if (mod(count,50) == 0)
            fprintf('%d used out of %d found\n',data_size,count);
        end
        if (data_size >= data_cutoff)
            return;
        end
        count = count + 1;
        if (~strcmp(file.name(1),'.'))
            %disp(length(fieldnames(loadjson(strcat('training/',file.name)))));
            try
                if (length(fieldnames(loadjson(strcat(file_name,file.name)))) == num_of_fields)
                    json = loadjson(strcat(file_name,file.name));
                    json = filter_data (json, @(x) x.player == 1 && x.num_moves(x.player) >= 8 && x.num_moves(x.player) <= 21);
                    data = [data; json];
                else
                    continue;
                    fprintf('wrong size file : %s\n',strcat(file_name,file.name));
                    temp = loadjson(strcat(file_name,file.name));
                    fprintf('moves = %d, %d\n',temp.num_moves(1), temp.num_moves(2));
                end
            catch
            end
        end
    end
end