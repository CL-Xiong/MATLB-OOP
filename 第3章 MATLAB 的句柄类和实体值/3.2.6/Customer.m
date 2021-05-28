% classdef Customer
%     properties
%         name
%         address
%     end
%     methods
%         function obj = Customer(name,addr)
%             obj.name = name;
%             obj.address = addr;
%         end
%     end
% end
classdef Customer < handle % handle类
    properties
        name
        address
    end
    methods
        function obj = Customer(name,addr)
            obj.name = name;
            obj.address = addr;
        end
    end
end