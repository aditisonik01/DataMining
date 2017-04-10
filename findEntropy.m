function entropy=findEntropy(unlabeledMatrix,trained_weights)
    m1=size(unlabeledMatrix,1)
    for k=1:m1
        entro(k)=0
        unlabeledsample=unlabeledMatrix(k,:);
        probabilityVector1(k,:)=test_LR_Classifier(unlabeledsample,trained_weights,6)
        for k1=1:6
            pi=probabilityVector1(k,k1)
            entro(k)=entro(k)+(-(pi*(log2(pi))))
        end
    end
    entropy=transpose(entro)
end