is_submit = 0;
[ trD, trL, teD, teL ] = getdata( is_submit );

% find class using knn algorithm
est = knnclassify(teD, trD, trL);

% print accuracy of your algorithm
disp(['Accuracy: ' num2str(accuracy(est, teL))]);