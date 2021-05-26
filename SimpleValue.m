classdef SimpleValue
    properties
        var
    end
    methods
        function obj = SimpleValue(var)
            obj.var = var;
        end
        function assignVar(obj, var)
            obj.var = var;
        end
    end
    
end