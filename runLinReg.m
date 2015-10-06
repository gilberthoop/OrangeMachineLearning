%% COMP 455 Term Project: Machine Learning

%  Instructions
%  ------------
% 
%  This file contains code that makes use of the linear regression
%  to solve and present my Machine Learning project about predicting
%  the Pectin amount (ppm) of an orange juice based on the sweetness level
%  measured during 24 productions at a juice manfacturer plant. 

%  TO PERFORM LINEAR REGRESSION,
%  THIS OCTAVE FILE NEEDS THE FOLLOWING FILE and FUNCTION:

%     juiceData.txt
%     gradientDescent.m
%     computeCost.m
%     plotData.m

% X refers to the sweetness index
% y refers to the pectin amount (ppm)
%

%% Initialization
clear ; close all; clc


%% ======================= Part 2: Plotting =======================
fprintf('Loading and Plotting Our Data ...\n')

% Load the dataset from the file juicedata.txt 
data = load('juiceData.txt');

% Declare X to be a vector of all the first column from the dataset.
% X is the set of sweetness level.
X = data(:, 1); 

% Declare y to be a vector of all the second column from the dataset.
% y is the set of pectic amount in parts per million (ppm).
y = data(:, 2);

% Declare the number of traning examples.
% m will be 24 based on our dataset.
m = length(y);

% Plot Data

plotData(X, y);

fprintf('Program paused. Press enter to continue.\n');
pause;

%% =================== Part 3: Gradient descent ===================
fprintf('Running Gradient Descent ...\n')

% Add a column of 1s to vector X.
% X dimension will be (m x 2).
X = [ones(m, 1), X]; 

% Initialize the theta (parameter) values to zero (default).
% theta dimension is (2 x 1).
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings.
% number of gradient descent iterations:
iterations = 1500;

% learning parameter (step-size):
alpha = 0.01;  


% Compute and display initial cost using the computeCost() FUNCTION.
% computeCost() FUNCTION is a separate file needed to perform the cost function.
fprintf('The initial value of the cost function is: %f\n' ,
    computeCost(X, y, theta));


% Run Gradient Descent using the gradientDescent() FUNCTION.
% gradientDescent() FUNCTION is a separate file used to perfrom gardient descent.
% A line should be plotted on top of the data and fit the data.
theta = gradientDescent(X, y, theta, alpha, iterations);


% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));

% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off % don't overlay any more plots on this figure
% Run Gradient Descent using the gradientDescent() FUNCTION.
% gradientDescent() FUNCTION is a separate file used to perfrom gardient descent.
% A line should be plotted on top of the data and fit the data.

% Predict pectin amount for sweetness levels of 5.5 and 7
predict1 = [1, 5.5] * theta;
fprintf('\nFor sweetness level = 5.5, we predict a pectin amount of %f\n',...
    predict1);
predict2 = [1, 5.6] * theta;
fprintf('For sweetness level = 5.6, we predict a pectin amount of %f\n',...
    predict2);
predict3 = [1, 5.9] * theta;
fprintf('For sweetness level = 5.9, we predict a pectin amount of %f\n',...
    predict3);
predict4 = [1, 7] * theta;
fprintf('For sweetness level = 7, we predict a pectin amount of %f\n' ,...
    predict4);

fprintf('\nCost function value at the global minumum/optima is: %f\n' , 
    computeCost(X, y, theta));


