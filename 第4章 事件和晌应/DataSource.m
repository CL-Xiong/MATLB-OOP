classdef  DataSource < handle
    events           % event block ��ʼ
        dataChanged
    end
    methods          % event block ����
        function internDataChange(obj)
            obj.notify('dataChanged'); % ֪ͨ���ݸı䣬 ����GUI ����
        end
    end
end