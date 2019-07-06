% clear;
clc;
x = 1:5465;
x=x';
filename = 'natural-gas-daily_csv.csv';
Price = xlsread(filename,'B:B');
Price(5285)=0;
y=Price;
data = [x y];
plot(x,y);

%11111111111111 ***************************************************
% [t h j]=fit(x,y,'fourier8')
% plot(t,x,y);

%22222222222222 ***************************************************
% [t h j]=fit(x,y,'smoothingspline')
% plot(t,x,y);

%333333333333
% [t h j]=fit(x,y,'weibull')
% plot(t,x,y);

%444444444444
% [t h j]=fit(x,y,'exp1')
% plot(t,x,y);

%555555555555
% [t h j]=fit(x,y,'exp2')
% plot(t,x,y);

%666666666666
% [t h j]=fit(x,y,'gauss8')
% plot(t,x,y);

%777777777777 ***************************************************
% [t h j]=fit(x,y,'smoothingspline')
% plot(t,x,y);

%888888888888 
% [t h j]=fit(x,y,'poly9')
% plot(t,x,y);

%99999999999999 
% [t h j]=fit(x,y,'power2')
% plot(t,x,y);

%101010101010101010 
% [t h j]=fit(x,y,'rat34')
% plot(t,x,y);

%1111111111111111111111  ***************************
% [t h j]=fit(x,y,'sin8')
% xx=5000:5465;
% yy = polyval(t,xx)
% plot(t,xx,yy);

%12121212121212121212121212  ***************************
% [t h j]=fit(x,y,'sin9')
% plot(t,x,y);

%131313131313
% [t h j]=fit(x,y,'pchip')
% plot(t,x,y);

%141414141414141414141414
% [t h j]=fit(x,y,'spline')
% plot(t,x,y);

%1515151515151515151515**************************************************
% [t h j]=fit(x,y,'linearinterp')
% plot(t,x,y);

%1616161616161616 ************************************************
% [t h j]=fit(x,y,'nearestinterp')
% plot(t,x,y);

%17171717171717171717171717*************************************
 cftool(x,y)
 
%18181818181818181818181818**************************************
% splinetool(x,y)

%19191919191919191919191919******************************
% [p,S,mu]=polyfit(x,y,130)
% y1 = polyval(p,x,S,mu);
% [p,S,mu]=polyfit(x,y,50)
% y2 = polyval(p,x,S,mu);
% [p,S,mu]=polyfit(x,y,100)
% y3 = polyval(p,x,S,mu);
% hold on
% plot(x,y,'R')
% plot(x,y1,'B')
% plot(x,y2,'G')
% plot(x,y3,'Y')
% legend('myData','n=130','n=50','n=100');
% hold off
% e1 = MSE(y,y1);
% e1=sqrt(e1);
% s=strcat('130 point RMSE:',num2str(e1))
% e2 = MSE(y,y2);
% e2=sqrt(e2);
% s=strcat('50 point RMSE:',num2str(e2))
% e3 = MSE(y,y3);
% e3=sqrt(e3);
% s=strcat('100 point RMSE:',num2str(e3))
% 
% [p,S,mu]=polyfit(x,y,1000)
% y4 = polyval(p,x,S,mu);
% e4 = MSE(y,y4);
% sqrt(e4)
%5285 unset
% filename = 'myExample.xlsx';
% columnB = xlsread(filename,'B:B')
