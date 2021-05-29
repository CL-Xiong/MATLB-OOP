classdef Model1 < handle
    properties
        hModel2 % 该Handle的值可以在constructor或者set中提供
        hModelMain
    end
    methods
        function accessData(obj)
            % 直接通过hModel2的handle访问hModel2对象中的数据
            temp = hModel2.someProp;
        end
    end
end