

%Set up model
model = arima('Constant',0.0,'MA',{0.8,0.2},...
              'MALags',[1,12],'Variance',0.2);

$simualate model format data
rng('default')
Y = simulate(model,100);
X = 1:100;
Y_new = Y - ones(size(Y))*mean(Y);

%plot time series
figure
plot(X,Y_new)
title('Simulated AR(2) Process')
hold on
plot(X,zeros(size(X)));
hold off

%plot graph of area under timeseries
figure
plot(X,Y_new)
title('Simulated AR(2) Process')
hold on
plot(X,zeros(size(X)));
hold on
anomaly(X,Y_new)
holdoff 
