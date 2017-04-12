function clusterNum = closestCentroids(X, centroids)
  cm = size(centroids, 1);
  clusterNum = zeros(size(X,1), 1);
  m = size(X,1);

  for i=1:m
    k = 1;
    min_dist = sqrt(sum((X(i,:) - centroids(1,:)) .^ 2));
    for j=2:cm
        dist = sqrt(sum((X(i,:) - centroids(j,:)) .^ 2));
        if(dist < min_dist)
          min_dist = dist;
          k = j;
        end
    end
    clusterNum(i) = k;
  end
end