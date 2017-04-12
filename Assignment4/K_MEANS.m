X = importdata('seeds.txt');
K = 5;
final=0;
for j=1:10
    centroids = initialCentroids(X, K);
    for i=1:100 
      if (i==1)
          temp=0;
      else
          temp=sse(1);
      end
      clusterNum = closestCentroids(X, centroids);
      sse=computeSSE(X, clusterNum, centroids, K);
      if(temp~=0)
          diff=temp - sse(1);
          if(diff<=0.001)
              break;
          end
      end
      centroids = computeNewCentroids(X, clusterNum, K);
    end
    final=(final + sse(1));
end
Average_sse=(final/10);