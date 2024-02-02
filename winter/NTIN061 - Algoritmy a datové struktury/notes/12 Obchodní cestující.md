---
tags:
  - algo
date: 2024-01-11
completed: true
---

## Obchodní cestující bez trojúhelníkové nerovnosti

Pokud pro nějaké $t \ge 1$ existuje algoritmus $t$-aproximující $TSP$ v úplných grafech bez troj. nerovnosti v polynom. čase, pak $P = NP$


Ukážeme $t$-aprox. $\Rightarrow$ poly. alg. pro ham. kružnici $\Rightarrow P=NP$

- Ze zadaného grafu $G$ vytvoříme úplný graf $G'$, kde pokud byla hrana v $G$, pak má délku 1, jinak $c$. 
- Původní HK(ham. kruž.) 
	- délka $n$
- Nová HK
	- délka $\ge n-1+c$

Potřebujeme $tn \lt n-1+c \rightarrow c \ge tn-n+1 \rightarrow c=tn$

## Aproximační schéma pro problém batohu

[Poznámky](https://pruvodce.ucw.cz/static/pruvodce.pdf#page=490)

