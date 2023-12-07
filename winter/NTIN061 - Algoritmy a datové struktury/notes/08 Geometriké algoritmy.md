---
tags:
  - algo
date: 2023-11-30
completed: true
---
## Konvexní obal

- Setřídíme body zleva doprava (nebo lexikograficky)
- $H \leftarrow$ levý bod, $D \leftarrow H$
- Pro všechny ostatní body $b$:
	- Dokud $|H| \ge 2$ a $H[-2]H[-1]b$ otáčí doleva
		- odebereme poslední bod z $H$
	- Přidáme b na konec $H$
	- Podobně pro $D$
- Výstup: $D$

Čas $\Theta(n \log n)$

## Průsečíky úseček

[Průvodce](http://pruvodce.ucw.cz/static/pruvodce.pdf#s16.2)

- **Události**
	- Začátky
	- Konce
	- Průsečíky
- **Průřez(P)**
	- Množina úseček proťatých zametací přímkou seřazen zleva doprava.
- **Kalendář událostí(K)**

### Algo

- $P \leftarrow \emptyset$
- $K \leftarrow \{ \text{začátky a konce všech úseček}\}$
- Opakovaně odebíráme nejvyšší událost z kalendáře
	- začátek
		- přidáme úsečku do $P$
	- konec
		- odebereme z $P$
	- průsečík
		- výstup prohodíme v $P$
	- Přepočítáme naplánované průsečíkové události v okolí změny v $P$

### Reprezentace

+ kalendář událostí
	+ halda nebo BVS
	+ max $3n$ událostí ($2n + p$)
	+ $O(\log n)$ čas/op
- průřez
	- BVS s úsečkami jako klíčí ($x \lt y = x \text{ je vlevo od }y$)
	- max $n$ úseček
	- $O(\log n)$ čas/op

$O((n+p)\log n)$

## Voroného diagram

- **místa**
	- $X = \{x_1, \dots, x_n\}$
- **oblasti** 
	- $O_1,\dots, O_n$
	- $O_i := \{y \in \mathbb{R}^2 | \forall j \text{ d}(y,x_i) \le d(y,x_j) \}$
		- konvexní zobecněné mnohoúhelníky
Umí se v $O(n \log n)$

### Lokalizace bodu

Rozklad roviny na oblasti. Do jaké oblasti patří zadaný bod?

$2\times$ bin. vyhledávání.

#### Persistentní DS

- zápis -> nová verze
- dotaz -> dostane verzi

##### Semipersist. BVS:

- $O(\log n)$ čas na operaci
- $O(\log n)$ paměť/verze

## Rozhodovací problém

Funkce z $\{0,1\}^* \rightarrow \{0,1\}$. 

### Bip. graf a $k \in \mathbb{N}$

![[bip_graf.png]]