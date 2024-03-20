%Grupa Ludzi

/*
lubi(X,Y)    -X lubi Y
jarosz(X)    -X jest jaroszem
niepali(X) -X nie pali papierosow
czyta(X)     -X czyta ksiazki
sport(X)     -X uprawia sport
*/
jarosz(ewa).
jarosz(ola).
jarosz(jan).
jarosz(pawel).
niepali(ewa).
niepali(jan).
niepali(ola).
czyta(ola).
czyta(iza).
czyta(piotr).
sport(ola).
sport(jan).
sport(piotr).
sport(pawel).
lubi(ola,X):-jarosz(X),sport(X).
lubi(ewa,X):-niepali(X),jarosz(X).
lubi(iza,X):-czyta(X).
lubi(iza,X):-sport(X).
lubi(jan,X):-sport(X).
lubi(piotr,X):-sport(X),jarosz(X).
lubi(piotr,X):-czyta(X).
lubi(pawlo,X):-jarosz(X),sport(X),czyta(X).
