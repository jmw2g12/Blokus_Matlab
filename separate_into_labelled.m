%load_in_training_data

input_boards = [];
for i = data'
    input_boards = cat(1,input_boards,reshape(i.board,[],1)');
end
fprintf('finished boards\n');

input_wins = [];
for i = data'
    input_wins = cat(1,input_wins,i.won);
end
fprintf('finished wins\n');

input_connectivity = get_connectivity_input_matrix(data);
fprintf('finished connectivity matrix\n');

input_encoded_boards = one_of_n_encoding(input_boards);
fprintf('finished encoded boards\n');