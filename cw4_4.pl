% lista_razy5(L1,L2) - spełniona gdy 
listax5([],[]).
listax5([H1|T1], [H2|T2]):- H2 is H1*5, listax5(T1,T2).