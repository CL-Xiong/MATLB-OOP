classdef Order
    properties
        id
        customer
    end
    methods
        function obj = Order(id,customer)
            obj.id = id;
            obj.customer = customer;
        end
    end
end