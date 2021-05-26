classdef Context < handle
    properties
        dataDictionary
    end
    methods(Access = private)
        function obj = Context()
            obj.dataDictionary = containers.Map();
        end
    end
    methods(Static)
        function obj = getInstance()
            persistent localObj
            if isempty(localObj) || ~isvalid(localObj)
                localObj = Context();
            end
            obj = localObj;
        end
    end
    methods
        register(obj,ID,data);
        fdata = getData(obj,ID);
    end
end