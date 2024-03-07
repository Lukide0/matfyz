---
tags:
  - statistika
  - pravdepodobnost
date: 2024-03-07
completed: true
---
##  Diskrétní náhodné veličiny

- $(\Omega, \mathcal{F}, P)$
- $X$ je diskrétní náhodná veličina (dnv), pokud
	- $X: \Omega \rightarrow \mathbb{R}$
	- $Im(X)$ (obor hodnot) je konečná nebo spočetná
	- $\{\omega \in \Omega | X(\omega) = x \in \mathbb{R}\} \in \mathcal{F}$

- náhodná veličina $X$ nám určí pravděpodobnostní prostor:
	- $\Omega = Im(X)$
	- $\mathcal{F} = \mathcal{P}(\Omega)$
	- $p(x) = P(X=x)$
		- $p(x): \mathbb{R} \rightarrow [0,1]$
		- $p_x(1) = p$
		- $p_x(0) = 1-p$

### Bernoulliho rozdělení

$X = \begin{cases}0 & 1-p \\ 1 & p \end{cases} \Leftrightarrow X \sim \text{Ber}(p)$

- indikátorová náhodná veličina
	- $A \in \mathcal{F}$
	- $I_A(\omega) = \begin{cases} 1 & w \in A \\ 0 & w \notin A \end{cases}$
		- $I_A \sim \text{Ber}(P(A))$

### Geometrické rozdělení

$P(X=1) = P$
$P(X=2) = P(1-P)$
$P(X=k) = P(1-p)^{k-1}$
$P(X=x) = 0$, pro $x \in \mathbb{R} \setminus \mathbb{N}$

$X \sim \text{Geo(p)}$

### Binomické rozdělení

$P(X=k) = p_x(k) = {n \choose k}p^k(1 - p)^{n-k}$
$X \sim \text{Bin}(n,p)$
