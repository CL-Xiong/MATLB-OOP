function data = getData(obj,ID)
    if isKey(obj.dataDictionary,ID)
        data = obj.dataDictionary(ID);
    else
        error('ID does not exist');
    end
end 