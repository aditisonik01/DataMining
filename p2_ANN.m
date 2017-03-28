%loading the data and classes
train_data = importdata('X_train.mat')
class_train = importdata('y_train.mat')
test_data = importdata('X_test.mat')
class_test = importdata('y_test.mat')
 
%to get 25 outputs from hidden layer
xclass=full(ind2vec(class_train,25))

net = feedforwardnet(25); %creating feedforward neural network
net = train(net,transpose(train_data),xclass); %training the network

z = net(transpose(test_data)); %testing the network with test_data
y=vec2ind(z) %predicted class values

accuracy=0
for l=1:1000
    accuracy= accuracy+(class_test(l)==y(l)) %actual class compared with predicted
end
accuracy=((accuracy/1000)*100) %accuracy found out
