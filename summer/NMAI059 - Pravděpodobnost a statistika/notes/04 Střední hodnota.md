---
tags:
  - pravdepodobnost
  - statistika
date: 2024-03-14
completed: true
---
## Střední hodnota

- $X$ je dnv

$\mathbb{E}X := \sum_{x\in Im(X)}x*P(X=x)$

## Funkce d.n.v.

- $X$ dnv
- $g: \mathbb{R} \rightarrow \mathbb{R}$

$Y = g(X)$ je také dnv 
## Věta pravidlo naiv. stat.

$\mathbb{E}(Y) = \mathbb{E}(g(X)) = \sum_{x \in Im(X)}g(x)P(X=x)$

### Důkaz

$$\begin{align}
\mathbb{E}(Y) &= \sum_{y}yP(Y=y)\\
&= \sum_{y}y\sum_{x: g(x) = y}P(X=x) \\
&= \sum_{x \in Im(X)}g(x)P(X=x)
\end{align}$$

## Věta vlastnosti $\mathbb{E}$

1. $P(X \ge 0) = 1 \land \mathbb{E}(X) = 0 \Rightarrow P(X=0) \gt 0$
2. $\mathbb{E}X \ge 0 \Rightarrow P(X \ge 0) \gt 0$
3. $\mathbb{E}(aX + b) = a*\mathbb{X} + b$
4. $\mathbb{E}(X + Y) = \mathbb{E}(X) + \mathbb{E}(Y)$

### Důkaz

#### 3. $g(x) = ax + b$

$$\begin{align}
Y &= g(X) = aX + b \\
\mathbb{E}(g(X)) &= \sum_{x \in Im(X)}g(x)P(X=x) \\
&= \sum_{x}(ax+b)*p(x) \\
&= a \sum_{x}x*p(x)+ b\sum_{x}p(x) \\
&= a*\mathbb{E}(X)+ b
\end{align}$$
#### 4. stačí rozepsat

#### 2. $\mathbb{E}X \ge 0 \Rightarrow P(X \ge 0) \gt 0$

$$\begin{align}
\mathbb{E}X &= \sum_{x}xp(x) = \sum_{x \lt 0}xp(X) + \sum_{x\ge 0}xp(x) \\
\end{align}$$
