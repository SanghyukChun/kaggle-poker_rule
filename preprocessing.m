function [ ret ] = preprocessing( data )
idxperms = nchoosek([2,4,6,8,10],2);
numperms = size(idxperms,1);
numdata  = size(data,1);
ret      = zeros(numperms * 3, numdata);
ii = 1;

for i=1:numdata
    x = data(i,:);
    for j=1:numperms
        idx = idxperms(j,:);
        ret(ii,j) = (x(idx(1)) == x(idx(2)));
    end
    for j=1:numperms
        idx = idxperms(j,:);
        ret(ii,numperms+j) = (x(idx(1)) + 1 == x(idx(2)));
    end
    for j=1:numperms
        idx = idxperms(j,:);
        ret(ii,2*numperms+j) = (x(idx(1)-1) == x(idx(2)-1));
    end
    ii = ii + 1;
    disp([num2str(i), '/', num2str(numdata)]);
end


end