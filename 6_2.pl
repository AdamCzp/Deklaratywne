konkat([],L,L).    
konkat([H1|T1],L2,[H1|T3]):-konkat(T1,L2,T3).  
lista([],[]).
lista([H|T1],L):-lista(T1,T2),konkat(T2,[H], L).     