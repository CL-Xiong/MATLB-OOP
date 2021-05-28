classdef(ConstructOnLoad = true) Calculation2 < handle
    properties
        results
    end
    properties(Transient)
        intermediateVal
    end
    methods
        function obj = Calculation2()
            disp('ctoe called');
            obj.intermediateVal = 'initialValue';
        end
    end
    
end