classdef Controller < handle
    properties
        viewObj; % controller 类对象必须拥有View类对象的handle
        modelObj; % controller 类对象必须拥有Model类对象的handle
    end
    methods
        function obj = Controller(viewObj,modelObj) % controller类构造函数
            % 初始化让controller类对象拥有model类对象和view类对象的handle
            obj.viewObj= viewObj;
            obj.modelObj = modelObj;
        end
        function callback_drawbutton(obj,src,event) % draw按钮的回调函数
            obj.modelObj.withdraw(obj.viewObj.input); %去调用model类的withdraw函数
        end
        function callback_depositbutton(obj,src,event) %deposit 按钮的回调函数
            obj.modelObj.deposit(obj.viewObj.input); % 去调用model类的deposit函数
        end
    end
end