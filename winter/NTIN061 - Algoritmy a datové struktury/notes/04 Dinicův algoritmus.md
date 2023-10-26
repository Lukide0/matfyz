---
tags:
  - algo
  - vyhledavani
  - graph
date: 2023-10-26
completed: true
---
## Průtok

Toku $f$ přiřadíme průtok $f^*: f^*(uv) := f(uv) - f(vu)$

> [!info] Pozorováni
> 1. $f^*(uv) = -f^*(vu)$
> 2. $f^*(uv) \le c(uv)$
> 3. $-c(vu) \le f^*(uv)$
> 4. $\forall v \ne z,s: \sum_{uv \in E}f^*(uv) = f^\Delta(v) = 0$

$r(uv) := c(uv) - f(uv) + f(vu) = c(uv) - f^*(uv)$

### Pokud $f^*: E \rightarrow \mathbb{R}$ splňuje $\text{1 \& 2 \& 3}$

Potom $\exists f$ tok, jehož průtokem je $f^*$.

$uv, vu \in E$
$$\begin{align}
\text{BÚNO} & f^*(uv) \ge 0 \\
& f(uv) := f^*(uv) \\
& f(vu) = 0
\end{align}
$$
## Síť rezerv

K síti $(V,E,z,s,c)$ a toku $f$ v ní je síť rezerv $(V,E,z,s,r)$


### O zlepšování toků

Pro libovolný tok $f$ v síti $S$ a libovolný tok $g$ v síti $R(S, f )$ lze v čase $O(m)$ (m je počet hran) nalézt tok $h$ v síti $S$ takový, že $|h| = |f | + |g|$.

$h^* := f^* + g^*$
$h^*(uv) = f^*(uv) + g^*(uv) \le f^*(uv) + r(uv) \le f^*(uv) + c^(uv) - f^*(uv) = c(uv)$

## Blokující tok

$\forall P$ cesta ze $z$ do $s$
$\exists e \in P: f(e) = c(e)$

## Vrstevnatá/pročištěná sít

Pokud každý vrchol i hrana leží na nějaké nejkratší cestě ze $z$ do $s$

## Dinicův algoritmus $O(n^2m)$

- $f \leftarrow$ všude nulový tok
- opakujeme:
	- $R \leftarrow$ síť rezerv vzhledem k $f$
	- smažeme z $R$ nulové hrany
	- pročistíme $R$
	- pokud $R$ je prázdná skončíme
	- $g \leftarrow$ blokující tok v $R$
	- vylepšíme $f$ pomocí $g$ ([[#O zlepšování toků]])
- vracíme $f$

![[res/dinicuv_algo.png]]

### Čištění sítě $O(m)$

- $\text{BFS}$ ze $z$ rozdělíme na vrstvy
- smažeme vrstvy za $s$
- smažeme hrany, které nevedou o vrstvu vpřed
- Odstraníme „slepé uličky“, tedy vrcholy s $deg^{out}(v) = 0$:

### Hledání blokujícího toku $O(n*m)$

- $g \leftarrow 0$
- dokud $\exists P$ cesta ze $z$ do $s$ v $R$
	- $\epsilon \leftarrow \min_{e \in P}(r(e) - g(e))$
	- $\forall e \in P: g(e) \leftarrow g(e) + \epsilon$
	- Pokud $g(e) = r(e)$ hranu $e$ smažeme
	- dočistíme síť (smažeme "slepé uličky")
- vracíme $g$

###  O počtu pročištěných vrstev

Mezi sousedními fázemi vzroste počet vrstev pročištěné sítě alespoň o 1 $\Rightarrow$ Počet fází je $\le n$

Cesta ze $z$ do $s$ obsahuje nejvýše $n$ hran, takže k prodloužení cesty dojde nejvýše $n$-krát.

## Goldbergův algoritmus

- nastavíme počáteční výšky: 
	- $h(z) \leftarrow n$
	- $h(v) \leftarrow 0$ pro všechny $v \ne z$
- vytvoříme počáteční vlnu:
	- $f \leftarrow$ všude nulová funkce
	- $f(zv) \leftarrow c(zv)$, kdykoliv $zv \in E$
- dokud existuje vrchol $u \ne z, s$ takový, že $f^\Delta(u) \gt 0$:
	- pokud existuje hrana $uv$ s $r(uv) \gt 0$ a $h(u) \gt h(v)$, převedeme přebytek po hraně $uv$.
	- v opačném případě zvedneme $u: h(u) \leftarrow h(u) + 1$.

- $f(\_) \leftarrow 0$
- $\forall zv \in E: f(zv) \leftarrow c(zv)$
- $h(\_) \leftarrow 0$, $h(z) \leftarrow n$
- dokud $\exists v \ne z,s: f$

### Výška

$h: V \rightarrow \mathbb{N}$
### Vlna

$\forall e \in E: f(e) \le c(e)$
$\forall v \ne z,s: f^\Delta(v) = 0$

### Převedení přebytku

$$
\begin{align}
f^\Delta(u) \gt 0 \\
r(uv) \gt 0 \\
\delta := \min(f^\Delta(u), r(uv)) \\
f'(uv) := f(uv) + \delta \\
\end{align}
$$

#### Důsledky převedení přebytku

$$
\begin{align}
f'^\Delta(u) = f^\Delta(u) - \delta \\
f'^\Delta(v) = f^\Delta(v) + \delta \\
r'(uv) = r(uv) - \delta \\
r'(vu) = r(vu) + \delta \\
\end{align}
$$

