x=importdata('X_train.mat')
xclass=importdata('Y_train.mat')
y=importdata('X_test.mat')
yclass=importdata('Y_test.mat')
xtrans=transpose(x)
net=feedforwardnet(25)
% net.divideParam.trainRatio=60;
% net.divideParam.testRatio=30;
% net.divideParam.valRatio=10;
net.trainParam.epochs=1000; 
%net.trainParam.goal=1e-6; 
net=train(net,xtrans,xclass)
ytrans=transpose(y)
z=net(ytrans)
z=ceil(z)
perf=perform(net,z,yclass,0.5)
count=0
for i=1:1000
    if (z(i)==yclass(i))
        count=count+1
    end
end
accuracy=((count/1000)*100)


