% podwojenie (+L1,?L2).
% spełniony gdy element listy L2 sa podowjonymi elemantmi listy L1 , np. L1 =[a,b] L2 =[a,a,b,b]
%-------------------------------------------------------------------------------------------
podwojenie([],[]).
podwojenie([H1|T1],[H1,H1|T2]):- podwojenie(T1,T2).