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
%             [obj.x obj.y] = localUtility(); % ���ø��ļ��еľֲ�����
%         end
    end
end

% point ���ж���ľֲ�����
% function [x y] = localUtility
%     
% end