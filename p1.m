% n = -1:0.1:1;
% plot(n,hardlim(n),'b');
% hold on;
% plot(n,purelin(n),'r');
% plot(n,logsig(n),'k');
% hold off;
% a = purelin(Wp+b)
%% Simple Layer
net = newlin([1 3;1 3],1); % Initiate neural network layer
net.IW{1,1} = [1 2]; % SET WEIGHTS
net.b{1} = 0; % SET BIAS
P = [1 2 2 3; 2 1 3 1];
A = sim(net,P)
%% Time Delay Layer
net = newlin([-1 1],1,[0 1]);
net.biasConnect = 0;
net.IW{1,1} = [1 2];
P = [1 2 3 4]
A2 = sim(net,P)


