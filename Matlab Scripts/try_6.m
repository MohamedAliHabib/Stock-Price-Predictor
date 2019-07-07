clear;
clc;
% axis for the data
x = 1:5465;
x=x';
% get values
filename = 'natural-gas-daily_csv.csv';
Price = xlsread(filename,'B:B');
% sum non null values
s=nansum(Price);
% get number of samples
l=size(Price,1);
% get mean value
u=s/l;
% assign mean to the missed value 
Price(5285)=u;
% put x with y in data array
y=Price;
data = [x y];
% plot the data
plot(x,y,'.');
hold on
% initialized generator settings 
rng(0,'twister');
% get 20 integer random number between 10 and 100
r = randi([10 100],20,1,'uint8')';
% get dynamic data
[dynamic_data_train,dynamic_data_test]=GetDynamcData(data,r);
% plot dynamic data
plot(dynamic_data_train(:,1),dynamic_data_train(:,2),'Y.')
hold on
% fit dynamic data
[t h j]=fit(dynamic_data_train(:,1),dynamic_data_train(:,2),'sin8');
% test the function
yHatTest=Custom8Sin(t,dynamic_data_test(:,1));
% plot value of test data
plot(dynamic_data_test(:,1),yHatTest,'r*');
% calculate mse
e=MSE(dynamic_data_test(:,2),yHatTest);
% calculate root mse
e=sqrt(e);

yHatTrain=Custom8Sin(t,dynamic_data_train(:,1));
plot(dynamic_data_train(:,1),yHatTrain,'c.');
e=MSE(dynamic_data_train(:,2),yHatTrain)
e=sqrt(e)


















% figure;
% d=1:10000;
% plot(d,Custom8Sin(t,d));