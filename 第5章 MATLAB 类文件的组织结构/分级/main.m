clear all;clc;
import MyPointPackage.* % 导入整个package
p1 = Point(1.0,1.0);
p1
%%
% clear all;clc;
p1 = MyPointPackage.Point2D(1,1);
p2 = MyPointPackage.Point3D(1,1,1);

%%
p1 = MyPointPackage.Point2D(1,1);
p2 = MyPointPackage.Point3D(1,1,1);
p2.display();
%%
