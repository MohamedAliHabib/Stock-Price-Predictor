clear;
clc;
x = 1:5465;
x=x';
filename = 'natural-gas-daily_csv.csv';
Price = xlsread(filename,'B:B');
s=nansum(Price);
l=size(Price,1);
u=s/l;
Price(5285)=u;
y=Price;
data = [x y];

% [t h j]=fit(x,y,'sin8')
plot(x,y);
hold on;
xx=5000:5465;
j=1;
for i=5000:5465
    yy(j) = myFun(i);
    j=j+1;
end
plot(xx,yy,'r');