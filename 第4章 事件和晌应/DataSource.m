classdef  DataSource < handle
    events           % event block 开始
        dataChanged
    end
    methods          % event block 结束
        function internDataChange(obj)
            obj.notify('dataChanged'); % 通知数据改变， 各个GUI 更新
        end
    end
end