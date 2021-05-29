classdef Model < handle
    properties
        balance % ������
    end
    events
        balanceChanged % �����仯�¼�
    end
    methods
        function obj = Model(balance)     % Model ��Ĺ��캯��
            obj.balance = balance;
        end
        function deposit(obj,val)         % deposit �����մ�����
            obj.balance = obj.balance + val;
            obj.notify('balanceChanged'); % ֪ͨ
        end
        function withdraw(obj,val)        % withdraw �����մ�����
            obj.balance = obj.balance - val;
            obj.notify('balanceChanged');% ֪ͨ
        end
    end
end