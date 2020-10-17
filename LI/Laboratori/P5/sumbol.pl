programa(L) :- programa(L, []). % Podem consumir tots els elements?
programa --> begin,instrucciones,end.

instrucciones(L) :- instrucciones(L, []).
instrucciones --> instruccion.
instrucciones --> instruccion,semi,instrucciones.

instruccion(L) :- instruccion(L, []).
instruccion --> variable,equals,variable,plus,variable.
instruccion --> if,variable,equals,variable,then,instrucciones,else,instrucciones.

variable(L) :- variable(L, []).
variable --> [x].
variable --> [y].
variable --> [z].

begin --> [begin].
end --> [end].
if --> [if].
then --> [then].
else --> [else].
semi --> [;].
equals --> [=].
plus --> [+].
