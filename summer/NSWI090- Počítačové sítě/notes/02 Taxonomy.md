---
tags: 
  - network
date: 2024-02-28
completed: true
---


## Broadcast sítě

- stejná data jsou distribuována všem dostupným příjemcům (1:N)
- **technologie**
	- DVB (Digital Video Broadcasting)
	- DAB (Digital Audio Broadcasting)

## Switched sítě

- **unicast**
- přepojování okruhů
	- nezbytné pro spojované a garantované
	- block/stream i spolehlivé/nespolehlivé
- přepojování paketů
	- bloky
	- spojované
		- virtuální okruhy
		- spolehlivé/nespolehlivé a Best Effort/ QoS
	- nespojované
		- datagram service
		- spolehlivé/nespolehlivé a Best Effort/ relativní QoS

## Kategorie

- **telekomunikační sítě**
	- poskytují dedikovanou jednoúčelovou službu
	- chytré sítě, hloupé zařízení
- **datové sítě**
	- umožňují přenášet data v jakékoli formě
	- veřejné
		- určené pro použití zákazníky
		- telekomunikační operátoři
		- charging princip
			- volume, počet připojení
	- privátní
		- nákladné, ale vlastník má plnou kontrolu
		- Datová síť ministerstva vnitra
			- integrovaný záchranný systém
	- virtuální
		- sdílená infrastruktura
		- iluze privátní sítě
	- hloupé sítě, chytré zařízení 
- **počítačové sítě**
	- typy
		- PAN
		- LAN
		- MAN
		- WAN
	- hloupé sítě, chytré zařízení 

## Architektura internetu

- typy provozu
	- peering
		- mezi ISP
		- přímá výměna provozu
	- transit
		- koncový uživatel nebo ISP platí většinou větší ISP
- hierarchie
	- tier 1 ISP (Internet service provider)
		- backbone
		- síť, která dokáže dosáhnou všechny ostatní sítě bez placení 
	- tier 2 ISP
		- regionální nebo státní
	- tier 3 ISP
		- poskytuje připojení koncovým uživatelům