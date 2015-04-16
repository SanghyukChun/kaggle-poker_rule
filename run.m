is_submit = 1;
fileID = fopen('submission.csv','w');
fprintf(fileID, 'id,hand\n');
[ trD, trL, teD, teL ] = getdata( is_submit );
trD = preprocessing( trD );
teD = preprocessing( teD );

est = knnclassify(teD, trD, trL);

teN = size(teD,1);
for i=1:teN
    fprintf(fileID,'%d,%d\n',i,est(i));
end
fclose(fileID);

if (~is_submit)
    disp(num2str(accuracy(est, teL)));
end