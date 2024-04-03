% kwadrat_lista(L1,L2) - spełniony ,gdy elementy L2 są kwadratami elementów L1.
kwadrat(X,Y):- Y is X*X.
kwadrat_lista(L1,L2):-maplist(kwadrat,L1,L2).
