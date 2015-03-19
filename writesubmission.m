function writesubmission( est )

n = size(est,1);
M = zeros(n,2);
M(:,1) = 1:n;
M(:,2) = est;
csvwrite('submission',M);

end