obj1 = ModelDevice('Camera');
obj2 = ModelDevice('PowerSource');
contextObj = Context.getInstance(); % �õ�ȫ��Context����
contextObj.register('Camera',obj1); % ע��Camera����
contextObj.register('PowerSource',obj2);% ע��PowerSource����