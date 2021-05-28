classdef Point3D < MyPointPackage.Point2D
    properties(Access = private)
        z
    end
    methods
        function obj = Point3D(x,y,z)
            obj = obj@MyPointPackage.Point2D(x,y);
            obj.z = z;
        end
        [norm] = normalize(obj);
        function display(obj)
            display@MyPointPackage.Point2D(obj);
            disp(['z = ',num2str(obj.z)]);
        end
%         display(obj);
%         function obj = Point3D()
%             [obj.x obj.y] = localUtility(); % ���ø��ļ��еľֲ�����
%         end
    end
end

% % point ���ж���ľֲ�����
% function [x y] = localUtility
%     
% end