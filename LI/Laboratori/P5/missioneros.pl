cruzarRio([M1,C1]-[M2,C2], [M3,C3]-[M4,C4]):-
    between(0, 2, M), between(0, 2, C),
    M3 is M1+M, C3 is C1+C,
    canoaOk(M3, C3),
    MC is M+C, MC>0, MC=<2,
    M4 is M2-M, M4>=0, C4 is C2-C, C4>=0,
    canoaOk(M4, C4).

unPaso(i-[M1,C1]-[M2,C2], f-[M3,C3]-[M4,C4]):-
    cruzarRio([M1,C1]-[M2,C2], [M3,C3]-[M4,C4]).
unPaso(f-[M1,C1]-[M2,C2], i-[M3,C3]-[M4,C4]):-
    cruzarRio([M2,C2]-[M1,C1], [M4,C4]-[M3,C3]).

nat(0).
nat(N):- nat(N1), N is N1 + 1.

canoaOk(0, _).
canoaOk(M, C):- M>=C.

camino(E, E, C, C).
camino(EstadoActual, EstadoFinal, CaminoHastaAhora, CaminoTotal):-
    unPaso(EstadoActual, EstSiguiente),
    \+member(EstSiguiente, CaminoHastaAhora),
    camino(EstSiguiente, EstadoFinal, [EstSiguiente|CaminoHastaAhora], CaminoTotal).

solucionOptima:- nat(N),
    camino(i-[0,0]-[3,3], f-[3,3]-[0,0], [i-[0,0]-[3,3]], C),
    length(C,N),
    write(C).
