classdef RMB2 % value��
    properties(SetAccess = private)
        amount
    end
    methods
        function obj = RMB2(val)
            obj.amount = val;
        end
        function newobj = times(obj,multiplier)
            newobj = RMB2(obj.amount*multiplier); %�����µĶ���
        end
        function newobj = plus(obj,obj2nd)
            newobj = RMB2(obj.amount + obj2nd.amount);
        end
        % ����
%         function newobj = minus(obj,obj2nd)
%             newobj = RMB2(obj.amount - obj2nd.amount);
%         end
    end
end