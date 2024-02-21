---
tags:
  - network
date: 2024-02-21
completed: true
---
## Motivace

- přenos dat
- data by se neměla ukládat
- přenesená data by se neměli měnit


## Pojmy

 - **přenosová cesta**
	 - fyzická (optika, ...), virtuální
- **přenosový kanál**
	- jednosměrný přenos

- **simplex**
	- jednosměrná komunikace
- **half-duplex**
	- obousměrná komunikace
	- nelze zároveň
- **full-duplex**
	- obousměrná komunikace
	- zároveň
- **uni-cast**
	- 1 příjemce a 1 příjemce
- **any-cast**
	- jakýkoliv uzel ve skupině
- **multicast**
	- všechny uzly ve skupině
- **broadcast**
	- jakýkoliv dosažitelný uzel
- **uzel**
	- cokoliv co chce komunikovat

## Datové přenosy

- **block**
	- data jsou rozděleny do bloků
		- pevná/dynamická velikost
		- nemusí zachovávat pořadí
	- block obsahuje header, body a footer
	- metadata
		- odesílatel, identifikátor, číslo bloku, ...
	
- **stream**
	- individuální symboly (bit, byte, word)
	- zachovává pořadí

## (Ne)Spojované přenosy

- **spojované**
	- zachováno pořadí
	- **navázání spojení -> udržení spojení -> ukončení spojení**
	- stavy
		- closed, established, ...
- **nespojované**
	- datagramy
	- blokový přenos dat
	- neověřuje příjemce
		- byl datagram přijat
		- existuje příjemce

## Přepojování

- **okruhů**
	- cesta mezi příjemcem a odesílatelem se hledá pouze jednou
	- všechny data se posílají najednou
	- spojovaný
	- iluze přímého spojení
	- nízká a konstantní latence
	- zachovává pořadí
	- podporuje block a stream
- **paketů**
	- pro každý paket se hledá cesta v každém směrovacím prvku
	- přepojovací uzel
		- buffery
			- inbound a outbound
	- metadata
	- sdílená přenosová kapacita
	- vyšší latence a nepředvídatelná
	- spojované -> virtuální okruh
	- nespojované -> datagramy

## Spolehlivost

- **spolehlivé**
	- chyby jsou detekovány a opraveny
	- detekce
		- parita, checksum, ...
	 - pokud data nejdou opravit, tak jsou poslány znovu
	 - vyšší nároky na HW a na síť
- **nespolehlivé**
	- data mohou být ztraceny nebo poškozeny
	- nižší latence

## (Ne)Garantované

- **garantované**
	- zdroje jsou rezervovány předem
	- nemusí použít celou svojí kapacitu -> neefektivní
	- přepojování okruhů
- **negarantované**
	- přepojování paketů
	- sdílená přenosová kapacita -> některé pakety mohou být zahozeny

- **best effort princip**
	- všechny data jsou si rovny

### Quality of Service

- **relative**
	- různé priority
- **absolute**
	- rezervace zdrojů předem

## Telekomunikační síť

Chytrá síť, hloupé uzly

- spojování okruhů
- spojované
- spolehlivé
- garantované 

## Počítačová síť

Hloupá síť, chytré uzly

- spojování paketů
- nespojované
- nespolehlivé
- negarantované (best effort)

