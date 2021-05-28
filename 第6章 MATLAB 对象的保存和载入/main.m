obj = Calculation();
obj.results = 'essential ';
save test.mat
load test.mat
obj
% 装载时构造(ConstructOnLoad)
obj = Calculation2();
obj.results = 'essential ';
save test2.mat
load test2.mat
obj



