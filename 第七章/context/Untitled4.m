obj1 = ModelDevice('Camera');
obj2 = ModelDevice('PowerSource');
contextObj = Context.getInstance(); % �õ�ȫ��Context����
contextObj.register('Camera',obj1);
contextObj.register('PowerSource',obj2);