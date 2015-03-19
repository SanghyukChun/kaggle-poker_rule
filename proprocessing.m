function [ trD, teD ] = proprocessing( trD, teD )
U = [];
for j=1:2
    if j == 1
        data = trD;
    else
        data = teD;
    end

    tmp = zeros(size(data,1),52);
    for i=1:5
        idx = 13 * ( data(:,2*i-1)-1 )+ data(:,2*i);
        for k=1:size(idx,1)
            tmp(k,idx(k)) = 1;
        end
    end
%     tmp  = zeros(size(data,1),5);
%     for i=1:5
% %         tmp(:,i) = data(:,2*i);
% %         tmp(:,i) = 13 * ( data(:,2*i-1)-1 ) + data(:,2*i);
%     end
    
    if j == 1
        Z = bsxfun(@minus,tmp, mean(tmp,1));
        [U,~,~] = svds(Z', 49);
        trD = tmp * U;
    else
        teD = tmp * U;
    end
end