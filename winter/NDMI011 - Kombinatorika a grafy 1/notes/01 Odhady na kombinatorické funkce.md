---
tags:
  - odhady
  - vytvorujici_funkce
date: 2023-10-04
completed: true
---
## Odhad $n!$

$n^{n/2} \le n! \le n^n$
$n! = 1*2*\dots*n$
$(n!)^2 = 1*2*\dots*n*1*2*\dots*n$ (zahrnuje i případ kdy je n liché)

### Důsledek

$\sqrt{n} \lt \sqrt[n]{n!} \lt n$

### Věta $e(\frac{n}{e})^n \le n! \le en(\frac{n}{e})^n$
1. důkaz indukcí s využitím $e^x \gt 1+x$
2. důkaz odhadem pomocí integrálu
3. důkaz jen $(\frac{n}{e})^n \le n!$
	- z analýzy: $e^x = 1 + x + \frac{x^2}{2} + \frac{x^3}{3!} + \dots = \sum_{k=0}^{\infty}\frac{x^k}{k!}$
		- pro $x \ge 0 \rightarrow e^x \ge \frac{x^n}{n!} \rightarrow n! \ge \frac{x^n}{e^x}$
#### Důkaz odhadem pomocí integrálu

$\ln{n!} = \sum_{i=1}^n \ln(i) = \sum_{i=2}^n \ln(i)$
##### Dolní odhad

$ln(n!) \gt \int_{1}^{n}\ln{x}dx = \left[ x\ln{x} -x \right]_{1}^{n} = (n\ln{n} - n + 1) = I_n$
$n! \ge e^{I_n} = e(\frac{n}{e})^n$
##### Horní odhad

$I_n \ge \ln{(n - 1)!} \Rightarrow e^I_n \ge (n - 1)! \Rightarrow n*e^I_n \ge n!$
$e*n(\frac{n}{e})^n \ge n!$

## Odhad ${n \choose k} = \frac{n!}{k!(n-k)!} = \frac{n*(n-1)*\dots*(n - k + 1)}{k!}$

${n \choose k} = {n \choose n - k}$

### Věta $1 \le k \le n: \frac{n^k}{k^k} \le {n \choose k} \le (\frac{e*n}{k})^k$

#### Dolní odhad

${n \choose k} = \frac{n}{k} * \dots *\frac{n - k + 1}{1} \ge (\frac{n}{k})^k$

#### Horní odhad

${n \choose k} \le \frac{n^k}{(\frac{k}{e})^k} = (\frac{e*n}{k})^k$

## Odhad ${2m \choose m}$

- $\forall n \in \mathbb{N}_0: {n \choose 0} \le {n \choose 1} \le \dots \le {n \choose \lfloor\frac{n}{2}\rfloor} = {n \choose \lceil\frac{n}{2}\rceil} \ge {n \choose \lceil\frac{n}{2}\rceil + 1} \ge \dots \ge {n \choose n}$ 
- $\sum_{k=0}^{n}{n \choose k} = 2^{n} = (1 + 1)^n$

$\frac{2^{2m}}{2m + 1} \le {2m \choose m} \le \frac{2^{2m}}{1}$

### Věta $\forall m \in \mathbb{N} : \frac{2^{2m}}{2\sqrt{m}} \le {2m \choose m} \le \frac{2^{2m}}{\sqrt{2m}}$
- definujeme $P := \frac{{2m \choose m}}{2^{2m}}$
- dokážeme $\frac{1}{2\sqrt{2m}} \le P \le \frac{1}{\sqrt{2m}}$

$P = \frac{\frac{(2m)!}{m!m!}}{2m} = \frac{1*2*3*\dots*(2m)}{(2*4*6*\dots*(2m))^2} = \frac{1 * 3 * 5 * \dots * (2m - 1)}{2*4*6*\dots*(2m)}$
$P^2 = \frac{(1*3*5*\dots*(2m -1))^2}{(2*4*6*\dots*(2m))^2}$

- $\frac{(k - 1)(k + 1)}{k^2} = \frac{k^2 - 1}{k^2} \lt 1$

$P^2 = 1 * \frac{1*3}{2*2}*\dots*\frac{(2m - 3)*(2m-2)}{(2m - 2)^2}*\frac{2m - 1}{4m^2} \le \frac{2m - 1}{4m^2} \lt \frac{1}{2m} \rightarrow P \le \frac{1}{\sqrt{2m}}$
$P^2 = \frac{1}{2}*\frac{3*3}{2*4}*\dots*\frac{1}{2m} \ge \frac{1}{4m} \rightarrow P^2 \ge \frac{1}{4m} \rightarrow P \ge \frac{1}{2\sqrt{m}}$

---
## Vytvořující funkce
 
- *definice:* vytvořující funkce posloupnosti $a_0,a_1,\dots,a_n = (a_n)_{n=0}^{\infty}$ reálných čísel je funkce proměnné x definovaná jako součet $f(x) = \sum_{n=0}^{\infty}a_nx^n$

> [!note] fakt:
> - pokud exituje $k \gt 0$ taková, že $\forall n: |a_n| \le k^n \rightarrow \sum_{n=0}^{\infty}a_nx^n$ konverguje na $(\frac{-1}{k},\frac{1}{k})$ absolutně stejnosměrně
> - $f(x) = \sum_{n=0}^{\infty}a_nx^n$ má derivace všech řádů na $(\frac{-1}{k},\frac{1}{k})$, které se dají spočítat  derivováním jednotlivých členů
