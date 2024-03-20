% PRGOGRAM: klocuchy
% Baza wiedzy o układzie klocków
% Definiowane predykaty:
%      na/2
%================================

% na(X,Y)
% opis: spełniony, gdy klocek X leży
% bezpośrednio na klocku Y
%------------------------- na/2
         na(c,a).
         na(c,b).
         na(d,c).
%------------------------ na/2
     pod(X,Y):-na(Y,X).
 miedzy(X,Y,Z):-na(X,Y),pod(X,Z).
 miedzy(X,Y,Z):-na(X,Z),pod(X,Y).

/*
Informacje o budowie programu:
Program składa się z 3 klauzul.
Progam zawiera 1 definicję relacji.
Jest to relacja na/2.
Definicja relacji na/2 składa sie z
3 klauzkl, które są faktami.
*/