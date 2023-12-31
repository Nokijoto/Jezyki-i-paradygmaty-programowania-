

figura(kwadrat,4).
figura(trojkat,3).
figura(trapez,4).
figura(pieciokat_foremny,5).
figura(szczesciokat_foremny,6).
figura(osmiokat_foremny,8).
figura(dziesieciokat_foremny,10).


% Zadanie 1
kwadrat(X):-
 A is X * X,
 write(A).


kolo(X):-
    A is  pi*(X*X),
    write(A).

zadanie:-
    write('Podaj bok kwadratu'),read(A),
    write('Podaj promien kola'), read(R),
    (   A>=0, R>=0 ->
    kwadrat(A),nl,
    kolo(R);
    write('Blad, liczba musi byc� wieksza od 0')).

% Zadanie 2
srednia(X,Y):-
    A is ( X + Y ) /2,
    write(A).

 % Zadanie 3
figury_do_piec_scian(NazwaFigury) :-
    figura(NazwaFigury, IloscScian),
    IloscScian =< 5.

% Zadanie 4

% Fakty kto w jaki dzien klamie

klamie(lew,poniedzialek).
klamie(lew,wtorek).
klamie(lew,sroda).
klamie(nosorozec,czwartek).
klamie(nosorozec,piatek).
klamie(nosorozec,sobota).


% Fakty kto w jaki dzien mowi prawde
prawda(lew,czwartek).
prawda(lew,piatek).
prawda(lew,sobota).
prawda(nosorozec,poniedzialek).
prawda(nosorozec,wtorek).
prawda(nosorozec,sroda).


% Fakty opisuj�ce dni tygodnia

dzien_tygodnia(poniedzialek).
dzien_tygodnia(wtorek).
dzien_tygodnia(sroda).
dzien_tygodnia(czwartek).
dzien_tygodnia(piatek).
dzien_tygodnia(sobota).
dzien_tygodnia(niedziela).


zadanie4:-
ktoklamie().
% Fakt
% jako ze dzis piatek to lew sklamal mowiac ze wczoraj(czwartek byl
% dzien kiedy klamal)
%
%



% Zadanie 5
%
%


solve(S,E,N,D,M,O,R,Y):-
between(0,9,S),
 %write(S),nl,
 between(0,9,E),
 %write(E),nl,
 between(0,9,N),
 %write(N),nl,

  between(0,9,D),
 %write(D),nl,
  between(0,9,M),
 %write(M),nl,
  between(0,9,O),
 %write(O),nl,
 between(0,9,R),
 %write(R),nl,
 between(0,9,Y),
 %write(Y),nl,
 S\=0,
 M\=0,
 SEND is 1000*S+100*E+10*N+D,
  MORE is 1000*M + 100*O + 10*R + E,
    MONEY is 10000*M + 1000*O + 100*N + 10*E + Y,

    % Sprawdzenie r�wno�ci
    SEND + MORE = MONEY.

zadanie5:-
solve(S,E,N,D,M,O,R,Y),
write('Rozwi�zanie: S = '), write(S), nl,
write('Rozwi�zanie: E = '), write(E), nl,
write('Rozwi�zanie: N = '), write(N), nl,
write('Rozwi�zanie: D = '), write(D), nl,
write('Rozwi�zanie: M = '), write(M), nl,
write('Rozwi�zanie: O = '), write(O), nl,
write('Rozwi�zanie: R = '), write(R), nl,
write('Rozwi�zanie: Y = '), write(Y), nl.


% Zadanie 6
%
%
%
%

calculate(X,Y):-
 between(-1000,1000,X),
 Y1 is 2*(X*X)-5*X-9,
 Y2 is (-(X*X))+(8*X)+2,
 (Y1 = Y2 -> Y = Y1 ;write('error')).

calculatebetter(X,Y):-
 between(-999,1000,X),
 Y is-(5*X-2*X+9),
 write('Y to y: '),write(Y),nl.



zadanie6:-
 calculate(X,Y),
 write('Rozwiazanie Y= '),write(Y),nl,
  write('Rozwiazanie X= '),write(X),nl.









% Zadanie 7
%


sliwki(44).

kobiety(andzia,2).
kobiety(beata,3).
kobiety(celina,4).
kobiety(danusia,5).


mezczyzni(andrzej,1).
mezczyzni(bogumil,2).
mezczyzni(cezary,3).
mezczyzni(damian,4).



ilekobiety(X):-
 Suma is 0,
 kobiety(_,X),
 Suma is X+X.
