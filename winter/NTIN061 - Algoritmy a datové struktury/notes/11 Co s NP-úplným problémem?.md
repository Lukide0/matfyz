---
tags: 
  - algo
date: 2024-01-04
completed: true
---
# Co s NP-úplným problémem?

- malé vstupy
- speciální vstupy
- aproximační alg.
- heuristiky
- vše dohromady

## Největší nezávislá množina ve stromu

### Lemma

Je-li $T$ strom  a $l$ jeho list. Pak aspoň 1 největší nzm obsahuje $l$.

Nechť $M$ je nějaká největší nzm.
1. $l \in M$
2. $l \notin M$, pak existuje soused $s$
	1. $s \notin M$, pak můžeme přidat $l$ což je spor
	2. $s \in M$, prohodíme $l$ a $s$ a tím nezmenšíme ani nezvětšíme nzm a tím nezmenšíme ani nezvětšíme nzm a tím nezmenšíme ani nezvětšíme nzm a tím nezmenšíme ani nezvětšíme nzm

### Algo

$\text{DFS}(v):$
- $nz(v) \leftarrow \text{ano}$
- Pro $s$ syny $v$:
	- $DFS(s)$
	- Pokud $nz(s) = \text{ano}$
		- $nz(v) \leftarrow \text{ne}$

## Barvení intervalů

- setřídíme začátky i konce intervalů $[x_i,y_i]$
- $b \leftarrow 0$, $V \leftarrow \emptyset$
- Procházíme začátky a konce
	- $x_i$ : 
		- Pokud $V \neq \emptyset : b_i \leftarrow$ libovolný prvek odebraný z $V$
		- Jinak $b \leftarrow b + 1$ a $b_i \leftarrow b$
	- $y_i$ : Do $V$ přidáme $b_i$

## Problém batohu

- Předměty $1,\dots,n$
- hmotnosti $h_1,\dots,h_n$
- ceny $c_1,\dots,c_n$
- nosnost batohu $H$

Chceme $I \subseteq \{1,\dots,n\}$ tž. $h(I) = \sum_{i \in I}h_i \leq H, c(I)$ je max

Chceme alg. poly v $n, C = \sum_{i}c_i$

- $A_k(c) := \text{min. hmotnost podmnožiny z}\{1,\dots,k\}\text{ ,která má cenu c}$
	- $k$ počet předmětů
	- $c$ je cena

První řádek $A_0(0) = 0$ a $A_0(c) = \infty$ 
$A_k(c) = \min\begin{cases}A_{k-1}(c) \\ A_{k-1}(c - c_k) + h_k & \text{pokud }c \ge c_k \end{cases}$

> [!info] Celá tabulka
> $O(n*C)$

$C^* := \max\{c | A_n(c) \le H \}$ maximální dosažitelná cena.

$B_k(c) := \text{max. prvek podmnožiny A nebo \{\}}$
$B_0(c) = \emptyset$

Stejně jako u $A_k(c) = min\dots$ ale s $B_k(c)$

### Rekostrukce opt. množiny

$$
\begin{align}
p_1 & := B_k(c^*) \\
p_2 & := B_{k - 1}(c^* - c_{p_1}) \\
\vdots
\end{align}
$$
Problém batohu řešíme v čase $O(n * C)$.

## Problém obchodního cestujícího

V ohodnoceném grafu, hledáme nejkratší hamiltonovkou kružnici.

**Omezení:**
- úplný graf
- trojúhelníková nerovnost

### Aproximační alg.

Máme řešení v nich přípustné a v nich optimální. Máme cenovou funkci a chceme min. nebo max..

### 2-aproximace obchodního cestujícího v metrickém prostoru

$T \leftarrow$ min. kostra
Obejdeme kostru $2\times$. Zavedeme zkratky, pak $\leq 2T$. 

$T \leq OPT \Rightarrow \text{výstup} \leq 2T \leq 2OPT$
