function centroids = initialCentroids(X, K)
    centroids = zeros(K,size(X,2)); 
    random = randperm(size(X,1));
    centroids = X(random(1:K), :);
  end