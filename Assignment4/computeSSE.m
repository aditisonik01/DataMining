function sse = computeSSE(X, clusterNum, centroids, K)
  sse=0;
  for i=1:K
    x = X(clusterNum==i,:);
    cm = size(x,1);
    for j=1:cm
        dif=(sum((x(j,:) - centroids(i, :)) .^ 2));
        sse= sse + dif;
    end
  end
end