function [e] = MSE(y,y1)
d=y-y1;
d1=d.*d;
s=sum(d1);
ss=size(y,1);
e=s/ss;
end

