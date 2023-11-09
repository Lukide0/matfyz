---
tags:
  - algo
  - vyhledavani
  - graph
date: 2023-11-09
completed: true
---
První část: [[04 Dinicův algoritmus#Goldbergův algoritmus]]

## Invariant A(základní)

1. $f$ je vlna
2. $\forall v: h(v)$ neklesá
3. $h(z) = n, h(s) = 0$
	- nikdy nezvedáme zdroj ani spotřebič 
4. $\forall v\ne z: f^\Delta(v) \ge 0$

## Invariant S(o spádu)

$\nexists uv \in E: r(uv) \gt 0 \land h(u) \gt h(v) + 1$

## Lemma K (korektnost)

Pokud se algoritmus zastaví, finální $f$ je max. tok.

### Důkaz K

1. $f$ je tok
2. $f$ je max. tok
	- Kdyby nebyl max $\Rightarrow \exists P$ cesta ze $z$ do $s$ nenasycená

> Pro spor předpokládejme, že tomu tak není. Ze správnosti Fordova-Fulkersonova algoritmu plyne, že tehdy musí existovat nenasycená cesta ze zdroje do stoku. Uvažme libovolnou takovou cestu. Zdroj je stále ve výšce $n$ a stok ve výšce 0 (viz invariant A). 
> 
> Tato cesta tedy překonává spád $n$, ale může mít nejvýše $n−1$ hran. Proto se v ní nachází alespoň jedna hrana se spádem alespoň 2. Jelikož je tato hrana součástí nenasycené cesty, musí být sama nenasycená, což je spor s invariantem S. Tok je tedy maximální.

## Invariant C(o cestě do zdroje)

$\forall v : f^\Delta(v) \gt 0 \Rightarrow \exists P$ nenasycená cesta z $v$ do $z$.

### Důkaz C

$A := \{ t \in V| \exists \text{nenasyc. cesta}v \rightarrow t\}$, chceme dokázat $z \in A$

$\sum_{a\in A}f^{\Delta}(a) = f(\overline{A},A) - f(A,\overline{A})$

Obsahuje kladný člen $f^\Delta(v) \Rightarrow$ obsahuje záporný člen a to musí být $f^\Delta(z) \rightarrow z \in A$
## Invariant V(o výšce)

$\forall v : h(v) \le 2n$

## Lemma Z(zvednutí)

$\text{\# zvednutí} \le 2n^2$

### Inv. C $\Rightarrow$ Inv. V

Uvažme první poručení:
- zvedneme $v \in V$ z výšky $2n$ tehdy $f^\Delta(v) \gt 0 \Rightarrow \exists P$ nenasycená cesta $v \rightarrow z$

## Převedení je nasycené

Právě když vynuluje rezervu

> [!info] Pozorování
> Po hraně $uv$ vynuluje $f^\Delta(u)$

## Lemma S("sytá" převedení)

$\text{\# nasycených převedení} \le n*m$ 

> Zvolíme hranu $uv$ a spočítáme, kolikrát jsme po ní mohli nasyceně převést. Po prvním nasyceném převedení z $u$ do $v$ se vynulovala rezerva hrany $uv$. V tomto okamžiku muselo být $u$ výše než $v$, a dokonce víme, že bylo výše přesně o 1 (invariant S). Než nastane další převedení po této hraně, hrana musí opět získat nenulovou rezervu. Jediný způsob, jak k tomu může dojít, je převedením části přebytku z $v$ zpátky do $u$. Na to se musí v dostat (alespoň o 1) výše než $u$. A abychom provedli nasycené převedení znovu ve směru z $u$ do $v$, musíme u dostat (alespoň o 1) výše než $v$. Proto musíme u alespoň o 2 zvednout nejprve na úroveň $v$ a pak ještě o 1 výše. 
> 
> Ukázali jsme tedy, že mezi každými dvěma nasycenými převedeními po hraně $uv$ musel být vrchol $u$ alespoň dvakrát zvednut. Podle lemmatu V k tomu ale mohlo dojít nejvýše $n$-krát za celý výpočet, takže všech nasycených převedení po hraně $uv$ je nejvýše $n$ a po všech hranách dohromady nejvýše $nm$.

## Lemma N(nenasycená převedení)

Potenciál $\Phi := \sum_{v \ne z,s \land f^\Delta(v) \gt 0}h(v)$

1. $\Phi \ge 0$
2. na počátku $\Phi = 0$
3. zvednutí
	- zvýší $\Phi$ o 1
4. SP
	- zvýší max o $2n$
5. NP
	- sníží aspoň o 1

Počet nenasycených převedení $\in O(n^2m)$

## Implementace

1. $S :=$ seznam vrcholů s přebytkem
	- údržba $O(1)$ při změně $f^\Delta(v)$
2. $\forall v: K(v) := \{vw | r(vw) \gt 0 \land h(w) \gt h(v)\}$
	 - převedení po $uv$ $O(1)$
	 - zvednutí $u$ $O(n)$

$O(2n^2*n + n*m*1 + n^2*m*1) = O(n^2m)$


## Lemma N'

V algoritmu s výběrem nejvyššího $v$ s $f^\Delta(v) \gt 0$ nastane $O(n^3)$ NP.

$H := \max\{h(v)| f^\Delta(v) \gt 0 , v \ne z,s\}$

Fáze končí změnou $H$
1. zvýšení zvednutím
	- max $2n^2$-krát
	- vždy roste o 1
2. snížení aspoň o 1
	- max $2n^2$-krát

$\text{\# fází} \in O(n^2)$

> [!info] Pozorování
> Během 1 fáze se vrchol účastní max. 1 NP