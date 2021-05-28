classdef Point2D < handle
    properties(Access = private)
        x
        y
    end
    methods
        function obj = Point2D(x,y)
            obj.x = x;
            obj.y = y;
        end
        [norm] = normalize(obj);
        display(obj);
%         function obj = Point2D()
%             [obj.x obj.y] = localUtility(); % 调用该文件中的局部函数
%         end
    end
end

% point 类中定义的局部函数
% function [x y] = localUtility
%     
% end