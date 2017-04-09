function [ rep ] = adjust_board_representation(boards)
    rep = [];
    for i = 1:size(boards,1)
        line = [];
        for j = 1:size(boards,2)
            if (boards(i,j) == 2)
                line = [line, -1];
            else
                line = [line, boards(i,j)];
            end
        end
        rep = [rep; line];
    end
end