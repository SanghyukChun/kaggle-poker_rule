is_submit = 0;
fileID = fopen('submission.csv','w');
fprintf(fileID, 'id,hand\n');
[ trD, trL, teD, teL ] = getdata( is_submit );
trD = preprocessing( trD );
% teD = preprocessing( teD );

fclose(fileID);