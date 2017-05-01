
% Requires data to have already been loaded in via load_in_training_data
% function. This happens automatically in net_from_startup.

input_boards = [];
for i = data'
    input_boards = cat(1,input_boards,reshape(i.board,[],1)');
end
%fprintf('finished boards\n');

input_wins = [];
for i = data'
    input_wins = cat(1,input_wins,i.won);
end
%fprintf('finished wins\n');

input_encoded_boards = one_of_n_encoding(input_boards);
%fprintf('finished encoded boards\n');

input_neg_opp_boards = twos_to_minus_ones(input_boards);
%fprintf('finished negative opponent boards\n');