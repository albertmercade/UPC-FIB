% Funcions auxiliars -------------
concat([],L,L).
concat([X|L1],L2,[X|L3]):- concat(L1,L2,L3).

suma([],0).
suma([K|L],X) :- suma(L,X1), X is X1 + K.

pert_con_resto(X,L,Resto):- concat(L1,[X|L2],L), concat(L1,L2,Resto).

permutacion([],[]).
permutacion(L,[X|P]) :- pert_con_resto(X,L,R), permutacion(R,P).

inverso([],[]).
inverso(L,[X|L1]):- concat(L2,[X],L), inverso(L2,L1).

unpaso(A+B,A+C):- unpaso(B,C),!.
unpaso(B+A,C+A):- unpaso(B,C),!.
unpaso(A*B,A*C):- unpaso(B,C),!.
unpaso(B*A,C*A):- unpaso(B,C),!.
unpaso(0*_,0):-!.
unpaso(_*0,0):-!.
unpaso(1*X,X):-!.
unpaso(X*1,X):-!.
unpaso(0+X,X):-!.
unpaso(X+0,X):-!.
unpaso(N1+N2,N3):- number(N1), number(N2), N3 is N1+N2,!.
unpaso(N1*N2,N3):- number(N1), number(N2), N3 is N1*N2,!.
unpaso(N1*X+N2*X,N3*X):- number(N1), number(N2), N3 is N1+N2,!.
unpaso(N1*X+X*N2,N3*X):- number(N1), number(N2), N3 is N1+N2,!.
unpaso(X*N1+N2*X,N3*X):- number(N1), number(N2), N3 is N1+N2,!.
unpaso(X*N1+X*N2,N3*X):- number(N1), number(N2), N3 is N1+N2,!.

%================================= EJERCICIOS =================================
% Ej 2 ----------------------------
prod([X],X).
prod([X|L],P) :- prod(L,P1), P is P1*X.

% Ej 3 ----------------------------
pescalar([X],[Y],P) :- P is X*Y.
pescalar([X|L1], [Y|L2], P) :- pescalar(L1,L2,P1), P is X*Y + P1.

% Ej 4 ----------------------------
interseccion([], _ , []).
interseccion([X1|L1], L2, [X1|L3]) :- member(X1,L2), !,
    interseccion(L1, L2, L3).
interseccion([L1], L2, L3) :- interseccion(L1,L2,L3).


union([], L2, L2).
union([X1|L1], L2, L3) :- member(X1,L2), !, union(L1,L2,L3).
union([X1|L1], L2, [X1|L3]) :- union(L1,L2,L3).

% Ej 5 ----------------------------
ultimo(L,X) :- concat(_,[X],L).

inverso([],[]).
inverso(L, [X|S]) :- concat(L2,[X],L), inverso(L2, S).

% Ej 6 ----------------------------
fib(1,1).
fib(2,1).
fib(N,F) :- N>2, N1 is N - 1, fib(N1,F1), N2 is N - 2, fib(N2,F2), F is F1 + F2.

% Ej 7 ----------------------------
dados(0,0,[]).
dados(P,N,[X|L]) :- N>0, member(X,[1,2,3,4,5,6]), P1 is P-X, N1 is N-1,
    dados(P1,N1,L).

% Ej 8 ----------------------------
suma_demas(L) :- concat(L1,[X|L2],L), concat(L1,L2,R), suma(R,X), !.

% Ej 9 ----------------------------
suma_ants(L) :- concat(L1,[X|_],L), suma(L1,X), !.

% Ej 10 ---------------------------
card([],[]).
card( [X|L] , [ [X,N1] |Cr] ):-card(L,C),pert_con_resto([X,N],C,Cr),!,N1 is N+1.
card( [X|L] , [ [X,1]   |C] ):-card(L,C).

card(L):-card(L,C),write(C).

% Ej 11 ---------------------------
esta_ordenada([]).
esta_ordenada([_]) :- !.
esta_ordenada([X1,X2|L]) :- X1 =< X2, esta_ordenada([X2|L]).

% Ej 12 ---------------------------
ordenacion(L1,L2) :- permutacion(L1,L2), esta_ordenada(L2).

% Ej 13 ---------------------------
% Si tenemos una lista de longitud n, el coste de generar todas las
% permutaciones sera n! y por cada permutacion comprobamos si esta ordenada que
% hace n-1 comparaciones. Por lo tanto el caso peor tiene un coste de (n-1)n!

% Ej 14 ---------------------------
insercion(X, [], [X]).
insercion(X,[M|ML], [X,M|ML]) :- X =< M.
insercion(X,[M|ML], [M|NL]) :- M < X, insercion(X,ML,NL).

ordenacion1([X],[X]).
ordenacion1([L|L1],LF) :- ordenacion1(L1,L2), insercion(L,L2,LF).

% Ej 15 ---------------------------
% Si tenemos una lista de tamaño n. En el caso peor la lista a ordenar estara
% del reves y por cada elemento que insertemos el coste de insercion sera n.
% Por lo tanto si insertamos n elementos, el coste de ordenar la lista es de
% n*n = n^2. Es decir complejidad quadratica.

% Ej 16 ---------------------------
partir([],[],[]).
partir([A],[A],[]).
partir([A,B|L],[A|LA],[B|LB]) :- partir(L,LA,LB).

juntar([],L2,L2).
juntar(L1,[],L1).
juntar([X|L1],[Y|L2],[X|L]) :- X =< Y, juntar(L1,[Y|L2],L).
juntar([X|L1],[Y|L2],[Y|L]) :- Y < X, juntar([X|L1],L2,L).

ordenacionMerge([],[]).
ordenacionMerge([X],[X]).
ordenacionMerge(L,LF) :- partir(L,L1,L2), ordenacionMerge(L1,SL1),
    ordenacionMerge(L2,SL2), merge(SL1,SL2,LF).

% Ej 17 ---------------------------
escribir([]):-write(' '),nl,!.
escribir([X|L]):- write(X), escribir(L).

nperts(_,0,[]):-!.
nperts(L,N,[X|S]):- pert(X,L), N1 is N-1, nperts(L,N1,S).

diccionario(A,N):-  nperts(A,N,S), escribir(S), fail.

% Ej 18 ---------------------------
es_palindromo([]).
es_palindromo([_]) :- !.
es_palindromo(L) :- concat([X|L1],[Y],L), X == Y, es_palindromo(L1).

palindromos(L) :- permutacion(L,LP), es_palindromo(LP), write(LP), nl, fail.

% Ej 19 ---------------------------
suma([],[],[],C,C).
suma([X1|L1],[X2|L2],[X3|L3],Cin,Cout) :-
	X3 is (X1 + X2 + Cin) mod 10,
	C  is (X1 + X2 + Cin) //  10,
	suma(L1,L2,L3,C,Cout).


send_more_money :-

	L = [S, E, N, D, M, O, R, Y, _, _],
	permutacion(L, [0,1,2,3,4,5,6,7,8,9]),
	suma([D, N, E, S], [E, R, O, M], [Y, E, N, O], 0, M),

	write('S = '), write(S), nl,
	write('E = '), write(E), nl,
	write('N = '), write(N), nl,
	write('D = '), write(D), nl,
	write('M = '), write(M), nl,
	write('O = '), write(O), nl,
	write('R = '), write(R), nl,
	write('Y = '), write(Y), nl,
	write('  '), write([S,E,N,D]), nl,
	write('  '), write([M,O,R,E]), nl,
	write('-------------------'), nl,
	write([M,O,N,E,Y]), nl.

% Ej 20 ---------------------------
simplifica(E,E1):- unpaso(E,E2),!, simplifica(E2,E1).
simplifica(E,E).

% Ej 21 ---------------------------
mis:- camino( [lado1,3,3], [lado2,0,0], [[lado1,3,3]] ).

camino(Fin,Fin,Cam):- inverso(Cam,Sol), write(Sol), nl.
camino(Ini,Fin,Cam):- paso(Ini,E), novisitado(E,Cam), camino(E,Fin,[E|Cam]).

novisitado(E,Cam):- member(E,Cam), !,fail.
novisitado(_,_).

paso( [lado1,M1,C1], [lado2,M2,C2] ):- pasan(M,C), M2 is M1-M, C2 is C1-C,
    safe(M2,C2).
paso( [lado2,M1,C1], [lado1,M2,C2] ):- pasan(M,C), M2 is M1+M, C2 is C1+C,
    safe(M2,C2).

pasan(M,C):- member( [M,C], [ [0,1], [0,2], [1,0], [1,1], [2,0] ] ).

safe(M,C):- M>=0, M=<3, C>=0, C=<3, nocomen( M, C),
            M1 is 3-M,  C1 is 3-C,  nocomen(M1,C1).

nocomen(0,_).
nocomen(M,C):- M>=C.
