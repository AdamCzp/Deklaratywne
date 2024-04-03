% Wyznaczanie stopnia wielomianu o współczynnikach liczbowych
/* 
Definicja: rekurencja strukturalna
1) st(x) = 1
st(c) = 0 , gdzie c - liczba
2) Stopnie wielomianów składanych określamy następująco:
    st(-W) = st(W),
    st(W1+W2) = st(W1-W2) = max(st(W1),st(W2)),
    st(W1*W2) = st(W1) + st(W2),
    st(W^N) = st(W)*N (N-liczba naturalna, N>1)
*/

% st_wielomian(W,X,N) jest spełniony gdy N jest stopniem wielomianu W
% względem zmiennej X o współczynnikach liczbowych

st_wielomian(X, X, 1).
st_wielomian(C, _, 0) :- number(C).
st_wielomian(W, X, N) :- st_wielomian(W, X, N).
st_wielomian(W1*W2, X, N) :- 
    st_wielomian(W1, X, N1),
    st_wielomian(W2, X, N2),
    N is N1 + N2.
st_wielomian(W1+W2, X, N) :-
    st_wielomian(W1, X, N1),
    st_wielomian(W2, X, N2),
    max(N1, N2, N).
st_wielomian(W1-W2, X, N) :-
    st_wielomian(W1, X, N1),
    st_wielomian(W2, X, N2),
    max(N1, N2, N).
st_wielomian(W^A, X, N) :-
    integer(A),
    A > 1,
    st_wielomian(W, X, N1),
    N is N1 * A.

% Pomocniczy predykat max
max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- X < Y.

 