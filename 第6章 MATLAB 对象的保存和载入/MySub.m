classdef MySub < MySuper
    properties
       Z
    end
    methods
        function S = saveobj(obj)
            S = saveobj@MySuper(obj);
            S.PointZ = obj.Z; % s is a struct
        end
        function obj = reload(obj, S)
            obj = reload@MySuper(obj, S);
            obj.Z = S .PointZ;
        end
    end
    methods(Static)
        function obj = loadobj(S)
            obj = MySub;
            obj = reload(obj, S);
        end
    end
end