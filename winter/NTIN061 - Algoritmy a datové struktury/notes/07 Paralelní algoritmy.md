---
tags:
  - algo
date: 2023-11-23
completed: false
---
## Hradlové sítě

### Hradlo

$f : \Sigma^k \rightarrow \Sigma$

### Booleovská hradla
 - $k$ vstupů
	- arity $k$
- $\Sigma$ konečná abeceda
- **nulární** (arita 0)
	- 0,1
- **unární** (arita 1)
	- NOT
- **binární** (arita 2)
	- AND, OR, XOR, $\le$
### Majorita(x,y,z)

$(x \land y)\lor(x \land z)\lor(y \land z)$

### Síť

- hradla
- vstupní porty
- výstupní porty
- acyklické propojení

### Výpočet probíhá v taktech

0\. takt ohodnotíme vstupní porty a konstanty
$(i + 1).$ takt ohodnotíme hradla a porty jejichž vstupy byly ohodnoceny nejpozději v $i.$ taktu

- čas = $\#$ vrstev
- prostor = $\#$ hradel

### Binární sčítání

$x + y = z$

#### 1. způsob

$z_i = x_i \oplus y_i \oplus c_i$
$c_{i + 1} = \text{Maj}(x_i,y_i,c_i)$

- Čas $\Theta(n)$
#### 2. způsob



