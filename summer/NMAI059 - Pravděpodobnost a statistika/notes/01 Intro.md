---
tags:
  - statistika
  - pravdepodobnost
date: 2024-02-22
completed: true
---
## Pravděpodobnost

- hod kostkou
	- $\Omega = \{1, \dots, 6\} = [6]$
- **prostor jevů(event space)**
	- $\mathcal{F} \subseteq \mathbb{P}(\Omega)$
		- $\emptyset, \Omega \subseteq \mathcal{F}$
		- $\forall A_i \in \mathcal{F} \Rightarrow \bigcup A \in \mathcal{F}$
		- $a$
- **pravděpodobnost**
	- $P: \mathcal{F} \rightarrow [0,1]$
		- $P(\Omega) = 1$
		- $P(\bigcup_{i = 0}^{\infty}A_i) = \sum_{i = 0}^{\infty}P(A_i)$
- **nemožný jev**
	- $P(A) = 0$
- **jistý jev**
	- $P(A) = 1$
- **pravděpodobnostní prostor
	- $(\Omega, \mathcal{F}, P)$


### Věta

$A, B \in \mathcal{F}$

1. $P(A) + P(A^c) = 1$
2. $A \subseteq B \Rightarrow P(B \setminus A) = P(B) - P(A) \Rightarrow P(A) \le P(B)$
3. $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
4. $P(A_1 \cup A_2 \cup \dots) \le \sum P(A_i)$

#### Důkaz

1. $\Omega = A \cup A^c$ a $P(\Omega) = P(A) + P(A^c)$
2. $B = A \cup (B \setminus A) \rightarrow P(B) = P(A) + P(B \setminus A) = P(A) + (\ge 0)$

