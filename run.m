is_submit = 0;
fileID = fopen('submission.csv','w');
fprintf(fileID, 'id,hand\n');
[ trD, trL, teD, teL ] = getdata( is_submit );
[ trD, U ] = preprocessing( trD, [] );

teN = size(teD,1);
for i=1:teN
    % find class using knn algorithm
    x = preprocessing(teD(i,:),U);
    est = knnclassify(x, trD, trL, 6, 'cosine');
    fprintf(fileID,'%d,%d\n',i,est);
    disp([num2str(i) '/' num2str(teN)]);
end
fclose(fileID);