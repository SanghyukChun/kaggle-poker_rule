function [ trD, trL, teD, teL ] = getdata( is_submit )
% read csv file, neglect first row
traincsv = csvread('train.csv',1,0);
trD = traincsv(:,1:10);
trL = traincsv(:,11);

if is_submit
    % read csv file, neglect first row
    testcsv = csvread('test.csv',1,0);
    teD = testcsv(:,1:10);
    teL = [];
else
    trN = size(traincsv,1);
    trIdx = (1:trN * 0.8);
    teIdx = (trN*0.8+1:trN);
    % split data into training and test (for test)
    trD = traincsv(trIdx,1:10);
    trL = traincsv(trIdx,11);
    teD = traincsv(teIdx,1:10);
    teL = traincsv(teIdx,11);
end

end

