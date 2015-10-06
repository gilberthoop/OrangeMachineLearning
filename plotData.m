function plotData(x, y)
%PLOTDATA Plots the data points x and y into a new figure 
%   PLOTDATA(x,y) plots the data points and gives the figure axes labels of
%   population and profit.


figure; % open a new figure window

% Plot the training data and set the axes labels
plot(x, y, 'rx', 'MarkerSize', 10);
ylabel('Pectin amount in ppm');
xlabel('Sweetness index');






% ============================================================

end
