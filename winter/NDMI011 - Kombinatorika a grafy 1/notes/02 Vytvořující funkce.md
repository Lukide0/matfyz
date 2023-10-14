---
tags: 
  - vytvorujici_funkce
date: 2023-10-14
completed: false
---
## Důsledky derivace

> [!note] Derivace vytvořující funkce
> $f(x) = a_0 + a_1*x + a_2*x^2 + \dots$
> $f'(x) = a_1 + 2*a_2*x + \dots$
> $f^{n}(x) = n!a_n + \dots$

$f(0) = a_0$
$f'(0) = a_1$
$f^{n}(0) = n!a_n$

### Příklad

$f(x) = \frac{1}{1 - x}$ je to vytvořující funkce $a_0, a_1, \dots$, kde:
$$
\begin{aligned}
a_0 = f(0) = 1 \\
\vdots \\
a_n = \frac{1}{n!}f^{n}(0) = \frac{1}{n!}*n! = 1
\end{aligned}
$$
$$
\begin{aligned}
f(x) = (1 - x)^{-1} \\
f'(x) = (-1)*(1 - x)^{-2}*(-1) = (1 -x)^{-2} \\
f''(x) = (-2)*(1 - x)^{-3}*(-1) = 2*(1 -x)^{-3} \\
f^{n} = n!(1 - x)^{-(n + 1)}
\end{aligned}
$$
## Fakt: vytvořující funkce se násobí jako polynomy 

pokud $f(x)$ je v.f. $a_0, a_1, \dots$ a $g(x)$ je v.f. $b_0, b_1, \dots$, tak:
$f(x)*g(x) = \left( \sum_{n = 0}^{\infty} a_n*x^n \right)\left( \sum_{n = 0}^{\infty} b_n*x^n  \right) = \sum_{n = 0}^{\infty} x^n*(a_0*b_n + a_1*b_{n - 1} + \dots + a_n*b_0)$
je v.f. posloupnosti $(a_0*b_0), (a_0*b_1 + a_1*b_0), \dots$ 

Tato operace se nazývá *konvoluce posloupností*

## K čemu jsou?

1. kombinatorické počítání: "kolik existuje věcí velikosti $n$ v dané množině"
2. asymptotické odhady
3. dokazování identit: "$a_n = b_n$"
4. řešení rekurencí

### Příklad 4. řešení rekurencí

$a_n := \text{\# způsob, jak zaplatit n Kč pomocí mincí s hodnotami 1Kč, 2Kč a 5Kč}$
$a_7:$

|  ①  |  ②  |  ⑤  |
|:---:|:---:|:---:|
|  7  |  0  |  0  |
|  5  |  1  |  0  |
|  3  |  2  |  0  |
|  1  |  3  |  0  |
|  2  |  0  |  1  |
|  0  |  1  |  1  |

$f(x) = \sum_{n=0}^{\infty} a_n*x^n = (1 + x + x^2 + \dots)*(1 + x^2 + x^4 + \dots)*(1 + x^5 +x^{10} + \dots) = \frac{1}{1 - x}*\frac{1}{1 - x^2}*\frac{1}{1 - x^5}$
Jak mohu dostat $x^7$?
- $x^7*1*1, x^5*x^2*1, \dots, 1*x^2*x^5$

## Řešení rekurencí

### Obecná metoda řešení rekurencí

$F_n = \text{"něco, co závisí na }F_0,\dots,F_{n - 1}\text{"}$

1. Vynásob ji $x^n: x^n*F_n = x^n*\dots$
2. Sečti pro $n \ge n_0$ $\sum_{n = 0}^{\infty}F_n*x^n = \sum_{n=0}^{\infty}x^n*\dots$
3. Vyjádři všechny sumy pomocí vytvořující funkce
4. Dopočítej $f(x)$
### Příklad: Fibonacci-ho čísla

$F_0, F_1, F_2, \dots$ jsou definována takto: $F_0 := 0, F_1 := 1, F_n := F_{n - 1} + F_{n - 2}$

*Cíl*: explicitní vzorec pro $f(x) = \sum_{n = 0}^{\infty}F_n*x_n$

$F_n = F_{n - 1} + F_{n - 2}, n \ge 2$
$F_n*x^n = F_{n - 1}x^n + F_{n - 2}x^n, n \ge 2$

$\sum_{n = 2}^{\infty}F_n*x^n = \sum_{n = 2}^{\infty}F_{n - 1}x^n + F_{n - 2}x^n$
$S_1 = S_2 + S_3$

$S_1 = f(x) - F_0 - F_1*x$
$S_2 = x(f(x) - F_0)$
$S_3 = x^2*f(x)$

$f(x) - F_0 - F_1*x = x(f(x) - F_0) + x^2*f(x)$
$f(x) - x*f(x) -x^2*f(x) = F_0 + F_1*x + F_0*x$
$f(x)(1 - x - x^2) = F_0 + F_1*x + F_0*x$
$f(x) = \frac{F_0 - F_1*x + F_0*x}{1 - x - x^2} = \frac{0 + 1x + 0x}{1 - x - x^2} = \frac{x}{1 - x - x^2}$

