for i = 4:11
    assignment = strcat('won',int2str(i),' = filter_data(moves',int2str(i),',@(x) x.won==1);');
    disp(assignment);
    eval(assignment);
    assignment = strcat('lost',int2str(i),' = filter_data(moves',int2str(i),',@(x) x.won==0);');
    disp(assignment);
    eval(assignment);
end