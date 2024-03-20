/*
lubi(X,Y) - X lubi Y
bratniadusz(X,Y)- X jest bratnia dusza z Y 
7 klauzul
6 faktow
1 regula
2 definicje relacji
*/


lubi(jan,tatry).
lubi(jan,bieszczady).
lubi(jerzy,beskidy).
lubi(jerzy,bieszczady).
lubi(adam,sudety).
lubi(justyna,bieszczady).
bratniadusza(X,Y):- lubi(X,G), lubi(Y,G), X\==Y.