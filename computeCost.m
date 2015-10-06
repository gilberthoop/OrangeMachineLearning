function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% Initialize the Cost function J value to zero 
J = 0;

% ====================== COST FUNCTION COMPUTATION ======================
pred = X * theta;
diff = pred - y;
sq = diff .^2;
total = sum(sq);
scalar = 1/(2*m) * total;
J = scalar;

% =========================================================================

end
