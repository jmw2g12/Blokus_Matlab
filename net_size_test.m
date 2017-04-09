% run net from startup or at least load in same data

net_size = 10;
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = 20;
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = 30;
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = 40;
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = 60;
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [10 10];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [20 20];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [30 30];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [40 40];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [60 60];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [10 10 10];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [20 20 20];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [30 30 30];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [40 40 40];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');


net_size = [60 60 60];
board_net = feedforwardnet(net_size);
board_net = train(board_net,training_boards',training_wins');
encoded_board_net = feedforwardnet(net_size);
encoded_board_net = train(encoded_board_net,training_encoded_boards',training_wins');
connectivity_net = feedforwardnet(net_size);
connectivity_net = train(connectivity_net,training_connectivity',training_wins');
fprintf('net has %d layer of size %d\n',size(net_size,1),net_size(1));
board_net_win_rate = assess_net(board_net,testing_boards, testing_wins);
encoded_board_net_win_rate = assess_net(encoded_board_net,testing_encoded_boards, testing_wins);
connectivity_net_win_rate = assess_net(connectivity_net,testing_connectivity, testing_wins);
fprintf('board win rate: %.3f\n',board_net_win_rate);
fprintf('encoded win rate: %.3f\n',encoded_board_net_win_rate);
fprintf('connectivity win rate: %.3f\n',connectivity_net_win_rate);
fprintf('----------------------------------------\n\n');