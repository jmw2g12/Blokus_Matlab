for i = 4:11
    assignment = strcat('moves',int2str(i),' = filter_data(split_data,@(x) x.num_moves(x.player)==',int2str(i),');');
    disp(assignment);
    eval(assignment);
end
