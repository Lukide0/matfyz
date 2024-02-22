---
tags:
  - automaty
date: 2024-02-22
completed: true
---
## Deterministický konečný automat DFA

$A = (Q, \Sigma, \delta, q_0, F)$ sestává z:

1. konečné množiny stavů $Q$
2. konečné neprázdné množiny vstupních symbolů $\Sigma$
3. přechodové funkce $\delta$
	- zobrazení $Q \times \Sigma \rightarrow Q$
4. počátečního stavu $q_0 \in Q$
5. množiny koncových (přijímajících) stavů (final states) $F \subseteq Q$

## Definice

- **slovo**
	- konečná posloupnost symbolů $s \in \Sigma$
	- prázdné slovo $\epsilon$
- **množina všech slov v abecedě $\Sigma$** značíme $\Sigma^*$
	- neprázdné slova $\Sigma^+$
- **jazyk**
	- $L \subseteq \Sigma^*$ (množina slov v abecedě)
- **zřetězení slov**
	- $u.v$ nebo $uv$
- **mocnina (počet opakování)**
	- $u^0 = \epsilon$
	- $u^1 = u$
	- $u^{n+1} = u^n.u$
- **délka slova**
	- $|auto| = 4$
	- $|\epsilon| = 0$
- **počet výskytů**
	- $|u|_s$
	- $|zmrzlina|_z = 2$
- **rozšířená přechodová funkce**
	- $\delta^*: Q \times \Sigma^* \rightarrow Q$
	- $\delta^*(q, \epsilon) = q$
	- $\delta^*(q, wx) = \delta(\delta^*(q, w), x)$, kde $x \in \Sigma$ a $w \in \Sigma^*$
- **jazyky rozpoznatelné konečnými automaty**
	- jazyk přijímaný DFA $A =(Q, \Sigma, \delta, q_0, F)$ nazveme jazyk $L(A) = \{w | w \in \Sigma^∗ \land \delta^∗(q_0, w ) \in F \}$ 
	- slovo w je **přijímáno** automatem $A$, právě když $w \in L(A)$
	  - jazyk $L$ je rozpoznatelný FA, jestliže existuje konečný automat $A$ takový, že $L = L(A)$
- **dosažitelný stav**
	- stav $q$ je dosažitelný, pokud existuje slovo $w \in \Sigma^*$ a $\delta^*(q_0, w) = q$

## Pumping lemma

Pro každý regulární jazyk existuje $n \in \mathbb{N}$ takové, že $\forall w \in L: |w| \ge n$, lze rozložit $w = xyz$ a platí zároveň:

1. $y \ne \epsilon$
2. $|xy| \le n$
3. $\forall i  \in \mathbb{N}_0: xy^iz \in L$

### Důkaz

Mějme regulární jazyk $L$, pak existuje DFA $A$ s $n$ stavy, že $L = L(A)$. Vezměme libovolné slovo $a_1a_2\dots a_m = w \in L$ délky $m \ge n, a_i \in \Sigma$. Definujme: $\forall i p_i = \delta^*(q_0, a_1a_2\dots a_i)$. Platí $p_0 = q_0$.

Máme $n + 1$ $p_i$ a $n$ stavů, některý se opakuje, vezměme první takový, tj. $(\exists i, j)(0 \le i < j \le n \land p_i = p_j)$. Definujme: $x = a_1a_2\dots a_i$ , $y = a_{i+1}a_{i+2}\dots a_j$ ,$z = a_{j+1}a_{j+2}\dots a_m$, tj. $w = xyz, y \ne \epsilon, |xy| \le n$.

Smyčka nad $p_i$ se může opakovat libovolně krát a vstup je také
akceptovaný