---
tags:
  - algo
date: 2023-11-30
completed: false
---
## Konvexní obal

- Setřídíme body zleva doprava (nebo lexikograficky)
- $H \leftarrow$ levý bod, $D \leftarrow H$
- Pro všechny ostatní body $b$:
	- Dokud $|H| \ge 2$ a $H[-2]H[-1]b$ otáčí doleva
		- odebereme poslední bod z $H$
	- Přidáme b na konec $H$
	- Podobně pro $D$
- Výstup: $D$

Čas $\Theta(n \log n)$