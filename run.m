is_submit = 0;
[ trD, trL, teD, teL ] = getdata( is_submit );
[ trD, teD ] = proprocessing( trD, teD );

% find class using knn algorithm
est = knnclassify(teD, trD, trL, 6, 'cosine');

if ~is_submit
    % print accuracy of your algorithm
    disp(['Accuracy: ' num2str(accuracy(est, teL))]);
else
    writesubmission(est);
end