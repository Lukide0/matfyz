---
tags:
  - algo
  - boolean
date: 2023-12-21
completed: false
---
## 3D párování

Vstup jsou množiny $K$,$D$,$Z$ a výstup je $\exists T' \subseteq T \subseteq K \times D \times Z$. Každý prvek z K,D,Z musí být 1x v $T'$.

### 3,3-SAT $\rightarrow$ 3D párování

**gadget** pro proměnou a pro klauzuli

![[res/3d_par.png]]

## Třída problémů P

Problém je v $L \in P$ pokud existuje algoritmus $A$ a polynom $p$, takový že pro každý vstup algoritmus doběhne do $p(|vstup|)$ a výstup $A(vstup) = L(vstup)$.

## Třída problémů NP

Problém je v $L \in NP$, právě tehdy když existuje verifikátor $V \in P$ a existuje polynom $g$, přičemž pro každý vstup $x$ je $L(x) = 1$ právě tehdy, pokud pro nějaký řetězec $y$(certifikát) délky nejvýše $g(|x|)$ platí $V(x, y) = 1$.

Problém $L$ nazveme $NP$-těžký, je-li na něj převoditelný každý problém z $NP$. Pokud navíc $L$ leží v $NP$, budeme říkat, že $L$ je $NP$-úplný.

### Pokud nějaký $\text{NP}$-těžký problém $L$ leží v $P$, pak $P = \text{NP}$.

Nechť $K \in \text{NP}$. $K \rightarrow L \Rightarrow K \in P$ proto $\text{NP} \subseteq P$

### Obvodový SAT je $\text{NP}$-úplný

Nechť $L \in \text{NP}, V,g$ dle definice $\text{NP}$ BÚNO chceme cert. délky $g(|x|)$.  

http://pruvodce.ucw.cz/static/pruvodce.pdf#s19.4

### Cook,Levin

$SAT$ je $\text{NP}$-úplný.

#### Lemma

Nechť $K,L \in \text{NP}$, $K \rightarrow L$, $K$ je NP-úplný, pak $L$ je NP-úplný.

$M \in \text{NP}$, pak $M \rightarrow K \rightarrow L \Rightarrow M \rightarrow L$.

#### Lemma

$\forall L \in P$ existuje polynom. algoritmus $A$.

$\forall n: A(n)$ je hradlová síť s $n$ vstupy a 1 výstupem řešící $L$ pro vstupy délky $n$.
#### Důkaz

http://pruvodce.ucw.cz/static/pruvodce.pdf#s19.4

### $\text{NP}$-úplné problémy

- **logické**
	- SAT
	- 3-SAT
	- 3,3-SAT
	- Obvodový SAT (hradla)
- **grafové**
	- Nezávislá množina
	- Klika
	- K-obarvitelnost
	- Hamiltonova cesta/kružnice
	- 3D-párování
- **číselné**
	- součet podmnožin
	- problém batohu
	- problém 2 loupežníků
	- 0,1 lineární rovnice
