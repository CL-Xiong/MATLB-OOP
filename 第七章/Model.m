classdef Model < handle
    properties
        balance % 存款余额
    end
    events
        balanceChanged % 余额发生变化事件
    end
    methods
        function obj = Model(balance)
            obj.balance = balance;
        end
        function deposit(obj,val)
            obj.balance = obj.balance + val;
            obj.notify('balanceChanged'); %通知
        end
        function withdraw(obj,val)
            obj.balance = obj.balance - val;
            obj.notify('balanceChanged');%通知
        end
    end
end