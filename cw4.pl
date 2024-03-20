% Rozpoznawanie wielomianow jednej zmiennej o wspołczynnikach liczbowych 
/*
Definicja: rekurencja strukturalna
1) 
x jest wielomianem zmiennej x 
c - liczba jest wielomianem dowolnej zmiennej
2)
Jezeli W,W1,W2 sa wielomianami zm. x to 
-W, W1+W2, W1-W2, W1*W2, W^N (N-liczba naturala)
sa wielomianami zmiennej x
*/
% wielomian(W,X)
% speloniony gdy W jest Wielomianem zmiennej X 
% o wspołczynnikach liczbowych
% definicja rekurencyjna

% warunki zakończenia rekurencji
           wielomian(X,X).
           wielomian(C,_):-number(C).

% rekurencja
wielomian(-W,X):-wielomian(W,X).
wielomian(W1+W2,X):-wielomian(W1,X),
                    wielomian(W2,X).
wielomian(W1-W2,X):-wielomian(W1,X),
                    wielomian(W2,X).
wielomian(W1*W2,X):-wielomian(W1,X),
                    wielomian(W2,X).
wielomian(W^N,X):-integer(N),
                    N>1,
                    wielomian(W,X).

/*
Sesja prologowa 

1 ?- wielomian(0,x).
true.


*/
                    