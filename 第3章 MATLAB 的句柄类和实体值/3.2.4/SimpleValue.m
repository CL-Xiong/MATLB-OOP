classdef SimpleValue
    properties
        var
    end
    methods
        function obj = SimpleValue(var)
            obj.var = var;
        end
        function assignVar(obj, var) %局部拷贝
            obj.var = var;
        end
        function obj = setVar(obj, var) %改变实际对象值
            obj.var = var;
        end
    end
    
end