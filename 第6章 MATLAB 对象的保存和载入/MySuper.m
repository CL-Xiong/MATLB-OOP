classdef MySuper 
    properties
        X
        Y
    end
    methods
        function S = saveobj(obj)
            S.PointX = obj.X; % s is a struct
            S.PointY = obj.X; % s is a struct
        end
    end
    methods(Static)
        function obj = loadobj(S)
            obj = MySuper;
            obj = reload(obj, S);
        end
    end
end