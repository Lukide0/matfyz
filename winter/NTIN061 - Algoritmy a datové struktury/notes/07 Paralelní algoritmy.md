---
tags:
  - algo
date: 2023-11-23
completed: true
---
	## Hradlové sítě

### Hradlo

$f : \Sigma^k \rightarrow \Sigma$

### Booleovská hradla
 - $k$ vstupů
	- arity $k$
- $\Sigma$ konečná abeceda
- **nulární** (arita 0)
	- 0,1
- **unární** (arita 1)
	- NOT
- **binární** (arita 2)
	- AND, OR, XOR, $\le$
### Majorita(x,y,z)

$(x \land y)\lor(x \land z)\lor(y \land z)$

### Síť

- hradla
- vstupní porty
- výstupní porty
- acyklické propojení

### Výpočet probíhá v taktech

0\. takt ohodnotíme vstupní porty a konstanty
$(i + 1).$ takt ohodnotíme hradla a porty jejichž vstupy byly ohodnoceny nejpozději v $i.$ taktu

- čas = $\#$ vrstev
- prostor = $\#$ hradel

### Binární sčítání

$x + y = z$

#### 1. způsob

$z_i = x_i \oplus y_i \oplus c_i$
$c_{i + 1} = \text{Maj}(x_i,y_i,c_i)$

- Čas $\Theta(n)$

#### 2. způsob

Dělení

- Čas $\Theta(\log n)$

### Komparátorová síť

- [Průvodce](http://pruvodce.ucw.cz/static/pruvodce.pdf#s15.3)

#### Bitonické třídění

- **bitonické posloupnost**
	- $x_0, \dots, x_{n-1}$
	- typy
		- čistě bitonická
			- $\exists k: x_0 \lt x_1 \lt \dots \lt x_k \gt \dots \gt x_{n-1}$
		- bitonická
			- má čistě bitonickou rotaci
			- $\exists l: x_l, x_{l+1}, \dots x_{l+n-1}$ je čistě bitonická
- **dolní odhad složitosti třídění $\Rightarrow$ hloubka každé třídící sítě
	- $\Omega(\log n)$
	- umí se $O(\log n)$
		- obrovská konstanta
###### Separátor $S_n$

Separátor řádu $n$ je komparátorová síť $S_n$ se vstupy $x_0, \dots , x_{n−1}$ a výstupy
$y_0, \dots, y_{n−1}$. Dostane-li na vstupu bitonickou posloupnost, vydá na výstup její permutaci
s následujícími vlastnostmi:

- rozdělí bitonickou posloupnost na dvě poloviční a navíc jsou všechny prvky v první polovině menší než všechny v té druhé.

Čas $O(1)$, prostor $O(n)$
###### Bitonická třídička $B_n$

Komparátorová síť $B_n$ s $n$ vstupy a $n$ výstupy. Dostane-li na vstupu bitonickou posloupnost, vydá ji setříděnou.

Čas $O(\log n)$, prostor $O(n \log n)$

###### Slévačka $M_n$

Dostane 2 vstupy o velikosti $n$ a výstup bude o velikosti $2n$

Čas $O(\log n)$, prostor $O(n \log n)$

###### Třídička $S_n$

- Výstup je rostoucí
- $\log n$ slévaček

Čas $O(\log^2 n)$, prostor $O(n \log^2 n)$