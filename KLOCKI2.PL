/*
na (X,Y) - klocek X lezy bezposrednio na klocky Y
nad(X,Y) - klocek X lezy nad klockiem Y
*/
na(d,c).
na(c,a).
na(c,b).
na(a,e).
na(b,g).
nad(X,Y):-na(X,Y).
nad(X,Y):-na(X,Z),nad(Z,Y).
