function [ acc ] = accuracy( est, true )
acc = sum(est == true) / size(true,1);
end

