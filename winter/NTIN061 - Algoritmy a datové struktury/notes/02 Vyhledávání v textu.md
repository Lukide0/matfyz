---
tags:
  - vyhledavani
  - text
  - algo
date: 2023-10-12
completed: true
---
## Značení

- $\iota_1, \dots, \iota_n$ jehly
- $J = \sum_i|\iota_i|$ 
- $V$ počet výskytů jehel v seně

## Aho-Carasicková

### Automat

- stavy
	- prefixy jehel
- dopředné hrany
	- $\alpha \rightarrow \alpha x$
- konce jehel
- zpětné hrany
	- $\alpha \rightarrow$ nejdelší vlastní suffix $\alpha$, který je stavem 
- zkratkové hrany
	- $\alpha \rightarrow$ nejbližší stav dosažitelný po zpětných hranách, kde končí jehla

> [!info] Invariant
> Aktuální stav je nejdelší suffix sena, který je prefix nějaké jehly
#### Hrany

> [!note] Poznámka
> $\text{\# zpětných} \le \text{\# dopředných} \le S$

- slova
	- ara
	- bar
	- arab
	- baraba
	- barbara

![[res/aho_carasickova_hrany.png.png]]

### Reprezentace

- stavy očíslujeme
	- 0 je kořen
- $\text{dopředu}(s,x) \rightarrow$ číslo stavu nebo značka
- $\text{slovo}(s)$
- $\text{zpět}(s) \rightarrow$ číslo stavu nebo značka
- $\text{zkratka}(s) \rightarrow$ číslo stavu nebo značka

### AcKrok(s,x)

- Dokud $s \ne \text{kořen} \text{ \& } \text{dopředu(s,x)} \ne \emptyset$
	- $s \leftarrow \text{zpět}(s)$
- Pokud $\text{dopředu}(s,x) \ne \emptyset$
	- vrátíme $\text{dopředu}(s,x)$
- Jinak vrátíme kořen

### AcHledej($\delta$)

- $s \leftarrow$ kořen
- Pro znaky $x \in \delta$ postupně
	- $s \leftarrow \text{AcKrok}(s,x)$
	- $q \leftarrow s$
	- Dokud $q \ne \emptyset$
		- Je-li $\text{slovo}(q) \ne \emptyset$
			- hlásíme $\text{slovo}(q)$
		- $q \leftarrow \text{zkratka}(q)$

> [!info] Složitost
> Běží v čase $\theta(S + V)$

### AcKonstrukce($\iota_1, \dots, \iota_n$)

- Založíme strom s kořenem $r$
- Vkládáme do stromu slova $\iota_1,\dots, \iota_n$
- $\text{zpět}(r) \leftarrow \emptyset$, $\text{zkratka}(r) \leftarrow \emptyset$
- $F \leftarrow$ fronta, vložíme do ní syny kořene
- Synům kořene nastavíme $\text{zpět}(\_) \leftarrow r$, $\text{zkratka}(\_) \leftarrow \emptyset$
- Dokud $F \ne \emptyset$
	- Vybereme z fronty $\rightarrow i$
	- Pro syny z vrcholu $i$
		- $z \leftarrow \text{AcKrok}(\text{zpět}(i), \text{znak na hraně }is)$
		- $\text{zpět}(s) \leftarrow z$
		- Pokud $\text{slovo}(z) \ne \emptyset$
			- $\text{zkratka}(s) \leftarrow z$
		- Jinak
			- $\text{zkratka}(s) \leftarrow \text{zkratka}(z)$
		- Vložíme $s$ do $F$

> [!info] Složitost
> Běží v čase $O(J)$

### Složitost

A-C najde všechny výskyty v čase $\theta(J + S + V)$

## Robinův-Karpův algo.

![](res/robin_karp_algo.excalidraw)

- [heshování](http://pruvodce.ucw.cz/static/pruvodce.pdf#s13.4)

### Algo

- $j \leftarrow H(\iota) \mapsto$  heš jehly
- $h \leftarrow H(\delta[:J]) \mapsto$ heš první pozice okénka
- Pro $i$ od 0 do $S - J \mapsto$ možné pozice okénka
	- Je-li $h = j$ a $\delta[i:i + J] = \iota$
		- hlásíme výskyt
	- $h \leftarrow (P * h - \delta[i]*P^J + \delta[i+j]) \mod N \mapsto$ přepočítáme heš

> [!info] Složitost
> $\theta(J + S + JV + \frac{SJ}{M})$
