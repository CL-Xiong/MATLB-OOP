
funcH = @controller.callback_drawbutton;
set(obj.drawButton , 'callback' ,funcH);

obj.modelObj.addlistener('balanceChanged', @obj.updateBalance); % 注册