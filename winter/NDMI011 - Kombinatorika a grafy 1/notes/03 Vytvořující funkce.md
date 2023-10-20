---
tags: 
  - vytvorujici_funkce
date: 2023-10-20
completed: true
---
## Zobecnění binomické věty

Pro $\delta$ a $n \in \mathbb{N}_0$ definujeme zobecněné kombi. číslo ${\delta \choose n} := \frac{\delta*(\delta - 1)*\dots*(\delta - n + 1)}{n!}$

Pro $\delta \in \mathbb{R}$ platí $(1 + x)^{\delta} = \sum_{n = 0}^{\infty}{\delta \choose n}x^n$, $|x| \lt 1$

### Důkaz zobecnění binomické věty

$f(x) = (1 + x)^{\delta}$

$f'(x) = \delta*(1 + x)^{\delta - 1}$
$f^n(x) = \delta*(1 + x)^{\delta - 1}*\dots*(\delta - n + 1)*(1 + x)^{\delta - n}$

Nechť $a_0,\dots,a_n$ je posloupnost s vytvořující funkcí $f(x)$. Potom $a_n = \frac{f^n(0)}{n!} = {\delta \choose n}$

### Důsledek zobecnění binomické věty

Pro $d \in \mathbb{N}: \frac{1}{(1 - x)^d} = (1 + (-x))^{-d} = \sum_{n = 0}^{\infty}{-d \choose n}(-1)^nx^n = \sum_{n = 0}{\infty}\frac{(d + n - 1)*(d + n - 2)*\dots*(d + 1)*d}{n!} = \sum_{n = 0}^{\infty}{d + n - 1 \choose n}x^n = \sum_{n = 0}^{\infty}{d + n - 1 \choose d - 1}x^n$

## Parciální zlomek

Pro $d \in \mathbb{N}$ a $\rho \in \mathbb{R}$, pak parciální zlomek stupně $d$ pro kořen $\rho$ je výraz ve tvaru $\frac{\alpha}{(x - \rho)^d}$, kde $\alpha$ je reálná konstanta.

> [!note] Poznámka
> Pokud $\rho \ne 0$, pak parciální zlomek lze zapsat $\frac{\alpha}{(1 - \frac{x}{\rho})^d}*\frac{1}{(-\rho)^d} = \frac{\overline{\alpha}}{(1 - \frac{x}{\rho})^d}$

### Fakt

Mějme funkci $f(x) = \frac{P(x)}{Q(x)}$, kde $P(x)$ a $Q(x)$ jsou polynomy a stupeň $P(x)$ je menší než $Q(x)$.  Nechť $Q(x)$ má navzájem různé reálné kořeny $\rho_1,\dots, \rho_k$ a nechť $n_i$ označuje násobnost kořenu $\rho_i$.

Předpokládejme, že $Q(x)$ nemá nereálné kořeny, tedy $Q(x) = \gamma*(x - \rho_1)^{n_1}*(x - \rho_2)^{n_2}*\dots*(x - \rho_k)^{n_k}$, kde $\gamma \in \mathbb{R}$. Potom se dá $f(x)$ vyjádřit jako součet parciálních zlomků pro kořeny $\rho_1, \dots, \rho_k$, kde parciální zlomky pro $\rho_i$ mají stupeň nejvýš $n_i$. 

$$
\exists \alpha_{i,j} \in \mathbb{R}: f(x) = \sum_{i = 1}^{k}\sum_{j=1}^{n_i}\frac{\alpha_{i,j}}{(x - \rho_i)^j}
$$
### Příklad Fibonacciho čísla

Již víme z [[02 Vytvořující funkce#Příklad Fibonacci-ho čísla|minulé přednášky]], že $f(x) = \frac{x}{1 - x - x^2}$.

Kořeny $1 -x - x^2$
- $\rho_1 = \frac{1 - \sqrt{5}}{-2} = \frac{\sqrt{5} - 1}{2}$
- $\rho_2 = \frac{1 + \sqrt{5}}{-2} = \frac{-1-\sqrt{5}}{2}$

$1 - x - x^2 = \gamma*(x - \rho_1)*(x - \rho_2) = -1*(x - \rho_1)*(x - \rho_2) = -\rho_1*\rho_2*(1 - \frac{x}{\rho_1})*(1 - \frac{x}{\rho_2}) = (1 - \frac{x}{\rho_1})*(1 - \frac{x}{\rho_2})$
$$\begin{align}
\frac{x}{1 - x - x^2} = \frac{\alpha}{1 - \frac{x}{\rho_1}} + \frac{\beta}{1 - \frac{x}{\rho_2}} \\
x = \alpha(1 - \frac{x}{\rho_1}) + \beta(1 - \frac{x}{\rho_2}) \\
\\
0 = \alpha + \beta \\
\rho_2 = \beta(1 - \frac{\rho_2}{\rho_1}) \\
\dots \\
\alpha = - \beta = \frac{1}{\sqrt 5}
\end{align}
$$
$f(x) = \frac{1}{\sqrt 5} * \frac{1}{1 - \frac{x}{\rho_1}} - \frac{1}{\sqrt 5} * \frac{1}{1 - \frac{x}{\rho_2}} \Rightarrow F_n = \frac{1}{\sqrt 5}\left(\left(\frac{\sqrt 5 + 1}{2}\right)^n - \left(\frac{1 - \sqrt 5}{2}\right)^n\right)$



