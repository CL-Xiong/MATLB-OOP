classdef Point3D < Point2D
    properties
        z
    end
    methods
        function obj = Point3D(x0,y0,z0)
            obj = obj@Point2D(x0,y0);
            obj.z = z0;
        end
        function print(obj)
            print@Point2D(obj);
            disp(['z = ',num2str(obj.z)]);
        end
    end
end