% a = 7;
% b='some string';
% c = rand(4,4);
% whos
classdef Point2D < handle
    properties 
%         x
%         y
        x = cos(pi/12);% 默认值
        y = sin(pi/12);% 默认值
%         r
    end
    properties (Dependent)
        r
    end
    methods
        function obj = Point2D(x0,y0) %Point2D的构造函数 Constructor 构造方法
            if nargin == 2
                obj.x = x0;
                obj.y = y0;
            elseif nargin == 0
                obj.x = cos(pi/12);
                obj.y = sin(pi/12);
            else
                error('wrong input arguments')
            end
%             obj.r = sqrt(obj.x^2+obj.y^2); %构造函数赋值
        end
        function r = get.r(obj)
            r = sqrt(obj.x^2+obj.y^2);
            disp('get.r called');
        end
        function normalize(obj)
            r = sqrt(obj.x^2+obj.y^2);
            obj.x = obj.x/r;
            obj.y = obj.y/r;
        end
        function print(obj)
            disp(['x = ',num2str(obj.x)]);
            disp(['y = ',num2str(obj.y)]);
        end
    end
end