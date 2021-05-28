function [norm] = normalize(obj)
    norm = sqrt(obj.x^2 + obj.y^2);
    obj.x = obj.x / norm;
    obj.y = obj.y / norm;
end