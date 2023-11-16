---
tags: 
  - algo
date: 2023-11-16
completed: true
---

## Polynom


$P(x) := \sum_{j=0}^{n-1}p_jx^j$
$\vec{P} = (p_0,p_1,\dots,p_{n-1})$

- $n$ je velikost polynomu
- **normalizace**
	- $p_{n-1} \ne 0$(stupeň polynomu) nebo $n = 0$

> [!info] Polynom $n=0$
> Hodnota při $n=0$ je $-1$

$$
\begin{align}
R&=PQ \lhd \text{BÚNO P,Q stejně velké} \\
R(x)&= \left(\sum_{j=0}^{n-1}p_jx^j\right)\left(\sum_{k=0}^{n-1}q_kx^k\right) \\
&= \sum_{j,k=0}^{n-1}p_jq_kx^{j+k} \\
&= \sum_{t=0}^{2n-2}\left(\sum_{j=0}^{t}p_jq_{t-j}\right)x^t
\end{align}
$$

### Rovnost polynomů

- **identita**
	- $P \equiv Q$
	- stejné vektory koefic. po normalizaci
	- $\rightarrow$ rovnost funkcí
- **rovnost funkcí**
	- $\forall x: P(x) = Q(x)$

### Nechť $P,Q$ jsou polynomy stupně max $d$ a $P(x_j)=Q(x_j)$ pro navzájem různá čísla $x_0, \dots, x_d$. Potom $P \equiv Q$

#### Lemma pro polynom

Pro polynom $P$ stupně $d \ge 0$.  $(\# x : P(x) = 0) \le d$


#### Důkaz

$R := P-Q$
$\forall j: R(x_j) = P(x_j)-Q(x_j) = 0$
stupeň $R \le d$.

Podle lemmatu $R \equiv O$, takže $P \equiv Q$.


### Graf polynomu

Pro polynomy velikosti $n$ pevně zvolíme $x_0, \dots, x_{n-1}$ navzájem různá. $P \mapsto(P(x_0),\dots,P(x_{n-1}))$.

> [!note] Pozorování
> Pokud $R = PQ$, pak $R(x) = P(x)Q(x)$


### Complexní čísla

$w \in \mathbb{C}$ je primitivní $n$-tá odmocnina z $1 \equiv w^n = 1$ a $w^1,\dots,w^{n-1} \ne 0$

> [!note] Pozorování
> $w^j \ne w^k$ pro $0 \le j \lt k \lt n$, kdyby $w^j = w^k$, pak $\frac{w^k}{w^j} = 1 = w^{k-j}$ spor

> [!note] Pozorování
> Pro sudé $n \rightarrow w^{n/2} = -1$
> 

## Algoritmus FFT(Rychlá Fourierova transformace)

Vstup:
- $n = 2^k$
- $\omega$ primitivní $n$-tá odmocnina z 1
Výstup:
- $(y_0,\dots,y_{n-1})$ graf $P$ v bodech $(\omega^0,\dots,\omega^{n-1})$


- Pokud $n = 1: y_0 \leftarrow p_0$ a končíme
- Jinak se rekurzivně zavoláme na sudou a lichou část koeficientů
	- $(s_0,\dots,s_{n/2-1)} \leftarrow \text{FFT}(n/2, w^2,(p_0,p_2,\dots,p_{n-2})$
	- $(l_0,\dots,l_{n/2-1)} \leftarrow \text{FFT}(n/2, w^2,(p_0,p_2,\dots,p_{n-2})$
- Z grafů obou částí poskládáme graf celého polynomu
	- Pro $j=0,\dots,n/2-1$:
		- $y_j \leftarrow s_j + \omega^j*l_j$
		- $y_{j+n/2} \leftarrow s_j + \omega^j*l_j$

## Diskrétní Fourierova transformace (DFT)

$F : \mathbb{C}^n \rightarrow \mathbb{C^n}$

$\vec{y} = F(\vec{x}) \equiv \forall j : y_j = \sum_{k=0}^{n-1}x_k\omega^{jk}$


