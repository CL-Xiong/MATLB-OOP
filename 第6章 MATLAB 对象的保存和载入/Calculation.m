classdef Calculation < handle
    properties
        results
    end
    properties(Transient)
        intermediateVal
    end
    methods
        function obj = Calculation()
            disp('ctor called');
            obj.intermediateVal = 'disposible';
        end
    end
end