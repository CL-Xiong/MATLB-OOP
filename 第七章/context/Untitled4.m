obj1 = ModelDevice('Camera');
obj2 = ModelDevice('PowerSource');
contextObj = Context.getInstance(); % 得到全局Context对象
contextObj.register('Camera',obj1);
contextObj.register('PowerSource',obj2);