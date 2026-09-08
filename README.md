# Moser ChromStyle Pro 1871 – natívna pracovná schéma KiCad 9

Toto je prvá editovateľná rekonštrukcia dosky `Moser/Wahl 1871-7176`, PCB `E190688`, s mikrokontrolérom `ATTINY461V-10SU`.

## Otvorenie v KiCad 9

1. Stiahnite celý repozitár cez **Code → Download ZIP** alebo ho naklonujte pomocou Git.
2. Rozbaľte ho do samostatného priečinka.
3. V KiCad 9 otvorte `Moser_1871.kicad_pro`.
4. Schéma je uložená natívne ako `Moser_1871.kicad_sch`; vlastné symboly sú vložené priamo v nej. Cache knižnica ani legacy konverzia už nie sú potrebné.

Súbor bol skonvertovaný a uložený priamo v KiCad 9. Staré `.sch`, `.pro`, `.lib`, `-cache.lib` a `sym-lib-table` preto už nie sú súčasťou aktívneho projektu.

## Pravidlá tejto rekonštrukcie

- Plné vodiče a pomenované siete predstavujú používateľom premeranú kontinuitu.
- Otvorené vývody sú zámerné; spojenie zatiaľ nebolo spoľahlivo overené.
- Označenie `?`, `VERIFY` alebo poznámka `pinout verify` znamená, že treba overiť hodnotu, orientáciu alebo pinout.
- Čísla ako `151`, `103`, `104`, `5602` a `2203` sú nápisy na súčiastkach, nie pôvodné referenčné označenia výrobcu PCB.
- Tranzistor `FZT968` je PNP bipolárny tranzistor, nie MOSFET.
- Schéma zatiaľ nie je určená na výrobu ani na pripájanie programátora k MCU.

## Potvrdené mapovanie ATtiny461V

| Fyzický pin | Funkcia v doske | Pin MCU |
|---:|---|---|
| 1 | zelená LED „plné“ cez 151 | PB0 |
| 2 | riadenie nabíjacej vetvy | PB1 |
| 3 | zelená LED cez 151 | PB2 |
| 4 | riadenie motorovej vetvy | PB3 |
| 5 | digitálne napájanie, namerané približne 2,50 V | VCC |
| 6 | digitálna zem | GND |
| 8 | zelená LED cez 151 | PB5 |
| 12 | červená LED cez 151 | PA6 / ADC5 |
| 13 | vypínač pripája GND | PA5 / ADC4 |
| 14 | filtrovaná analógová vetva cez 103 a 5602 | PA4 / ADC3 |
| 15 | analógové napájanie, namerané približne 2,50 V | AVCC |
| 16 | analógová zem | AGND |
| 19 | vetva bočníkov R100 č. 1 a 2 cez rezistor 103 | PA1 / ADC1 |
| 20 | vetva bočníkov R100 č. 3 a 4 cez 104 + C | PA0 / ADC0 |

## Vetva pinu 14 – stav v0.1

Podľa premeranej kontinuity je poradie:

`pin 14 → R103 (10 kΩ) → sieť R5602 → R5602 → kolektor samostatného tranzistora 3B`

Jeden z rezistorov `5602` má keramický kondenzátor pripojený paralelne na oba svoje vývody. Kondenzátor preto nie je automaticky zakreslený proti pinu 16 ani proti GND. Báza a emitor daného tranzistora `3B` ostávajú otvorené, kým sa nepremerajú.

Rezistor pri LED tranzistore má označenie `2203`, teda 220 kΩ. V tejto verzii nie je pripojený na GND, pretože taká kontinuita nebola zistená.

## Známe merania

- Nový Ni-MH pack: 3,6 V / 2000 mAh, externý test približne 1700 mAh a 6,2 Wh pri 300 mA.
- Motor samostatne: približne 530 mA pri 4 V.
- Pin 20 pri motore: približne 29,5 mV bez záťaže a 35 mV pri miernom pribrzdení.
- Pin 14: približne 1,79 V pri motore a 1,84 V pri pripojenom adaptéri.
- Automatické vypnutie motora nastalo približne pri 2,885–2,888 V packu.

## Ďalší krok

Najvyššiu prioritu má doplnenie LED spoločnej napájacej vetvy a presného okolia pinu 14. Neznáme tranzistory a keramické kondenzátory budú postupne číslované a dopĺňané podľa meraní pod mikroskopom.
