unPaso([A,B], [0,B]) :- A > 0. %vaciar cubo5
unPaso([A,B], [A,0]) :- B > 0. %vaciar cubo8
unPaso([A,B], [5,B]) :- A < 5. %llenar cubo5
unPaso([A,B], [A,8]) :- B < 8. %llenar cubo8
unPaso([A,B], [X,Y]) :- AUX is A - (8 - B), X is max(AUX, 0), AUX2 is A + B, Y is min(8, AUX2). %verter cubo5 en cubo8
unPaso([A,B], [Y,X]) :- AUX is B - (5 - A), X is max(AUX, 0), AUX2 is B + A, Y is min(5, AUX2). %verter cubo8 en cubo5

nat(0).
nat(N):- nat(N1), N is N1 + 1.

camino( E,E, C,C ).
camino( EstadoActual, EstadoFinal, CaminoHastaAhora, CaminoTotal ):-
    unPaso( EstadoActual, EstSiguiente ),
    \+member(EstSiguiente,CaminoHastaAhora),
    camino( EstSiguiente, EstadoFinal, [EstSiguiente|CaminoHastaAhora], CaminoTotal ).

solucionOptima:-
    nat(N),                         % Buscamos solución de "coste" 0; si no, de 1, etc.
    camino([0,0],[0,2],[[0,0]],C),  % En "hacer aguas": -un estado es [cubo5,cubo8], y
    length(C,N),                    % -el coste es la longitud de C.
    write(C).
