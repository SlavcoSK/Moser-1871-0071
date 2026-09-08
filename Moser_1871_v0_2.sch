EESchema Schematic File Version 4
LIBS:Moser_1871_RE
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "Moser ChromStyle Pro 1871 - reverse engineering"
Date "2026-09-08"
Rev "v0.2 WORKING / NOT FOR PRODUCTION"
Comp "Slavko + Codex"
Comment1 "Solid wires = continuity-confirmed; isolated blocks and notes = pending verification"
Comment2 "Physical component placement follows PCB only approximately"
Comment3 "Values are markings decoded where known; 3B/6CW pinout remains to verify"
Comment4 "DO NOT PROGRAM MCU FROM THIS SCHEMATIC"
$EndDescr
Text Notes 700 550 0 100 ~ 20
MOSER 1871-7176 / PCB E190688 - WORKING REVERSE-ENGINEERING SCHEMATIC v0.1
Text Notes 700 750 0 55 ~ 0
This first pass records only measured continuity and confirmed component markings. It deliberately contains open nets.
$Comp
L Moser_1871_RE:ATtiny461V_SOIC20_RE U1
U 1 1 1
P 4800 3550
F 0 "U1" H 4800 4750 60  0000 C CNN
F 1 "ATTINY461V-10SU" H 4800 2350 60 0000 C CNN
	1    4800 3550
	1 0 0 -1
$EndComp
Text Notes 4050 2200 0 55 ~ 0
MCU pins confirmed from Microchip datasheet (SOIC-20)
Text Notes 700 1150 0 75 ~ 12
POWER / CONNECTORS (placement approximation)
$Comp
L Moser_1871_RE:CONN2_RE J1
U 1 1 2
P 1200 1550
F 0 "J1" H 1200 1775 45 0000 C CNN
F 1 "BATTERY 3.6V Ni-MH" H 1200 1325 45 0000 C CNN
	1    1200 1550
	1 0 0 -1
$EndComp
Text Label 850 1475 2 45 ~ 0
BAT+
Text Label 850 1625 2 45 ~ 0
BAT-
Wire Wire Line
	900 1475 850 1475
Wire Wire Line
	900 1625 850 1625
$Comp
L Moser_1871_RE:CONN2_RE J2
U 1 1 3
P 1200 2200
F 0 "J2" H 1200 2425 45 0000 C CNN
F 1 "ADAPTER / STAND 6.5V" H 1200 1975 45 0000 C CNN
	1    1200 2200
	1 0 0 -1
$EndComp
Text Label 850 2125 2 45 ~ 0
ADAPTER+
Text Label 850 2275 2 45 ~ 0
ADAPTER-
Wire Wire Line
	900 2125 850 2125
Wire Wire Line
	900 2275 850 2275
$Comp
L Moser_1871_RE:CONN2_RE J3
U 1 1 4
P 1200 2850
F 0 "J3" H 1200 3075 45 0000 C CNN
F 1 "MOTOR" H 1200 2625 45 0000 C CNN
	1    1200 2850
	1 0 0 -1
$EndComp
Text Label 850 2775 2 45 ~ 0
MOTOR+
Text Label 850 2925 2 45 ~ 0
MOTOR-
Wire Wire Line
	900 2775 850 2775
Wire Wire Line
	900 2925 850 2925
Text Notes 700 3450 0 75 ~ 12
SWITCH
$Comp
L Moser_1871_RE:SWITCH_RE SW1
U 1 1 5
P 1750 3850
F 0 "SW1" H 1750 4025 45 0000 C CNN
F 1 "ON/OFF contacts" H 1750 3675 45 0000 C CNN
	1    1750 3850
	1 0 0 -1
$EndComp
Text Label 1400 3850 2 45 ~ 0
GND
Wire Wire Line
	1450 3850 1400 3850
Text Label 2100 3850 0 45 ~ 0
MCU_PIN13_SW
Wire Wire Line
	2050 3850 2100 3850
Text Label 5500 4050 0 45 ~ 0
MCU_PIN13_SW
Wire Wire Line
	5450 4050 5500 4050
Text Notes 700 4200 0 50 ~ 0
Measured: switch closes GND to physical pin 13 (PA5).
Text Notes 6800 1050 0 75 ~ 12
4-LED INDICATOR - confirmed MCU pin mapping
$Comp
L Moser_1871_RE:PNP_RE Q_LED
U 1 1 6
P 9550 1750
F 0 "Q_LED" H 9750 1825 45 0000 L CNN
F 1 "3B / PNP? pinout verify" H 9750 1725 45 0000 L CNN
	1    9550 1750
	1 0 0 -1
$EndComp
Text Label 9700 2050 0 45 ~ 0
BAT+
Wire Wire Line
	9700 2000 9700 2050
Text Label 9700 1450 0 45 ~ 0
LED_COMMON
Wire Wire Line
	9700 1500 9700 1450
Text Notes 9250 2180 0 45 ~ 0
User continuity: E -> BAT+, C -> common side of all LEDs.
$Comp
L Moser_1871_RE:LED_RE D1
U 1 1 7
P 7800 2550
F 0 "D1" H 7700 2675 45 0000 R CNN
F 1 "RED" H 7900 2675 45 0000 L CNN
	1    7800 2550
	-1 0 0 1
$EndComp
$Comp
L Moser_1871_RE:R_RE R_LED1
U 1 1 8
P 7000 2550
F 0 "R_LED1" V 6900 2550 45 0000 C CNN
F 1 "151 = 150R" V 7000 2550 45 0000 C CNN
	1    7000 2550
	0 1 1 0
$EndComp
Wire Wire Line
	7200 2550 7550 2550
Text Label 6750 2550 2 45 ~ 0
U1_PIN12_PA6
Wire Wire Line
	6800 2550 6750 2550
Wire Wire Line
	8050 2550 8350 2550
Text Label 8350 2550 0 45 ~ 0
LED_COMMON
$Comp
L Moser_1871_RE:LED_RE D2
U 1 1 9
P 7800 3000
F 0 "D2" H 7700 3125 45 0000 R CNN
F 1 "GREEN 1" H 7900 3125 45 0000 L CNN
	1    7800 3000
	-1 0 0 1
$EndComp
$Comp
L Moser_1871_RE:R_RE R_LED2
U 1 1 10
P 7000 3000
F 0 "R_LED2" V 6900 3000 45 0000 C CNN
F 1 "151 = 150R" V 7000 3000 45 0000 C CNN
	1    7000 3000
	0 1 1 0
$EndComp
Wire Wire Line
	7200 3000 7550 3000
Text Label 6750 3000 2 45 ~ 0
U1_PIN3_PB2
Wire Wire Line
	6800 3000 6750 3000
Wire Wire Line
	8050 3000 8350 3000
Text Label 8350 3000 0 45 ~ 0
LED_COMMON
$Comp
L Moser_1871_RE:LED_RE D3
U 1 1 11
P 7800 3450
F 0 "D3" H 7700 3575 45 0000 R CNN
F 1 "GREEN 2" H 7900 3575 45 0000 L CNN
	1    7800 3450
	-1 0 0 1
$EndComp
$Comp
L Moser_1871_RE:R_RE R_LED3
U 1 1 12
P 7000 3450
F 0 "R_LED3" V 6900 3450 45 0000 C CNN
F 1 "151 = 150R" V 7000 3450 45 0000 C CNN
	1    7000 3450
	0 1 1 0
$EndComp
Wire Wire Line
	7200 3450 7550 3450
Text Label 6750 3450 2 45 ~ 0
U1_PIN8_PB5
Wire Wire Line
	6800 3450 6750 3450
Wire Wire Line
	8050 3450 8350 3450
Text Label 8350 3450 0 45 ~ 0
LED_COMMON
$Comp
L Moser_1871_RE:LED_RE D4
U 1 1 13
P 7800 3900
F 0 "D4" H 7700 4025 45 0000 R CNN
F 1 "GREEN 3 / FULL" H 7900 4025 45 0000 L CNN
	1    7800 3900
	-1 0 0 1
$EndComp
$Comp
L Moser_1871_RE:R_RE R_LED4
U 1 1 14
P 7000 3900
F 0 "R_LED4" V 6900 3900 45 0000 C CNN
F 1 "151 = 150R" V 7000 3900 45 0000 C CNN
	1    7000 3900
	0 1 1 0
$EndComp
Wire Wire Line
	7200 3900 7550 3900
Text Label 6750 3900 2 45 ~ 0
U1_PIN1_PB0
Wire Wire Line
	6800 3900 6750 3900
Wire Wire Line
	8050 3900 8350 3900
Text Label 8350 3900 0 45 ~ 0
LED_COMMON
Text Label 4150 2650 2 45 ~ 0
U1_PIN1_PB0
Wire Wire Line
	4150 2650 4150 2650
Text Label 4150 3050 2 45 ~ 0
U1_PIN3_PB2
Text Label 4150 4050 2 45 ~ 0
U1_PIN8_PB5
Text Label 5450 4250 0 45 ~ 0
U1_PIN12_PA6
Text Notes 6500 4500 0 75 ~ 12
PIN 14 ANALOG NETWORK - continuity-confirmed path
Text Label 5500 3850 0 45 ~ 0
U1_PIN14_ADC3
Wire Wire Line
	5450 3850 5500 3850
$Comp
L Moser_1871_RE:R_RE R14_IN
U 1 1 15
P 6500 4900
F 0 "R14_IN" V 6400 4900 45 0000 C CNN
F 1 "103 = 10k" V 6500 4900 45 0000 C CNN
	1    6500 4900
	0 1 1 0
$EndComp
Text Label 6250 4900 2 45 ~ 0
U1_PIN14_ADC3
Wire Wire Line
	6300 4900 6250 4900
$Comp
L Moser_1871_RE:R_RE R14_A
U 1 1 16
P 7300 4900
F 0 "R14_A" V 7200 4900 45 0000 C CNN
F 1 "5602 = 56k" V 7300 4900 45 0000 C CNN
	1    7300 4900
	0 1 1 0
$EndComp
Wire Wire Line
	6700 4900 7100 4900
$Comp
L Moser_1871_RE:C_RE C14_A
U 1 1 17
P 7300 5300
F 0 "C14_A" V 7200 5300 45 0000 C CNN
F 1 "ceramic / value ?" V 7400 5300 45 0000 C CNN
	1    7300 5300
	0 1 1 0
$EndComp
Wire Wire Line
	7100 5300 6900 5300
Wire Wire Line
	6900 5300 6900 4900
Connection ~ 6900 4900
Wire Wire Line
	7500 5300 7700 5300
Wire Wire Line
	7700 5300 7700 4900
Wire Wire Line
	7500 4900 7900 4900
Connection ~ 7700 4900
$Comp
L Moser_1871_RE:R_RE R14_B
U 1 1 18
P 8300 4900
F 0 "R14_B" V 8200 4900 45 0000 C CNN
F 1 "5602 = 56k" V 8300 4900 45 0000 C CNN
	1    8300 4900
	0 1 1 0
$EndComp
Wire Wire Line
	7900 4900 8100 4900
$Comp
L Moser_1871_RE:PNP_RE Q14
U 1 1 19
P 9100 5150
F 0 "Q14" H 9300 5225 45 0000 L CNN
F 1 "3B / pinout verify" H 9300 5125 45 0000 L CNN
	1    9100 5150
	1 0 0 -1
$EndComp
Wire Wire Line
	8500 4900 9250 4900
Text Notes 6500 5600 0 48 ~ 0
Confirmed order: pin14 -> R103 -> R5602 network -> collector of separate 3B transistor.
Text Notes 6500 5775 0 48 ~ 0
Confirmed: one 5602 has a ceramic capacitor connected across both of its terminals.
Text Notes 6500 5950 0 48 ~ 0
Q14 base/emitter and exact assignment of first/second 5602 remain open for continuity check.
Text Notes 700 4750 0 75 ~ 12
CURRENT SHUNTS / ADC INPUTS
$Comp
L Moser_1871_RE:R_RE RSH1
U 1 1 20
P 1150 5250
F 0 "RSH1" V 1050 5250 45 0000 C CNN
F 1 "R100 = 0.1R" V 1150 5250 45 0000 C CNN
	1    1150 5250
	0 1 1 0
$EndComp
$Comp
L Moser_1871_RE:R_RE RSH2
U 1 1 21
P 1150 5550
F 0 "RSH2" V 1050 5550 45 0000 C CNN
F 1 "R100 = 0.1R" V 1150 5550 45 0000 C CNN
	1    1150 5550
	0 1 1 0
$EndComp
Wire Wire Line
	950 5250 850 5250
Wire Wire Line
	850 5250 850 5550
Wire Wire Line
	850 5550 950 5550
Wire Wire Line
	1350 5250 1450 5250
Wire Wire Line
	1450 5250 1450 5550
Wire Wire Line
	1450 5550 1350 5550
Text Label 850 5400 2 45 ~ 0
SHUNT12_A
Text Label 1450 5400 0 45 ~ 0
SHUNT12_B
$Comp
L Moser_1871_RE:R_RE R19_IN
U 1 1 22
P 2200 5400
F 0 "R19_IN" V 2100 5400 45 0000 C CNN
F 1 "103 = 10k" V 2200 5400 45 0000 C CNN
	1    2200 5400
	0 1 1 0
$EndComp
Wire Wire Line
	1450 5400 2000 5400
Text Label 2450 5400 0 45 ~ 0
U1_PIN19_ADC1
Wire Wire Line
	2400 5400 2450 5400
$Comp
L Moser_1871_RE:R_RE RSH3
U 1 1 23
P 1150 6150
F 0 "RSH3" V 1050 6150 45 0000 C CNN
F 1 "R100 = 0.1R" V 1150 6150 45 0000 C CNN
	1    1150 6150
	0 1 1 0
$EndComp
$Comp
L Moser_1871_RE:R_RE RSH4
U 1 1 24
P 1150 6450
F 0 "RSH4" V 1050 6450 45 0000 C CNN
F 1 "R100 = 0.1R" V 1150 6450 45 0000 C CNN
	1    1150 6450
	0 1 1 0
$EndComp
Wire Wire Line
	950 6150 850 6150
Wire Wire Line
	850 6150 850 6450
Wire Wire Line
	850 6450 950 6450
Wire Wire Line
	1350 6150 1450 6150
Wire Wire Line
	1450 6150 1450 6450
Wire Wire Line
	1450 6450 1350 6450
Text Label 850 6300 2 45 ~ 0
SHUNT34_A
Text Label 1450 6300 0 45 ~ 0
SHUNT34_B
$Comp
L Moser_1871_RE:R_RE R20_IN
U 1 1 25
P 2200 6300
F 0 "R20_IN" V 2100 6300 45 0000 C CNN
F 1 "104 = 100k" V 2200 6300 45 0000 C CNN
	1    2200 6300
	0 1 1 0
$EndComp
Wire Wire Line
	1450 6300 2000 6300
Text Label 2450 6300 0 45 ~ 0
U1_PIN20_ADC0
Wire Wire Line
	2400 6300 2450 6300
$Comp
L Moser_1871_RE:C_RE C20_FILTER
U 1 1 26
P 2700 6650
F 0 "C20_FILTER" H 2775 6725 45 0000 L CNN
F 1 "ceramic / value ?" H 2775 6575 45 0000 L CNN
	1    2700 6650
	1 0 0 -1
$EndComp
Wire Wire Line
	2700 6450 2700 6300
Wire Wire Line
	2700 6300 2450 6300
Text Label 2700 6900 0 45 ~ 0
AGND
Wire Wire Line
	2700 6850 2700 6900
Text Notes 700 7000 0 48 ~ 0
Measured pin20: 29.5mV motor free, 35mV loaded. With RSH3||RSH4 = 0.05R this corresponds to ~0.59A / 0.70A.
Text Notes 3550 5050 0 75 ~ 12
POWER SWITCH DRIVERS (known control pins; power nets pending)
Text Label 4150 2850 2 45 ~ 0
U1_PIN2_CHARGE
Text Label 4150 3250 2 45 ~ 0
U1_PIN4_MOTOR
$Comp
L Moser_1871_RE:NPN_RE QDRV_CHG
U 1 1 27
P 4000 5700
F 0 "QDRV_CHG" H 4200 5775 45 0000 L CNN
F 1 "6CW / pinout verify" H 4200 5675 45 0000 L CNN
	1    4000 5700
	1 0 0 -1
$EndComp
Text Label 3650 5700 2 45 ~ 0
U1_PIN2_CHARGE
Wire Wire Line
	3700 5700 3650 5700
$Comp
L Moser_1871_RE:R_RE RBASE_CHG
U 1 1 28
P 4750 5450
F 0 "RBASE_CHG" V 4650 5450 45 0000 C CNN
F 1 "151 = 150R" V 4750 5450 45 0000 C CNN
	1    4750 5450
	0 1 1 0
$EndComp
$Comp
L Moser_1871_RE:FZT968_RE Q_CHG
U 1 1 29
P 5550 5450
F 0 "Q_CHG" H 5750 5525 45 0000 L CNN
F 1 "FZT968 charge" H 5750 5425 45 0000 L CNN
	1    5550 5450
	1 0 0 -1
$EndComp
Wire Wire Line
	4950 5450 5250 5450
Text Notes 4000 6050 0 45 ~ 0
Driver-to-FZT connection retained as reported; verify exact 6CW terminal and pull resistors.
$Comp
L Moser_1871_RE:NPN_RE QDRV_MOT
U 1 1 30
P 4000 6500
F 0 "QDRV_MOT" H 4200 6575 45 0000 L CNN
F 1 "6CW / pinout verify" H 4200 6475 45 0000 L CNN
	1    4000 6500
	1 0 0 -1
$EndComp
Text Label 3650 6500 2 45 ~ 0
U1_PIN4_MOTOR
Wire Wire Line
	3700 6500 3650 6500
$Comp
L Moser_1871_RE:R_RE RBASE_MOT
U 1 1 31
P 4750 6250
F 0 "RBASE_MOT" V 4650 6250 45 0000 C CNN
F 1 "DEE / value verify" V 4750 6250 45 0000 C CNN
	1    4750 6250
	0 1 1 0
$EndComp
$Comp
L Moser_1871_RE:FZT968_RE Q_MOT
U 1 1 32
P 5550 6250
F 0 "Q_MOT" H 5750 6325 45 0000 L CNN
F 1 "FZT968 motor" H 5750 6225 45 0000 L CNN
	1    5550 6250
	1 0 0 -1
$EndComp
Wire Wire Line
	4950 6250 5250 6250
Text Notes 6800 6250 0 75 ~ 12
OPEN ITEMS FOR NEXT CONTINUITY SESSION
Text Notes 6800 6475 0 48 ~ 0
1. Q14 (3B): base and emitter destinations; verify SOT-23 pin numbers.
Text Notes 6800 6650 0 48 ~ 0
2. Pin14 branch: identify which physical 5602 is R14_A and R14_B.
Text Notes 6800 6825 0 48 ~ 0
3. LED common circuit: complete 6CW + diode + R101 + R2203 connections.
Text Notes 6800 7000 0 48 ~ 0
4. Complete collectors/emitters of both FZT968 and exact motor/charge power paths.
Text Notes 6800 7175 0 48 ~ 0
5. Identify all unmarked ceramics and remaining SOT-23 devices by numbered PCB map.
$EndSCHEMATC
