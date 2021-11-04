function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       
m=size(X,1);%原始数据集的行数，要适用于任何数据集才行
n=size(X,2);%原始数据集的列数，要适用于任何数据集才行
% 
for i=1:n
mu(i) = mean(X(:,i));
sigma(i) = std(X(:,i));
end
% X_norm = (X-repmat(mu,m,1))./(repmat(sigma,m,1));
% X_norm = (X-mu)./sigma;
for i=1:size(X,2) %太丑了这代码，被作业检查系统逼的！！！
X_norm(:,i) = (X(:,i)-mu(i))./sigma(i);
end



% ============================================================

end
