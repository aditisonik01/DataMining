function centroids = computeNewCentroids(X, clusterNum, K)

  [m n] = size(X);
  centroids = zeros(K, n);
  
  for i=1:K
    x = X(clusterNum==i,:);
    cm = size(x,1);
    if(cm==1)
        centroids(i, :) = x;
    else
        centroids(i, :) = (1/cm) * sum(x);
    end
  end
end