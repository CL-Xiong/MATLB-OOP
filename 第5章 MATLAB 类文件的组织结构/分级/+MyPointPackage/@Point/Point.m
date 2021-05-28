classdef Point < handle
    properties(Access = private)
        x
        y
    end
    methods
        function obj = Point(x,y)
            obj.x = x;
            obj.y = y;
        end
        [norm] = normalize(obj);
        display(obj);
    end
end