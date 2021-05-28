function display(obj)
%本质区别在于， 这些类方法可以访问对象的私有数据
% 而普通的类方法不可以
    disp(['x = ',num2str(obj.x)]);
    disp(['y = ',num2str(obj.y)]);
end