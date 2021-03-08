matrix = load('valid/matrix.txt');


% training inputs, X
X = matrix;
X(:, end) = [];
% disp(X);
% training labels, y
y = matrix;
y = y(:, end);



Theta_f = load('theta.txt');


% num = 10;

m = size(X, 1);

X = [ones(m, 1) X];
p = X * Theta_f';
[prob, p] = max(p, [], 2);

disp(p);

fprintf('\nTraining Set Accuracy: %f\n', mean(double(p == y)) * 100);
