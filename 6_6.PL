razy_dwa(X,Y):-Y is X*2.
lista_razy_dwa(L1,L2):-maplist(razy_dwa,L1,L2).