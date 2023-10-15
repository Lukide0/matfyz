---
tags:
  - vyrok
date: 2023-10-15
completed: true
---
## Pojmy

### Jazyk

Určený neprázdnou množinou výrokových proměnných $\mathbb{P}$(prvovýroky/atomické výroky). Množina může být konečná nebo i nekonečná, ale obvykle bude spočetná a bude mít dané uspořádání.

- výrokové proměnné $p_i$ nebo $p,q,r$
	- $P_1 = \{p,q,r\}$
	- $P_2 = \{p_0,p_1,\dots\} = \{p_i | i \in \mathbb{N}\}$
- patří sem i logické symboly $\lnot,\land,\lor, \Rightarrow, \Leftrightarrow, (, )$

### Výrok

Výroková formule v jazyce $\mathbb{P}$ je prvek množiny $VF_{\mathbb{P}}$ (nejmenší množina splňující) definované následovně:
- $\forall p \in \mathbb{P}: p \in VF_{\mathbb{P}}$ (pro každý provovýrok $p\dots$)
- $\forall \varphi \in VF_{\mathbb{P}}$ je $(\lnot \varphi)$ také prvkem $VF_{\mathbb{P}}$
- $\forall \varphi,\psi \in VF_{\mathbb{P}}$ jsou $(\varphi \land \psi), (\varphi \lor \psi), (\varphi \Rightarrow \psi), (\varphi \Leftrightarrow \psi)$ jsou také prvky $VF_{\mathbb{P}}$

> [!note] Poznámka
> Občas používáme za binární logické spojky zástupný symbol $\square$:
> $\forall \varphi, \psi \in VF_{\mathbb{P}}$ a $\square \in \{\land,\lor, \Rightarrow, \Leftrightarrow\}$  je $(\varphi \square \psi)$ také prvek $VF_{\mathbb{P}}$

#### Podvýrok

Podřetězec, který je sám o sobě výrokem.

- $\text{Var}(\varphi)$ množina prvovýroků vyskytující se ve $\varphi$
	- $\varphi = (p \land r) \Rightarrow (p \lor q)$
		- $\text{Var}(\varphi) = \{p, (p \land r), r, (p \lor q),q\}$	

#### Strom výroku $\varphi$

$\text{Tree}(\varphi)$ je zakořeněný uspořádaný strom, definovaný induktivně takto:
- Je-li $\varphi$ prvovýrok $p$, obsahuje $\text{Tree}(\varphi)$ jediný vrchol, jeho label je $p$
- Je-li $\varphi$ tvaru $(\lnot\varphi')$, má $\text{Tree}(\varphi)$ kořen s labelem $\lnot$, a jeho jediný syn je kořen $\text{Tree}(\varphi')$
- Je-li $\varphi$ tvaru $(\varphi' \square \varphi'')$ pro $\square \in \{\land,\lor, \Rightarrow, \Leftrightarrow\}$, má $\text{Tree}(\varphi)$ kořen s labelem $\square$ a dvěma syny
	- levý syn je kořen stromu $\text{Tree}(\varphi')$
	- pravý syn je kořen stromu $\text{Tree}(\varphi'')$

### Teorie

Teorie v jazyce $\mathbb{P}$ je libovolná množina výroků, tedy libovolná podmnožina $T \subseteq VF_{\mathbb{P}}$ a jednotlivým výroků říkáme axiomy.

