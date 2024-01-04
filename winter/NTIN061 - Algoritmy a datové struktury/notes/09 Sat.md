---
tags:
  - algo
  - sat
date: 2023-12-14
completed: true
---
## Problém

$L: \{0,1\}^* \rightarrow \{0,1\}$

### Převoditelnost

Problém A je převoditelný($A \rightarrow B$) na problém B, právě tehdy když $\exists f: \{0,1\}^* \rightarrow \{0,1\}^*$ t.ž. $\forall \alpha \in \{0,1\}^*: A(\alpha) = B(f(\alpha))$ a funkce $f$(*redukce*) lze spočítat v čase polynomiálním v $|\alpha|$

#### Problém párování

**Párování**: Dán bip. graf $G$ a $k \in \mathbb{N}$. Existuje párování velikosti alespoň $k$?
**Tok**: Dána síť $S$ a $t \in \mathbb{N}$. Existuje tok velikosti $\ge t$?

#### Lemma o řešitelnosti

Pokud $A \rightarrow B$ a je řešitelné v $B$ v poly. čase. Potom A je taky řešit. v poly. čase.

$f$ jde spočítat v čase $O(n^c), n = |\alpha|$
B jde spočítat v čase $O(n^d), n = |f(\alpha)| \in O(n^c)$

$O(n^c + (n^c)^d) = O(n^c + n^cd) \subset O(n^{cd})$

#### Vlastnosti relace

- **reflexivní**
	- $A \rightarrow A$ identita
- **tranzitivita** 
	- $A \rightarrow B \land B \rightarrow C \Rightarrow A \rightarrow C$
- Existují 2 problémy, které jde převést jeden na druhý i opačně
	- vstup lichý a druhý sudý
		- přidáme 1 prvek
- Existují 2 problémy, které nelze převést
	- A je konstantní 0
	- B je konstantní 1

Částečné kvaziuspořádání


## Splnitelnost booleovských formulí (SAT)

Existuje dosazení za proměnné t.ž. formule CNF je pravdivá.

### 3-SAT

Každá klauzule obsahuje maximálně 3 literály.

### $\text{SAT} \rightarrow \text{3-SAT}$

https://knihy.nic.cz/files/edice/pruvodce_labyrintem_algoritmu_v2.pdf#s19.2

### 3,3-SAT

Každá proměnná v max. 3 klauzulích.

### $\text{3-SAT} \rightarrow \text{3,3-SAT}$


### Nezávislá množina(NZM)

Vstup je neorientovaný graf $G$, $k \in \mathbb{N}$ a výstup je $\exists A \subseteq V(G): |A| \ge k \land E \cap {A \choose 2} = \emptyset$ .

#### $\text{3-SAT} \rightarrow NZM$

$k := \text{\# klauzulí}$

Formule je splnitelná právě když v grafu existuje nezávislá množina velikosti $\ge k$.

#### $NZM \rightarrow \text{SAT}$

- BÚNO $V(G) = \{1,\dots,n\}$
- $x_1, \dots, x_n$ a $x_i = 1 \Leftrightarrow i \in NZM$ 
- $y_{ij}, i \in \{1,\dots, k\}, j \in \{1, \dots, n\}$ 
	- vrchol $j$ je $i$-tým v $NZM$
	- ve sloupci maximálně 1 jednička
	- v řádku maximální 

1. $\forall i,j \in E: (\lnot x_i \lor\lnot x_j)$ 
	- nejvýše 1 vrchol z každé hrany
2. $\forall i,i',j: (\lnot y_{ij} \lor \lnot y_{i'j})$
	- nejvýše 1 ze sloupce
3. $\forall i,j',j: (\lnot y_{ij} \lor \lnot y_{ij'})$
	- nejvýše 1 v řádku
4. $\forall i: (y_{i1} \lor y_{i2} \lor \dots \lor y_{in})$
	- alespoň 1 v řádku
5. $\forall i,j: y_{ij} \Rightarrow x_j = (\lnot y_{ij} \lor x_j)$


### Klika v grafu(úplný podgraf)

Vstup je neorientovaný graf $G$, $k \in \mathbb{N}$ a výstup je $\exists A \subseteq V(G): |A| \ge k \land \forall u,v \in A: uv \in E(G)$.

Převedeme do NZM pomocí hranového doplňku

### 3D párování

Místo 2 množin 3.






