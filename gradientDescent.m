function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== GRADIENT DESCENT STEPS ======================
    % The formula for the Gradient descent is: 
    % theta = theta - alpha*(1/m) * SUMMAZATION-OF((h(x) - y)) * x
    
    pred = X * theta;
    diff = pred - y;
    mult = diff' * X;
    scalar = (alpha/m) * mult;
    theta = theta - scalar';




    % ============================================================
    % Compute the cost in every iteration until convergence
    currentCost = computeCost(X, y, theta);

    % Save the cost J in every iteration   
    J_history(iter) = currentCost;

end

end
