classdef View < handle
    properties
        viewSize; % ��ͼ��С������
        hfig; % ��ͼ�����ӵ�е�figure �� handle
        drawButton; % �ռ����drawButton��ΪView�������
        depositButton;% �ռ����depositButton��ΪView�������
        balanceBox; % balanceBox��������ʾ����uicontrol����
        numBox; %numBox���û���������ȡ����ߴ���ȵ�uicontrol����
        text; % ��ͼ�ϵľ�̬�ַ�
        modelObj; %��ͼ��ӵ��ģ�Ͷ����Handle
        controlObj; %��ͼ��ӵ�п����������Handle
    end
    properties
        input
    end
    methods
        function obj = View(modelObj) % View��Ĺ��캯��
            obj.viewSize = [100,100,300,200];
            obj.modelObj = modelObj; % ��ʼ��View������ģ�͵�handle
            obj.modelObj.addlistener('balanceChanged',@obj.updateBalance); %ע��
            obj.buildUI(); %������ʾ
            obj.controlObj = obj.makeController(); %view�ฺ�����Controller
            obj.attachToController(obj.controlObj); % ע��ؼ��Ļص�����
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
        function updateBalance(obj,scr,data) %���½����ϵ�balance
            set(obj.balanceBox,'string',num2str(obj.modelObj.balance));
        end
        function controlObj = makeController(obj) % View��������Լ��Ŀ�����
            controlObj = Controller(obj,obj.modelObj);
        end
        function attachToController(obj,controller) % controller������ɺ�
            funcH = @controller.callback_drawbutton;
            set(obj.drawButton,'callback',funcH); % ���ؼ�ע��ص�����
            funcH = @controller.callback_depositbutton;
            set(obj.depositButton,'callback',funcH);
        end
    end
end