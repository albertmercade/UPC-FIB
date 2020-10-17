# Pràctica LP: Compilador & *Chatbot*

Aquest projecte consta d'un compilador d'un llenguatge per definir enquestes i un
*chatbot* que efectua les enquestes a través de Telegram i gestiona els
resultats obtinguts.

## Per començar

Aquest projecte esta desenvolupat en `python3`.

Totes les comandes que es mencionen a continuació s'han d'executar des del
directori que conté la pràctica.

### Assumpcions
Al fer el projecte he fet algunes assumpcions:
* Poden haver-hi multiples enquestes però no poden compartir preguntes, és a
dir que cada pregunta pertany només a una enquesta.
* A la definició de l'enquesta les diverses opcions d'una resposta es
delimiten amb `;`.
* Una enquesta tindrà mínim una pregunta.
* A la definició de l'enquesta, l'identificador de l'enquesta i la seqüencia de
preguntes a l'enquesta és l'últim que es defineix.
* Si la pregunta actual no va seguida de cap altre, s'acaba l'enquesta.

### Prerequisits

Per instal·lar les llibreries necessaries que no són estàndard executem la següent comanda:

```bash
$ pip3 install -r requirements.txt
```

## Execució


Aquest projecte conté dos apartats principals:
* Compilació d'una enquesta escrita amb el llenguatge *Enquestes*
* *Bot* de *Telegram* que efectua enquestes

### Compilador

El compilador pel llenguatge *Enquestes* ha estat implementat utilitzant
`antlr4`.

A `jocsprova/` hi han els jocs de prova següents:
* `prova1.txt`: és l'exemple proporcionat a l'enunciat de la pràctica.
* `prova2.txt`: conté només una enquesta però una pregunta de la que surten
alternatives és a l'hora alternativa d'un altre pregunta.
* `prova3.txt`: conté dues enquestes.
* `prova4.txt`: conté dues enquestes i dues preguntes d'enquestes diferents
comparteixen resposta.
* `prova5.txt`: conté quatre enquestes i una resposta compartida entre preguntes
de diferents enquestes.

Per compilar una o més enquestes cal posar-les a un fitxer de text (`.txt`) i
executar la següent comanda:

```bash
$ python3 cl/test.graph.py path/to/enquesta.txt
```

Per exemple per compilar `jocsprova/prova3.txt`:

```bash
$ python3 cl/test.graph.py jocsprova/prova3.txt
```

Aquesta comanda compila les enquestes contingudes a `jocsprova/prova3.txt` i a partir del AST generat al compilar crea un graf amb
`networkx` que representa les enquestes compilades.

Després genera una imatge a `cl/graph.png` que mostra el graf i a més
utilitzant `pickle` guarda el graf a `bot/graph.p`.

Finalment, a partir del graf, genera la estructura de dades per guardar les
respostes i amb `pickle` la guarda a `bot/data.p`.

Un cop ja hem compilat un fitxer que conté una o més enquestes podem
procedir a executar el *bot*.

### *Bot*

El *bot* es basarà en l'enquesta contiguda al graf de `bot/graph.p`.
Per generar aquest arxiu `pickle` primer cal compilar una enquesta de la forma explicada a l'apartat anterior.

Per interactuar amb el *bot* comencem executant la següent comanda:

```bash
$ python3 bot/bot.py
```

Un cop s'estigui executant el *script* `bot/bot.py` ja podem iniciar una conversa amb el *bot*, simplement cal tenir *Telegram* instal·lat i accedir a https://t.me/MercaQuizBot.


## Desenvolupat amb

* [ANTLR4](https://www.antlr.org/index.html) - *Parser generator* usat pel compilador
* [networkx](https://networkx.github.io/) - Llibreria per manipular grafs
* [pickle](https://docs.python.org/3/library/pickle.html) - Serialitzador d'objectes
* [python-telegram-bot](https://github.com/python-telegram-bot/python-telegram-bot) -
Llibreria per accedir a l'API de Telegram Bot
* [matplotlib](https://matplotlib.org/) - Llibreria per generar gràfics


## Autor

* **Albert Mercadé Plasencia** - albert.mercade.plasencia@est.fib.upc.edu
