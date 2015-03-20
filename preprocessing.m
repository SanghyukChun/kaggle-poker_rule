function [ ret, U ] = preprocessing( data, U )
tmp = zeros(size(data,1),52);
for i=1:5
    idx = 13 * ( data(:,2*i-1)-1 )+ data(:,2*i);
    nIdx = size(idx,1);
    for k=1:nIdx
        tmp(k,idx(k)) = 1;
%         disp([num2str(i) ' ' num2str(k) '/' num2str(nIdx)]);
    end
end
if isempty(U)
    Z = bsxfun(@minus,tmp, mean(tmp,1));
    [U,~,~] = svds(Z', 49);
end
ret = tmp * U;
end