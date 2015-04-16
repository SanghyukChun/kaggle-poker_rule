function [ ret ] = preprocessing( data )
ret = data(:,[2,4,6,8,10]);
ret = sort(ret,2);
end