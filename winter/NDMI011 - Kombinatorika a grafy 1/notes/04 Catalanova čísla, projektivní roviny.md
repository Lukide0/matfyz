---
tags: 
  - vytvorujici_funkce
  - projektivni_roviny
date: 2023-10-28
completed: true
---

## Binární strom

Zakořeněný strom jehož každý vnitřní vrchol má 2 potomky, na pořadí potomků záleží.

- $C_n \leftarrow \#$ binárních stromů s $n$ vnitřními vrcholy

$$
\begin{align}
C_0 &= 1 \\
C_1 &= 1 \\
C_2 &= 2 \\
C_3 &= 5 
\end{align}
$$
Cíl je najít vzorec pro $C_n$.
> [!note] Poznámka
> $\left(C_n\right)_{n=0}^{\infty}$ jsou Catalanova čísla

$$
\begin{align*}
C(x) &= \sum_{n = 0}^{\infty}C_nx^n \\
C_0 &= 1 \\
C_n &= C_0C_{n - 1} + C_1C_{n - 2} + \dots = \sum_{i = 0}^{n - 1}C_iC_{n - 1 - i} \\
\sum_{n = 1}^{\infty}C_nx^n &= \sum_{n = 1}^{\infty}\left(\sum_{i=0}^{n-1}C_iC_{n - 1 - i}\right)x^n \\
C(x) - 1 &= x\sum_{n = 0}^{\infty}\left(\sum_{i=0}^{n}C_iC_{n - i}\right)x^n \\
C(x) - 1 &= xC^2(x) \\
C(x) &= 1 + xC^2(x) \\
0 &= xC^2(x) - C(x) + 1 \\
C^{+}(x) &= \frac{1 + \sqrt{1 -4x}}{2x} & \lhd \text{neomezená na okolí x=0} \\
C^{-}(x) &= \frac{1 - \sqrt{1 -4x}}{2x} & \lhd \text{pro $x \rightarrow$ 0 má limitu 1}\\
C(x) &= C^{-}(x)
\end{align*}
$$

> [!warning] Značení $[x^n]f(x)$
> Člen s index $n$ v posloupnosti jejíž vytvořující funkce je $f(x)$

$$
\begin{align}
C_n &= [x^n]\frac{1 - \sqrt{1 -4x}}{2x} = [x^{n+1}]\frac{1 - \sqrt{1 -4x}}{2} \\
&= [x^{n + 1}]\left(\frac{1}{2} - \frac{\sqrt{1-4x}}{2}\right) \\
&= -\frac{1}{2}[x^{n + 1}]\sqrt{1 - 4x} \\
&= -\frac{1}{2}*(-4)^{n+1}\sqrt{1 +x} \\
&= -\frac{1}{2}*(-4)^{n+1}{\frac{1}{2} \choose n+1} \\
&= (-1)^n2^{2n+1}\frac{\frac{1}{2}*(\frac{1}{2}-1)*\dots*(\frac{1}{2}-n)}{(n + 1)!} \\
&= (-1)^n2^{2n + 1}\frac{\frac{1}{2}*\frac{-1}{2}*\frac{-3}{2}*\dots*\frac{-2n + 1}{2}}{(n + 1)!} \\
&= 2^n\frac{1*3*5*\dots*(2n - 1)}{(n + 1)!} \\
&= \frac{2^n*1*3*5*\dots*(2n - 1)}{(n + 1)!} \\
&= \frac{(2n)!}{(n + 1)!n!} = \frac{1}{1 + 1}{2n \choose n}
\end{align}
$$

## Projektivní roviny

- **hypergraf**
	- dvojice $(V,H)$, kde $H$ je množina podmnožin $V$
		- prvky $V$ jsou vrcholy
		- prvky $H$ jsou hyperhrany
- **graf incidence hypergrafu**
	- bipartitní graf s partitami $V$ a $H$
		- mezi $x \in V$ a $h \in H$ vede hrana
- **projektivní rovina**
	- hypergraf $(X,\mathbb{P})$, takový že
		- $\forall x,y \in X, x \ne y, \exists! p \in \mathbb{P}: \{x,y\} \subseteq p$
		- $\forall p,q \in \mathbb{P},p \ne q: |p \cap q| = 1$
		- $\exists C \subseteq X, |C| = 4, \forall p \in \mathbb{P} : |p \cap C| \le 2$
	- prvky $X$ jsou body
	- prvky $\mathbb{P}$ jsou přímky
- **konečná projektivní rovina **
	- projektivní rovina, v níž $X$ je konečná a tudíž i $\mathbb{P}$ je konečná
- **řád**
	- o jedna menší než má počet bodů
- $\overline{xy}$ značí přímku obsahující $x$ a $y$

### V každé projektivní rovině mají všechny přímky stejný počet bodů

Sporem, nechť v $KPR$ existují přímky $p,q$ takové, $|p| \lt |q|$. Označíme $x$ společný bod $p,q$. Nechť $p$ obsahuje body $x,y_1,y_2,\dots,y_k$ a $q$ obsahuje $y,z_1,z_2,\dots,z_l$.

Tvrdím, že existuje bod $w \in X$, který nepatří do $p$ ani $q$. Volme $C$(třetí axiom o projektivní rovině). 

Pokud $C \setminus (p \cup q) \ne \emptyset$, volme $w \in C \setminus (p \cup q)$. Pokud $C \subseteq p \cup q$,  tak $|C \cap p| = |C \cap q| = 2$, BÚNO $C = \{y_1,y_2,z_1,z_2\}$, v tom případě zvolíme za $w$ společný bod $\overline{y_1z_1}$ a $\overline{y_2z_2}$. Kdyby $w \in p$, tak $w$ je jediný společný bod $p$ a $\overline{y_1z_1}$, a tedy $w = y_1$, ale $w \in \overline{y_2z_2}$, tedy $y_1 = w \in \overline{y_2z_2}$, tedy $|C \cap \overline{y_2z_2}| \ge |\{y_1,y_2,z_2\}| = 3$ což je spor s volbou $C$.

Uvažme přímky $\overline{wz_1},\dots,\overline{wx}$ každá z nich protíná $p$, jsou navzájem různé. Tedy existuje bod $v \in p$, který je obsažen v aspoň dvou z těch přímek  $\overline{wz_1},\dots,\overline{wx}$,což je spor: $w$ a $v$ mají aspoň 2 společné přímky.