
% maximum value reached is 44,500
data_cutoff = 44500;
net_size = 30;

% comment or uncomment depending on whether data is loaded in
data = load_in_training_data(data_cutoff);

% split should be 45000 for data_cutoff of 50000
split = round(size(data,1)*(9/10));

separate_into_labelled;

training_boards = input_boards(1:split,:);
training_connectivity = input_connectivity(1:split,:);
training_encoded_boards = input_boards(1:split,:);
training_wins = input_wins(1:split,:);
%training_score_diff = input_score_diff(1:split,:);
testing_boards = input_boards(split+1:end,:);
testing_connectivity = input_connectivity(split+1:end,:);
testing_encoded_boards = input_boards(split+1:end,:);
testing_wins = input_wins(split+1:end,:);
%testing_score_diff = input_score_diff(split+1:end,:);



board_net = feedforwardnet(net_size);
board_net.inputs{1}.processFcns = {};
board_net.outputs{board_net.numLayers}.processFcns = {};
board_net = train(board_net,training_boards',training_wins');

encoded_board_net = feedforwardnet(net_size);
encoded_board_net.inputs{1}.processFcns = {};
encoded_board_net.outputs{encoded_board_net.numLayers}.processFcns = {};
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');

connectivity_net = feedforwardnet(net_size);
connectivity_net.inputs{1}.processFcns = {};
connectivity_net.outputs{connectivity_net.numLayers}.processFcns = {};
connectivity_net = train(connectivity_net,training_connectivity',training_wins');

board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
