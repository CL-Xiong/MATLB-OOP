classdef Controller < handle
    properties
        viewObj; % controller ��������ӵ��View������handle
        modelObj; % controller ��������ӵ��Model������handle
    end
    methods
        function obj = Controller(viewObj,modelObj) % controller�๹�캯��
            % ��ʼ����controller�����ӵ��model������view������handle
            obj.viewObj= viewObj;
            obj.modelObj = modelObj;
        end
        function callback_drawbutton(obj,src,event) % draw��ť�Ļص�����
            obj.modelObj.withdraw(obj.viewObj.input); %ȥ����model���withdraw����
        end
        function callback_depositbutton(obj,src,event) %deposit ��ť�Ļص�����
            obj.modelObj.deposit(obj.viewObj.input); % ȥ����model���deposit����
        end
    end
end