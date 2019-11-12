X = [ 89 7921; 72 5184; 94 8836; 69 4761 ];
Y = [ 96; 74; 87; 78];

X = (X - mean(X)) ./ (max(X) - min(X))

fprintf('question 1 = %f\n', (X(4,2)));

alpha = 1.0;
num_iters = 15;
theta = zeros(2, 1);

J = computeCost(X, Y, theta);

[theta, J_history] = gradientDescentMulti(X, Y, theta, alpha, num_iters)

plot(J_history)