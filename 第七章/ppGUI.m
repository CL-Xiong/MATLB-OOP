% 构建初始的figure对象以及控件对象
hfig = figure('pos',[100,100,300,300]);
withdrawButton = uicontrol('parent',hfig,'string','withdraw',...
                            'pos',[60 28 60 28]);
depositButton = uicontrol('parent',hfig,'string','deposit',...
                            'pos',[180 28 60 28]);
inputBox = uicontrol('parent',hfig,'style','edit','string',num2str(input),...
                     'pos',[60 85 180 28],'Tag','inputbox');
balanceBox = uicontrol('parent',hfig,'style','edit','string',num2str(balance),...
                       'pos',[60 85 180 28],'Tag','balancebox');
textBox = uicontrol('parent',hfig,'style','text','string','Balance',...
                       'pos',[60 142 60 28]);
                   
set(withdrawButton,'callback',@(o,e)withdraw_callback(o,e));
set(depositButton,'callback',@(o,e)withdraw_callback(o,e));

function withdraw_callback(o,e)
    hfig = get(o,'Parent');
    inputBox = findobj(hfig,'Tag','inputbox');
    input = str2double(get(inputBox,'string'));
    balanceBox = findobj(hfig,'Tag','balancebox');
    balance = strdouble(get(balanceBox,'string'));
    balance = balance-input;
    set(balanceBox,'string',num2str(balance));
end