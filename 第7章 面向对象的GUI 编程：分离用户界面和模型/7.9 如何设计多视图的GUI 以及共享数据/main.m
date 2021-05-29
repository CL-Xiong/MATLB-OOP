obj1 = ModelDevice('Camera');
obj2 = ModelDevice('PowerSource');
contextObj = Context.getInstance(); % 得到全局Context对象
contextObj.register('Camera',obj1); % 注册Camera对象
contextObj.register('PowerSource',obj2);% 注册PowerSource对象