

% This script is used to generate three kinds of neural network, each using
% a different representation for the board.


data_cutoff = 94500;
net_size = 10;

% comment or uncomment depending on whether data is already loaded in
data = load_in_training_data(data_cutoff);
if (size(data,1) == 0)
    fprintf('No data was found in directory: ../Data Processing/training_data\n');
    return;
end

% split should be 45000 for data_cutoff of 50000
split = round(size(data,1)*(9/10));

separate_into_labelled;

training_boards = input_boards(1:split,:);
training_encoded_boards = input_encoded_boards(1:split,:);
training_neg_opp_boards = input_neg_opp_boards(1:split,:);
training_wins = input_wins(1:split,:);
testing_boards = input_boards(split+1:end,:);
testing_encoded_boards = input_encoded_boards(split+1:end,:);
testing_neg_opp_boards = input_neg_opp_boards(split+1:end,:);
testing_wins = input_wins(split+1:end,:);


board_net = feedforwardnet(net_size);
board_net.inputs{1}.processFcns = {};
board_net.outputs{board_net.numLayers}.processFcns = {};
board_net = train(board_net,training_boards',training_wins');

encoded_board_net = feedforwardnet(net_size);
encoded_board_net.inputs{1}.processFcns = {};
encoded_board_net.outputs{encoded_board_net.numLayers}.processFcns = {};
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');

neg_opp_board_net = feedforwardnet(net_size);
neg_opp_board_net.inputs{1}.processFcns = {};
neg_opp_board_net.outputs{neg_opp_board_net.numLayers}.processFcns = {};
neg_opp_board_net = train(neg_opp_board_net,training_neg_opp_boards',training_wins');

board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
neg_opp_board_net_win_rate = assess_net(neg_opp_board_net,testing_neg_opp_boards, testing_wins);
