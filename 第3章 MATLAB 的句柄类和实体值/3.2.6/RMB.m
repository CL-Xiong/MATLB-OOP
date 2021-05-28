classdef RMB < handle % handle类
    properties(SetAccess = private)
        amount
    end
    methods
        function obj = RMB(val)
            obj.amount = val;
        end
        function times(obj,multiplier) % 乘
            obj.amount = obj.amount*multiplier
        end
    end
end