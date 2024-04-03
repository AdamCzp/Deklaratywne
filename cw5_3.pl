% lista_mniejsza_o2(L1,L2) - spełniony , gdy elementy L2 saodpowiednio elementami L2 pomiejszonymi o 2
% L1,L2 - listy liczbowe
listao2([],[]).
listao2([H1|T1], [H2|T2]):- H2 is H1-2, listao2(T1,T2).