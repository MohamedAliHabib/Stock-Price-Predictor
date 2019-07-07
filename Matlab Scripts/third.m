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
yy=y';
data = [x y];
% 
plot(x,y);
hold on;

xTrain = [1:100,111:200,211:300,311:400,411:500,511:600,611:700,711:800,811:900,911:1000,...
    1011:1100,1111:1200,1211:1300,1311:1400,1411:1500,1511:1600,1611:1700,1711:1800,1811:1900,1911:2000,...
    2011:2100,2111:2200,2211:2300,2311:2400,2411:2500,2511:2600,2611:2700,2711:2800,2811:2900,2911:3000,...
    3011:3100,3111:3200,3211:3300,3311:3400,3411:3500,3511:3600,3611:3700,3711:3800,3811:3900,3911:4000,...
    4011:4100,4111:4200,4211:4300,4311:4400,4411:4500,4511:4600,4611:4700,4711:4800,4811:4900,4911:5000,...
    5011:5100,5111:5200,5211:5300,5311:5400,5411:5465];
xTest  = [101:110,201:210,301:310,401:410,501:510,601:610,701:710,801:810,901:910,...
    1001:1010,1101:1110,1201:1210,1301:1310,1401:1410,1501:1510,1601:1610,1701:1710,1801:1810,1901:1910,...
    2001:2010,2101:2110,2201:2210,2301:2310,2401:2410,2501:2510,2601:2610,2701:2710,2801:2810,2901:2910,...
    3001:3010,3101:3110,3201:3210,3301:3310,3401:3410,3501:3510,3601:3610,3701:3710,3801:3810,3901:3910,...
    4001:4010,4101:4110,4201:4210,4301:4310,4401:4410,4501:4510,4601:4610,4701:4710,4801:4810,4901:4910,...
    5001:5010,5101:5110,5201:5210,5301:5310,5401:5410];
yTrain=y(xTrain);
yTest=y(xTest);
plot(xTest,yTest,'r');
plot(xTrain,yTrain,'y');

[t h j]=fit(xTrain',yTrain,'sin8');
yHatTest=myFun(xTest);
plot(xTest,yHatTest,'k');
e=MSE(yTest',yHatTest);
e=sqrt(e)

yHatTrain=myFun(xTrain);
plot(xTrain,yHatTrain,'c');
e=MSE(yTrain',yHatTrain);
e=sqrt(e)