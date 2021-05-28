aValue  = SimpleValue(10);
aValue.assignVar(20) %修改
aValue.var %局部拷贝，不会对象值
%%
bHandle  = SimpleHandle(); % 赋予初值会报错，目前缘由不知
bHandle.assignVar(20) %修改
bHandle.var %局部拷贝，不会改变真值

