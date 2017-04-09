function [ encoding ] = one_of_n_encoding(boards)
    encoding = [];
    fprintf('There are %d boards\n',size(boards,1));
    fprintf('Which are of size %d\n\n',size(boards,2));
    for i = 1:size(boards,1)
        line = [];
        for j = 1:size(boards,2)
            if (boards(i,j) == 0)
                line = [line, 1, 0, 0];
            elseif (boards(i,j) == 1)
                line = [line, 0, 1, 0];
            elseif (boards(i,j) == 2)
                line = [line, 0, 0, 1];
            end
        end
        encoding = [encoding; line];
    end
end