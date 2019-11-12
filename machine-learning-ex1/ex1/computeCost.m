function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
if 1,
    % Vectorized hypothesis computation, h = theta^T * x (X needed to be transposed because of input dimensions) 
    hypothesis = theta' * X';
    J = (1/(2*m)) * sum((hypothesis' - y).^2);
else,
    % Manual
    cost_sum = 0;
    hypothesis = 0;
    for i = 1:m
        hypothesis = theta' * X(1,:)';
        %  hypothesis = theta(1) + theta(2)* X(1,:);
        %  fprintf('Hypothesis at iteration %i = %f\n', i, hypothesis(i));
        cost_sum = cost_sum + (hypothesis(i) - y(i))^2;
    end

    J = (1/(2*m)) * cost_sum
    %fprintf('Cost computed = %f\n', J);
end
% =========================================================================

end
