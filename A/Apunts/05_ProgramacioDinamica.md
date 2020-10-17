# Programació Dinàmica

La programació dinàmica (PD) és una tècnica per computar eficientment recurrències guardant resultats parcials i reutilitzant-los quan ho necessitem.

Podem aplicar PD a problemes que tenen una estructura adient:

* **Subproblemes simples**: el problema es pot dividir en subproblemes similars.
* **Subestructura òptima**: la solució òptima al problema és una composició de les solucions òptimes dels subproblemes
* **Subproblemes recurrents**: la solució recursiva conté un nombre petit de subproblemes repetits.

## Tipus de PD

### *Bottom-Up*

És la implementació **iterativa** de PD. Té un cost temporal **polinòmic** millor que la implementació *top-down*.

### *Top-Down*

Consisteix en implementar PD **recursivament** amb l'ajuda de *memoization* (guardar resultats parcials per no haver de recalcular-los). També té un cost **polinòmic** però el factor constant és habitualment superior al de *bottom-up*. D'altra banda, acostuma a ser més fàcil de programar i també més concís i elegant.

## Passos per implementar PD

1. Veure que el nombre de **subproblemes diferents no creix exponencialment** (habitualment els subproblemas ens haurien de cabre en un vector o matriu) i **definir les variables**.
2. Trobar la **recurrència correcte**, és a dir trobar la solució al problema com a funció de solucions a subproblemes.
3. Escollir una estructura de dades òptima i computar la solució *bottom-up* o *top-down*
4. **Optimitzar la solució** (no sempre cal generar tots els subproblemes)
