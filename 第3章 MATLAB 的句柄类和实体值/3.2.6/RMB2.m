classdef RMB2 % value类
    properties(SetAccess = private)
        amount
    end
    methods
        function obj = RMB2(val)
            obj.amount = val;
        end
        function newobj = times(obj,multiplier)
            newobj = RMB2(obj.amount*multiplier); %返回新的对象
        end
        function newobj = plus(obj,obj2nd)
            newobj = RMB2(obj.amount + obj2nd.amount);
        end
        % 减法
%         function newobj = minus(obj,obj2nd)
%             newobj = RMB2(obj.amount - obj2nd.amount);
%         end
    end
end