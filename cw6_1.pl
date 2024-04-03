% konkat(L1,L2,L3)
% spełniony gdy L3 jest połączeniem list L1 i L2
% ----------------------------------------------

% rekurencja ze wzgledu na liste L1:

% warunek kończący rekurencje: połączenie listy pustej z listą L daje listę L
 konkat([],L,L).

% rekurencja:
% głowa listy L3 jest głowa listy L1
% ogon listy L3 jest połączeniem ogona listy L1 z lista L2
 konkat([H1|T1],L2,[H1|T3]):-konkat(T1,L2,T3).