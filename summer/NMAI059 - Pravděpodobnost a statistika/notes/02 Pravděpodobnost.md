---
tags:
  - statistika
  - pravdepodobnost
date: 2024-02-29
completed: true
---
## Věta o prav. podprostoru

- $(\Omega, \mathcal{F}, P)$
- $B \in \mathcal{F}$
- $P(B) \gt 0$
- definujeme pro $A \in \mathcal{F}$
	- $Q(A) = P(A|B)$, pak $(\Omega, \mathcal{F}, Q)$ je prav. podprostor

### Důkaz

1. $Q(\Omega) = P(\Omega | B) = \frac{P(\Omega \cap B)}{P(B)} = 1$
2. vynecháno
## Věta o zřetězeném podmiňování

- $A_1,\dots,A_n \in \mathcal{F}$
- $P(\bigcup A_i) \gt 0$
- $P(A_1 \cap A_2 \cap \dots) = P(A_1)*P(A_2|A_1)*\dots*P(A_n|A_{n}\cap \dots \cap A_{n-1})$

### Důkaz

$P(A_1)*\frac{P(A_1 \cap A_2}{P(A_1)}*\dots = 1*\frac{P(A_1 \cap A_2)}{1}*\dots = P(A_1 \cap A_2 \cap \dots)$

## Rozklad množiny

Systém $B_1,B_2,\dots \in \Omega$ je rozklad množiny, když $\bigcup_{i=1}B_i = \Omega$ a $B_i \cap B_j = \emptyset$

## Věta o rozboru případů

- $B_1,\dots \in \mathcal{F}$ rozklad $\Omega$
- $A \in \mathcal{F}$

$P(A) = \sum_i P(B_i)*P(A|B_i)$, pokud $P(B_i) = 0$, pak $P(B_i)*P(A|B_i) = 0$

### Důkaz

$A = (A \cap B_1) \cup (A \cap B_2) \cup \dots$

$P(A) = \sum_i P(A \cap B_i) = \sum_i P(B_i)*P(A|B_i)$
Pokud $P(B_i) = 0$, pak $P(B_i \cap A) = 0$

## Věta Bayesova

- $B_1,\dots \in \mathcal{F}$ rozklad $\Omega$

$P(B_j | A) = \frac{P(B_j)*P(A | B_j)}{\sum_i P(B_i)*P(A|B_i)}$

### Důkaz

$= \frac{P(A \cap B_j)}{P(A)} = \frac{P(B_j)*P(A|B_j)}{\sum_i \dots}$

## Nezávislost (dvou) jevů

- $A,B \in \mathcal{F}$
- $A,B$ jsou nezávislé ($A \bot B$) 
- pokud $P(A \cap B) = P(A)P(B)$

$$\begin{align}P(A\cap B) &= P(A)P(B) \\ P(A|B) &= \frac{P(A\cap B)}{P(B)} = P(A) \end{align}$$
- $A_1,A_2,\dots$ jsou nezávislé jevy pokud $P\left(\bigcap_{i \in J}A_i\right) = \prod_{i \in J}P(A_i), J \subseteq \{1,2, \dots\}$
- $A,B$ jsou nezávislé za podmínky $C$ ($A \bot_C B$)
	- $P(A\cap B | C) = P(A|C)P(B|C)$
