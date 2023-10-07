---
tags: 
date: 2023-10-05
completed: true
---
## Značení

- $\sum$ abeceda
- $\alpha, \beta, \gamma$ slova/řetězce
- $x,y,z$ znaky
- $|\alpha|$ délka řetězce
- $\varepsilon$ prázdný řetězec
- $\alpha\beta$ zřetězení
- $\alpha[i]$ i-tý znak ($i \ge 0$)
- $\alpha[i:j]$ podřetězec/slice
	- $\alpha[:j] = \alpha[0:j]$ prefix
	- $\alpha[i:] = \alpha[i:|\alpha|]$ suffix

## Hledání

- jehla $\iota$
	- $J = |\iota|$
- seno $\delta$
	- $S = |\delta|$

- primitivní algo $\theta(J*S)$ 
	- hledá od každého písmene
### Df: Stav algoritmu

Nejdelší prefix jehly, který je suffixem sena.

![](res/stav_algo.excalidraw)

$\alpha'x$ je suffixem $\delta x \Rightarrow \alpha'$ je suffixem $\delta$
$\alpha'x$ je prefixem $\iota \Rightarrow \alpha'$ je prefixem $\iota$
$\alpha'$ je suffixem $\alpha$

### Df: Zpětná funkce

$z(\alpha)$ přiřadí stavu $\alpha$ jeho nejdelší suffix, který je prefixem jehly.

## KMP (Knuth, Morris, Pratt)

- Vyhledávací automat
	- stavy = prefixy jehly

### BARBAROSSA a jehla BARBAR

![[res/kmp_hrany.png.png]]
### Krok(s,x)

$Z :=$ pole se zpětnými hranami

- Dokud $s \gt 0 \text{ \& } \iota[s] \ne x$ (zpětné hrany)
	- $s \leftarrow Z[s]$
- Pokud $\iota[s] = x$ (dopředná hrana)
	- vrátíme $s + 1$
- Jinak vrátíme 0

### KMP hledej($\delta$)

- $s \leftarrow 0$
- Pro všechny znaky $x \in \delta$
	- $s \leftarrow$ Krok(s,x)
	- Je-li $s=J$ ohlásíme výskyt

> [!info] Invariant
> Stav $s$ = max. délce prefixu jehly, která je suffixem zatím zpracovaného sena. 

### Složitost

$\#$ dopředných kroků $\le S$
$\#$ zpětných kroků $\le \#$ dopředných kroků

KMP hledej běží v čase $\theta(S)$ 

### KMP Konstrukce

- $J \leftarrow |\iota|$
- $Z[0] \leftarrow \varnothing, Z[1] \leftarrow 0$ 
- $s \leftarrow 0$
- Pro $i = 2, \dots, J$
	- $s \leftarrow$ Krok($s,\iota[i - 1]$)
	- $Z[i] \leftarrow s$

> [!info] Složitost
> Běží v čase $\theta(J)$
