classdef View < handle
    properties
        viewSize; % 视图大小的数组
        hfig; % 视图类对象拥有的figure 的 handle
        drawButton; % 空间对象drawButton作为View类的属性
        depositButton;% 空间对象depositButton作为View类的属性
        balanceBox; % balanceBox是用来显示余额的uicontrol对象
        numBox; %numBox是用户用来输入取款或者存款额度的uicontrol对象
        text; % 视图上的静态字符
        modelObj; %视图类拥有模型对象的Handle
        controlObj; %视图类拥有控制器对象的Handle
    end
    properties
        input
    end
    methods
        function obj = View(modelObj) % View类的构造函数
            obj.viewSize = [100,100,300,200];
            obj.modelObj = modelObj; % 初始化View对象中模型的handle
            obj.modelObj.addlistener('balanceChanged',@obj.updateBalance); %注册
            obj.buildUI(); %构造显示
            obj.controlObj = obj.makeController(); %view类负责产生Controller
            obj.attachToController(obj.controlObj); % 注册控件的回调函数
        end
        function input = get.input(obj)
            input = get(obj.numBox,'string');
            input = str2double(input);
        end
        function buildUI(obj)
            obj.hfig = figure('pos',obj.viewSize);
            obj.drawButton = uicontrol('parent',obj.hfig,'string','draw',...
                'pos',[60 28 60 28]);
            obj.depositButton = uicontrol('parent',obj.hfig,'string','deposit',...
                'pos',[180 28 60 28]);
            obj.numBox = uicontrol('parent',obj.hfig,'style','edit',...
                'pos',[60 85 180 28],'tag','numBox');
            obj.text = uicontrol('parent',obj.hfig,'style','text','string',...
                'Balance','pos',[60 142 60 28]);
            obj.balanceBox = uicontrol('parent',obj.hfig,'style','edit',...
                'pos',[180 142 60 28],'tag','balanceBox');
            obj.updateBalance();
        end
        function updateBalance(obj,scr,data) %更新界面上的balance
            set(obj.balanceBox,'string',num2str(obj.modelObj.balance));
        end
        function controlObj = makeController(obj) % View负责产生自己的控制器
            controlObj = Controller(obj,obj.modelObj);
        end
        function attachToController(obj,controller) % controller构造完成后
            funcH = @controller.callback_drawbutton;
            set(obj.drawButton,'callback',funcH); % 给控件注册回调函数
            funcH = @controller.callback_depositbutton;
            set(obj.depositButton,'callback',funcH);
        end
    end
end