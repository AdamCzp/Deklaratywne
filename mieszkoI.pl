/* 
mieszka(X,Y) - X mieszka na ulicy Y
sąsiad(X,Y) - X jest sasiadem Y
9 kaluzul
7 faktow
2 reguła
2 definicje 
*/
mieszka(ola,dworcowa).
mieszka(piotr,dworcowa).
mieszka(karol,dworcowa).
mieszka(ania,ogrodowa).
mieszka(pawel,ogrodowa).
mieszka(kamil,irysowej).
mieszka(gosia,irysowej).
mieszka(marcin,X):-mieszka(ola,X).
sasiedzi(X,Y):-mieszka(X,Z),mieszka(Y,Z),X\==Y.


