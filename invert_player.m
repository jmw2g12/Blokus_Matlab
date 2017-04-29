function [ new_strct ] = invert_player( strct )
    new_strct = strct;
    for i = 1:size(new_strct.board,1)
        for j = 1:size(new_strct.board,1)
            if (new_strct.board(i,j) == 2)
                new_strct.board(i,j) = 1;
            elseif (new_strct.board(i,j) == 1)
                new_strct.board(i,j) = 2;
            end
        end
    end
    new_strct.board = new_strct.board';
    if (new_strct.player == 1)
        new_strct.player = 2;
    elseif (new_strct.player == 2)
        new_strct.player = 1;
    end
    new_strct.num_moves = [new_strct.num_moves(2), new_strct.num_moves(1)];
    new_strct.score = [new_strct.score(2), new_strct.score(1)];
    new_strct.final_score = [new_strct.final_score(2), new_strct.final_score(1)];
end

