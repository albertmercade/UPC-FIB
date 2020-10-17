#*Maximum Flow* i *Minimum cut*

## Xarxes de Flux

Un xarxa de flux és un **graf dirigit** $G = (V,E)$ que té

* vèrtex font $s \in V$
* vèrtex destí $t \in V$
* arestes amb capacitat $c$

$c(u,v)$ representa la capacitat de l'aresta $(u,v)$.

$f(u,v)$ ens dona el flux que passa per l'aresta $(u,v)$.

S'apliquen les lleis de *Kirchoff*:

1. $\forall(u,v) \in E, 0 \leq f(u,v) \leq c(u,v)$
2. Conservació de flux $\rightarrow \forall v \in V - \{s,t\}, \sum_{u \in V}f(u,v) = \sum_{z \in V}f(v,z)$
3. Valor de flux $|f| = f(s,V) = f(V,t)$

Diem que el ***max flow*** és la capacitat del ***min-cut*** de la xarxa.

Un **tall** $s-t$ succeeix quan donat un graf $G = (V,E)$ tenim una partició $V = S \cup T\  (S \cap T = \empty)$ amb $s \in S$ i $t \in T$.

## Xarxes Residuals

Donada una xarxa $G = (V,E),s,t,c$ amb flux $f$, la seva xarxa residual és $G_f = (V,E_f),c_f$ on

* si $c(u,v) - f(u,v) > 0$ llavors $(u,v) \in E_f$ i $c_f(u,v) = c(u,v) - f(u,v)$

* si $f(u,v) > 0$ llavors $(v,u) \in E_f$ i $c_f(v,u) = f(u,v)$



<img src="/Users/albertmercade/Library/Application Support/typora-user-images/Screenshot 2020-01-12 at 13.04.51.png" style="zoom:50%">



Definim un ***Augmenting Path*** com un camí simple de $s$ a $t$ per $G_f$.

<div style="page-break-after: always; break-after: page;"></div>

##Ford-Fulkerson (FF)

**Complexitat:** $T(n) = O(Cm)$, on $C$ és la capacitat del *min-cut* i $m$ el nombre d'arestes.

```pseudocode
Ford-Fulkerson(G,s,t,c)
	for all (u,v) in E
		f(u,v) = 0
	end for
	Gf = G
	while exists(s-t path in Gf) do
		P = simple path in Gf (DFS)
		fA = Augment(f,P)
		Update f to fA
		Update Gf to GfA
	end while
	return f
```

**Corresctesa:** 

Per qualsevol flux $f$ i un tall $(S,T)$ sabem que $|f| \leq c(S,T)$. 

Tenim un flux $f^*$ tal que $|f^*| = c(S^*,T^*)$, per un tall $(S^*,T^*) \implies f^*$ és el *max-flow*. 

Com el flux retornat per FF és la capacitat del *min-cut* i acabem de veure que la capacitat d'un tall és el *max-flow*, el flux retornat per FF és el *max-flow*.

## Edmonds-Karp (EK)

**Complexitat:** $T(n) = O(m^2n)$, on $m = |E|$ i $n = |V|$

```pseudocode
Edmonds-Karp(G,s,t,c)
	for all (u,v) in E
		f(u,v) = 0
	end for
	Gf = G
	while exists(s-t path in Gf) do
		P = simple path in Gf (BFS)
		fA = Augment(f,P)
		Update f to fA
		Update Gf to GfA
	end while
	return f
	
```

### *Level Graph*

Donat un graf $G = (V,E)$, definim $L_G = (V, E_G)$ com el *level graph* de $G$ en que:

* $l(v) =$ nombre d'arestes en el *shortest path* $s \rightsquigarrow v$ a $G$
* $L_G = (V, E_G)$ és el subgraf de $G$ que conté només arestes $(v,w) \in E$ tal que $l(w) = l(v) + 1$

Utilitzant BFS podem computar $L_G$ en temps $O(n + m)$.

A més una **propietat interesant** del *level graph* és que un camí $P$ és el camí més curt $s \rightsquigarrow t$, si $P$ està a $L_G$.

## Dinic's

És un altre variació de FF, simplement utilitza un altre mètode per escollir el *augmentating path*.

Té una **complexitat** de $O(n^2m)$.

| Ford-Fulkerson | Edmonds-Karp |  Dinic's  |
| :------------: | :----------: | :-------: |
|    $O(Cm)$     |  $O(m^2n)$   | $O(n^2m)$ |

