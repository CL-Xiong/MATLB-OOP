% 所有NoodleStore类的对象都将拥有同一个指向该对象的handle
% 如果换成value类，则各自不同
storel = NoodleStore;
store2 = NoodleStore;
storel.recipe.ingredient = 'egg' ;
store2.recipe % 更改store1，store2跟着变了，handle类的特点，指向同一个
store2.recipe.ingredient = 'tomato ';
storel.recipe % 更改store2，store1跟着变