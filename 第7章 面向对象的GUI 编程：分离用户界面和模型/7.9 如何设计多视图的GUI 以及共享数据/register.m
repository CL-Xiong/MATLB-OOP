function register(obj,ID,data)
    expr = sprintf('obj.dataDictionary(\''%s\'') = data',ID);
    eval(expr);
end