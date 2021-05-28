%% 1. 把Handle 类改成Value 类: RMB 类
% MATLAB最复杂的Handle Graphics 对象
hl = line ;
h2 = hl;
set(h2 , 'Color' , 'red');
% RMB的handle类
five = RMB2(5)
ten = five.times(2)
%
five = RMB2(5);
ten = five.plus(RMB(5))

%% 2. 把Value 类改成Handle 类: C ustomer 类
clear all
Marc = Customer('Marc' , 'Boston');
Steve = Customer('Steve' , 'Cambridge');
o1 = Order('OOOOl',Marc );
o2 = Order('00002',Marc );
o3 = Order('00003 ',Steve);

Marc.address = 'Natick';%  l. 修改了地址


