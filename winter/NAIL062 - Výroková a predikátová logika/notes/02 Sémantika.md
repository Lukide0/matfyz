---
tags: 
  - semantika
  - vyrok
  - boolean
date: 2023-10-15
completed: true
---

Sémantika je daná jednou ze dvou možných hodnot: *pravda,* *nepravda*

## Pravdivostní hodnota

Výrokům můžeme přiřadit jednu ze dvou možných pravdivostních hodnot:
- *pravdivý* (True,1)
- *nepravdivý* (False,0)

Jakmile ohodnotíme prvovýroky, pravdivostní hodnota libovolného složeného výroku je jednoznačně určená  a snadno ji spočteme podle stromu výroku.

## Výroky a booleovské funkce

- **booleovská funkce** je funkce $f: \{0,1\}^n \rightarrow \{0,1\}$
	- vstupem je $n$-tice nul a jedniček
	- výstup je 0 nebo 1
	- každá logická spojka reprezentuje bool. funkci
		- negace je unární funkce $f_{\lnot}(x) = 1 - x$
$$
\begin{array}{cc|lc}
\hline
p & q & \lnot p & p \land q & p \lor q & p \Rightarrow q & p \Leftrightarrow q \\
\hline
0 & 0 & 1 & 0 & 0 & 1 & 1 \\
0 & 1 & 1 & 0 & 1 & 1 & 0 \\
1 & 0 & 0 & 0 & 1 & 0 & 0 \\
1 & 1 & 0 & 1 & 1 & 1 & 1 \\
\hline
\end{array}
$$


- **pravdivostní funkce** výroku $\varphi$ v konečném jazyce $\mathbb{P}$ je funkce $f_{\varphi, \mathbb{P}}: \{0,1\}^{|\mathbb{P}|} \rightarrow \{0,1\}$
	- Je-li $\varphi$ $i$-tý prvovýrok z $\mathbb{P}$, potom $$f_{\varphi, \mathbb{P}}(x_0,\dots,x_{n - 1}) = x_i$$
	- Je-li $\varphi = (\lnot\varphi')$, potom $$f_{\varphi, \mathbb{P}}(x_0,\dots,x_{n - 1}) = \lnot f_{\lnot}(f_{\varphi', \mathbb{P}}(x_0,\dots,x_{n - 1}))$$
	- Je-li $(\varphi' \square \varphi'')$, kde $\square \in \{ \land,\lor, \Rightarrow, \Leftrightarrow \}$, potom $$f_{\varphi, \mathbb{P}}(x_0,\dots,x_{n - 1}) = f_{\square}(f_{\varphi', \mathbb{P}}(x_0,\dots,x_{n - 1}),f_{\varphi'', \mathbb{P}}(x_0,\dots,x_{n - 1}))$$
> [!info] Pozorování
> Pravdivostní funkce výroku $\varphi$ nad  $\mathbb{P}$ závisí pouze na proměnných odpovídající prvovýrokům z $\text{Var}(\varphi) \subseteq \mathbb{P}$

## Modely

Konkrétní pravdivostní ohodnocení výrokových proměnných.

- **model jazyka $\mathbb{P}$** je libovolné pravdivostní ohodnocení $v: \mathbb{P} \rightarrow \{0,1\}$
- $M_{\mathbb{P}}$ množina všech modelů jazyka $\mathbb{P}$

Mějme jazyk $\mathbb{P} = \{p,q,r\}$ a pravdivostní ohodnocení ve kterém $p$ je pravda, $q$ nepravda a $r$ pravda máme model $v = \{(p,1),(q,0),(r,1)\}$. Pro jednoduchost budeme psát $v = (1,0,1)$.
Pro tento jazyk máme $2^3$ modelů

## Platnost

Mějme výrok $\varphi$ v jazyce $\mathbb{P}$ a model $v \in M_{\mathbb{P}}$. Pokud platí $f_{\varphi,\mathbb{P}}(v) = 1$, potom říkáme, že výrok $\varphi$ platí v modelu $v$. 

- $v$ je modelem $\varphi$
	- $v \vDash \varphi$
- nemodely $\varphi$
	- nejsou modely $\varphi$
	- tvoří doplněk množiny modelů $\varphi$

### Platnost teorie

Je-li $T$ teorie v jazyce $\mathbb{P}$, potom $T$ platí v modelu $v$, pokud každý [[01 Úvod#Teorie|axiom]] $\varphi \in T$ platí ve $v$, potom říkáme, že $v$ je modelem $T$. Množinu všech modulů teorie značíme $M_{\mathbb{P}}(T)$.

Budeme psát:
- $M_{\mathbb{P}}(\varphi_1, \dots, \varphi_n)$ místo $M_{\mathbb{P}}(\{\varphi_1, \dots, \varphi_n\})$
- $M_{\mathbb{P}}(T,\varphi)$ místo $M_{\mathbb{P}}(T \cup \{\varphi\})$

> [!note] Pozorování
> Pro konečnou teorii platí $M_{\mathbb{P}}(\varphi_1) \supseteq M_{\mathbb{P}}(\varphi_1, \varphi_2) \supseteq \dots \supseteq M_{\mathbb{P}}(\varphi_1, \dots, \varphi_n)$

- [ukázka(2.2.8)](https://raw.githubusercontent.com/jbulin-mff-uk/nail062/main/lecture/lecture-notes/lecture-notes.pdf#subsection.2.2.4)

## Sémantické pojmy

Říkáme, že výrok $\varphi$ v jazyce $\mathbb{P}$ je

- **pravdivý/tautologie/platí**, pokud platí v každém modelu, $M_{\mathbb{P}(\varphi)} = M_{\mathbb{P}}$
	- $\vDash \varphi$
- **lživý/sporný**, pokud nemá žádný model
- **nezávislý**, pokud platí v nějakém modelu a neplatí v nějakém jiném modelu, $\emptyset \subsetneq M_{\mathbb{P}}(\varphi) \subsetneq M_{\mathbb{P}}$
- **splnitelný**, pokud má nějaký model
- **ekvivalentní**
	- $\varphi \sim \psi$

### Sémantické pojmy vzhledem k teorii

Říkáme, že výrok $\varphi$ v jazyce $\mathbb{P}$ je

- **pravdivý v $T$/důsledek $T$/platí v $T$**, pokud platí v každém modelu teorie $T$, $M_{\mathbb{P}}(T) \subseteq M_{\mathbb{P}}(\varphi)$
	- $T \vDash \varphi$
- **lživý v $T$/sporný v $T$**, pokud neplatí v žádném modelu $T$
- **nezávislý v $T$**, pokud platí a neplatí v nějakém modelu $T$
- **splnitelný v $T$**, pokud platí v nějakém modelu $T$

## Univerzálnost logických spojek

Množiny logických spojek $\{\lnot, \land, \lor\}$ a $\{\lnot, \Rightarrow\}$ jsou univerzální.

### Důkaz univerzálnosti logických spojek

Mějme funkci $f: \{0,1\}^n \rightarrow \{0,1\}$, resp. množinu modelů $M = f^{-1}[1] \subseteq \{0,1\}^n$. Náš jazyk bude $\mathbb{P} = \{p_1, \dots, p_n\}$. Pokud by množina $M$ obsahovala pouze 1 model, např. $v = (1,0,1,0)$ mohli bychom ji reprezentovat výrokem $\varphi_v = p_1 \land \lnot p_2 \land p_3 \land \lnot p_4$. Pro obecný model $v$ bychom výrok $\varphi_v$ zapsali $$\varphi_v = p_1^{v_1} \land \dots \land p_n^{v_n} = \bigwedge_{i=1}^np_i^{v(p_i)} = \bigwedge_{p\in \mathbb{P}}p^{v(p)}$$
Zavádíme následující užitečné značení $p^{v(p)} = \begin{cases} p & v(p) = 1 \\ \lnot p & v(p) = 0 \end{cases}$

Pokud množina $M$ obsahuje více modelů $$\varphi_M = \bigvee_{v \in M}\varphi_v = \bigvee_{v \in M}\bigwedge_{p\in \mathbb{P}}p^{v(p)}$$
Zřejmě platí $M_{\mathbb{P}}(\varphi_M) = M$ neboli $f_{\varphi_M,\mathbb{P}} = f$. Univerzálnost $\{\lnot \Rightarrow\}$ plyne z univerzálnosti $\{\lnot, \land, \lor \}$ a faktu, že konjunkci a disjunkci můžeme vyjádřit pomocí negace a implikace.

## Normální formy DNF a CNF

- **literál $\ell$** 
	- prvovýrok $p$
		- $p^0 = \lnot p$
		- $p^1 = p$
	- $\overline{\ell}$ opačný literál
- **klauzule** je disjunkce literálů $C = \ell_1 \lor \dots \lor \ell_n$
	- $\bot$ prázdná klauzule $(n = 0)$
	- $\ell$ jednotková klauzule $(n = 1)$
- **výrok je v $\text{CNF}$(konjunktivní norm. formě)**, pokud je konjunkcí klauzulí
- **elementární konjunkce** je konjunkce literálů $E = \ell_1 \land \dots \land \ell_n$
	- $\top$ prázdná elementární konjunkce $(n = 0)$
- **výrok je v $\text{DNF}$(disjunktivní norm. formě)**, pokud je disjunkcí elementárních konjunkcí

### O dualitě

Pokud prohodíme pravdu za nepravdu, tak pravdivostní tabulka negace zůstává stejná, z konjunkce se stává disjunkce a naopak.

### Převod do normální formy

Mějme konečný jazyk $\mathbb{P}$ a libovolnou množinu modelů $M \subseteq M_{\mathbb{P}}$, potom existuje výrok $\varphi_{\text{DNF}}$ v $\text{DNF}$ a výrok $\varphi_{\text{CNF}}$ v $\text{CNF}$ takový, že $M = M_{\mathbb{P}}(\varphi_{\text{DNF}}) = M_{\mathbb{P}}(\varphi_{\text{CNF}})$.
$$
\begin{align}
\varphi_{\text{DNF}} & = \bigvee_{v \in M}\bigwedge_{p\in \mathbb{P}}p^{v(p)} \\
\varphi_{\text{CNF}} & = \bigwedge_{v \in \overline{M}}\bigvee_{p\in \mathbb{P}}\overline{p^{v(p)}} = \bigvee_{v \in M}\bigwedge_{p\in \mathbb{P}}p^{1 - v(p)} \\
\end{align}
$$
#### Důkaz převodu do normální formy

Pro $\varphi_{\text{DNF}}$ použijeme důkaz z [[#Důkaz univerzálnosti logických spojek]].

Druhou část můžeme dokázat 2 způsoby:

1. Výrok $\varphi_{\text{CND}}$ je duální k výroku $\varphi_{\text{DNF}}'$ sestrojeném pro doplněk $M' = \overline{M}$.
2. Modely klauzule $C_v = \bigvee_{p \in \mathbb{P}}p^{1 - v(p)}$ jsou všechny modely kromě $v$, tedy každá klauzule v konjunkci zakazuje jeden nemodel.

#### Důsledek převodu do normální formy

Každý výrok je ekvivalentní nějakému výroku v $\text{CNF}$ a nějakému výroku v $\text{DNF}$.

##### Důkaz o ekvivalentním výroku v CNF a DNF

I když je jazyk $\mathbb{P}$ nekonečný, výrok $\varphi$ obsahuje jen konečně mnoho výrokových proměnných, můžeme tedy použít [[#Převod do normální formy]] pro jazyk $\mathbb{P}' = \text{Var}(\varphi)$ a množinu modelů $M = M_{\mathbb{P}'}(\varphi)$. Protože $M = M_{\mathbb{P}'}(\varphi_{\text{DNF}})= M_{\mathbb{P}'}(\varphi_{\text{CNF}}) = M$, máme $\varphi \sim \varphi_{\text{DNF}} \sim \varphi_{\text{CNF}}$.


## Vlastnosti a důsledky teorií

Teorie je **kompletní**, pokud není sporná a každý výrok je v ní pravdivý nebo lživý.

### Důsledky

- **důsledek** je každý výrok, který v $T$ platí
- **množina všech důsledků** teorie $T$ v jazyce $\mathbb{P}$
	- $\text{Csq}_{\mathbb{P}}(T) = \{\varphi \in \text{VF}_{\mathbb{P}}| T \vDash \varphi \}$
	- pokud je teorie $T$ v jazyce $\mathbb{P}$
		- $\text{Csq}_{\mathbb{P}}(T) = \{\varphi \in \text{VF}_{\mathbb{P}}| M_{\mathbb{P}}(T) \subseteq M_{\mathbb{P}}(\varphi) \}$

Mějme teorie $T,T'$ a výroky $\varphi,\varphi_1, \dots, \varphi_n$ v jazyce $\mathbb{P}$. Potom platí:
1. $T \subseteq \text{Csq}_{\mathbb{P}}(T)$
2. $\text{Csq}_{\mathbb{P}}(T) = \text{Csq}_{\mathbb{P}}(\text{Csq}_{\mathbb{P}}(T))$
3. pokud $T \subseteq T'$, potom, $\text{Csq}_{\mathbb{P}}(T) \subseteq \text{Csq}_{\mathbb{P}}(T')$ 
4. $\varphi \in \text{Csq}_{\mathbb{P}}(\{\varphi_1,\dots,\varphi_n\})$ právě když je výrok $(\varphi_1 \land \dots \land \varphi_n) \Rightarrow \varphi$ tautologie

#### Důkaz

Důkaz je snadný, použijeme-li, že $\varphi$ je důsledek $T$ právě když $M_{\mathbb{P}}(T) \subseteq M_{\mathbb{P}}(\varphi)$, a uvědomíme-li si následující vztahy:
• $M(\text{Csq}(T)) = M(T)$
• je-li $T \subseteq T'$ potom $M(T) \supseteq M(T')$
• $\psi \Rightarrow \varphi$ je tautologie, právě když platí $M(\psi) \subseteq M(\varphi)$,
• $M(\varphi_1 \land \dots \land \varphi_n) = M(\varphi_1, \dots, \varphi_n)$

### Extenze teorií

Neformálně řečeno, rozšířením, neboli extenzí teorie $T$ myslíme jakoukoliv teorii $T'$, která
splňuje vše, co platí v teorii $T$ (a něco navíc, nejde-li o triviální případ). Modeluje-li $T$ nějaký
systém, lze ji rozšířit dvěma způsoby: přidáním dodatečných požadavků o systému (tomu
budeme říkat **jednoduchá extenze**) nebo i rozšířením systému o nějaké nové části. Pokud
ve druhém případě nemáme dodatečné požadavky na původní část systému, tedy platí-li o
původní části totéž, co předtím, říkáme, že je **extenze konzervativní**.

Mějme teorii $T$ v jazyce  $\mathbb{P}$
- **extenze** teorie je libovolná $T'$ v jazyce $\mathbb{P}' \supseteq \mathbb{P}$ splňující $\text{Csq}_{\mathbb{P}}(T) \subseteq \text{Csq}_{\mathbb{P}}(T')$ 
- je to **jednoduchá extenze**, pokud $\mathbb{P}' = \mathbb{P}$ 
- je to **konzervativní extenze**, pokud $\text{Csq}_{\mathbb{P}}(T) = \text{Csq}_{\mathbb{P}}(T') = \text{Csq}_{\mathbb{P}'}(T') \cap \text{VF}_{\mathbb{P}}$

Zbytek [2.4.7](https://raw.githubusercontent.com/jbulin-mff-uk/nail062/main/lecture/lecture-notes/lecture-notes.pdf#subsection.2.4.2) a [2.5](https://raw.githubusercontent.com/jbulin-mff-uk/nail062/main/lecture/lecture-notes/lecture-notes.pdf#section.2.5)
