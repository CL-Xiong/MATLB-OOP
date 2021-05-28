function display(obj)
% 的定义从外观上看和普通的函数很像， 其实质区别在于， 这
% 些类方法可以访问对象的私有数据
    disp(   ['x = ',num2str(obj.x)]);
    disp(   ['y = ',num2str(obj.y)]);
end