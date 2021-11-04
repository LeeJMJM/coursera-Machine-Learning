function plotProgresskMeans(X, centroids, previous, idx, K, i)
%PLOTPROGRESSKMEANS is a helper function that displays the progress of 
%k-Means as it is running. It is intended for use only with 2D data.
%   PLOTPROGRESSKMEANS(X, centroids, previous, idx, K, i) plots the data
%   points with colors assigned to each centroid. With the previous
%   centroids, it also plots a line between the previous locations and
%   current locations of the centroids.
%

% Plot the examples
plotDataPoints(X, idx, K);

% Plot the centroids as black x's
plot(centroids(:,1), centroids(:,2), 'o', ...
     'MarkerEdgeColor','k', ...
     'MarkerSize', 5, 'LineWidth', 1);

% Plot the history of the centroids with lines
% for j=1:size(centroids,1)
%     drawLine(centroids(j, :), previous(j, :));
% end

for ii=1:size(centroids,1) %我自己加的，画箭头的语句
    drawArrow(previous(ii, :),centroids(ii, :),'k','k',2,1,pi/8);
% drawArrow(start_point, end_point,arrColor,lineColor,arrowSize,lineWidth,theta)
% 从start_point到end_point画一箭头,arrColor箭头颜色,arrSize，箭头大小，箭头夹角（箭头的胖瘦）
end

% Title
title(sprintf('Iteration number %d', i))

end

