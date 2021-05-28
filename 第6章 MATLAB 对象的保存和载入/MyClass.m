classdef MyClass < handle
    properties
        x
    end
    methods
        function s = saveobj(obj)
            s.x = obj.x; % s is a struct
        end
    end
    methods(Static)
        function obj = loadobj(obj)
        % loadobj 方法必须被声明成静态方法@ ，因为在调用loadobj 类的对象还没被
        % 建立起来，所以只能是静态的
        % 在loadobj 方法内部的工作是提取struct 中的信息去构建新的对象。
        % loadobj 和Constructor 类似，必须返回一个新构成的该类的对象
            if isstruct(obj) % 如果obj是一个struct
                newobj = MyClass(obj.x); % 利用struct 中的信息重新构造一个对象
            end
            obj = newobj; %返回这个新构造的时Class 类的对象
        end
    end
end