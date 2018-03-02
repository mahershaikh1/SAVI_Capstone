EESchema Schematic File Version 2
LIBS:Capstone-rescue
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:nx3l4051
LIBS:steppermotor
LIBS:dcmotor
LIBS:l293d
LIBS:l293dd
LIBS:lt1935es5
LIBS:tps61085-q1
LIBS:max4617
LIBS:Capstone-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR035
U 1 1 59EF14BC
P 2900 4150
F 0 "#PWR035" H 2900 3900 50  0001 C CNN
F 1 "GND" H 2900 4000 50  0000 C CNN
F 2 "" H 2900 4150 50  0000 C CNN
F 3 "" H 2900 4150 50  0000 C CNN
	1    2900 4150
	1    0    0    -1  
$EndComp
Text HLabel 6350 3200 2    60   Input ~ 0
Vcc
Text HLabel 4900 1100 0    60   Input ~ 0
M4_V+
Wire Wire Line
	2900 3900 2900 4150
Wire Wire Line
	4900 1100 8900 1100
Wire Wire Line
	8900 1650 8150 1650
Wire Wire Line
	8150 1100 8150 4950
Connection ~ 8150 1100
Wire Wire Line
	8150 2200 8900 2200
Connection ~ 8150 1650
Wire Wire Line
	8150 2750 8900 2750
Connection ~ 8150 2200
Wire Wire Line
	8150 3300 8900 3300
Connection ~ 8150 2750
Connection ~ 8150 3300
Wire Wire Line
	8150 4400 8900 4400
Connection ~ 8150 3850
Connection ~ 8150 4400
Text HLabel 2450 3400 0    60   Input ~ 0
M4_V-
Text HLabel 4350 3700 2    60   Input ~ 0
CONTROL_A
Text HLabel 4350 3800 2    60   Input ~ 0
CONTROL_B
Text HLabel 4350 3900 2    60   Input ~ 0
CONTROL_C
Text HLabel 2450 3700 0    60   Input ~ 0
ENABLE_M4
Wire Wire Line
	2450 3400 2900 3400
Wire Wire Line
	2450 3700 2900 3700
Wire Wire Line
	4350 3700 3900 3700
Wire Wire Line
	4350 3800 3900 3800
Wire Wire Line
	4350 3900 3900 3900
Text Label 4400 3500 0    60   ~ 0
C0_M4_V-
Text Label 4400 3600 0    60   ~ 0
C3_M4_V-
Text Label 4400 3400 0    60   ~ 0
C1_M4_V-
Text Label 4400 3300 0    60   ~ 0
C2_M4_V-
Text Label 2400 3500 2    60   ~ 0
C7_M4_V-
Text Label 2400 3600 2    60   ~ 0
C5_M4_V-
Text Label 2400 3300 2    60   ~ 0
C6_M4_V-
Text Label 2400 3200 2    60   ~ 0
C4_M4_V-
Wire Wire Line
	2400 3200 2900 3200
Wire Wire Line
	2900 3300 2400 3300
Wire Wire Line
	2400 3500 2900 3500
Wire Wire Line
	2900 3600 2400 3600
Wire Wire Line
	3900 3300 4400 3300
Wire Wire Line
	4400 3400 3900 3400
Wire Wire Line
	4400 3500 3900 3500
Wire Wire Line
	4400 3600 3900 3600
Text Label 7400 1200 2    60   ~ 0
C0_M4_V-
Text Label 7450 2850 2    60   ~ 0
C3_M4_V-
Text Label 7400 1750 2    60   ~ 0
C1_M4_V-
Text Label 7450 2300 2    60   ~ 0
C2_M4_V-
Wire Wire Line
	7400 1200 8900 1200
Wire Wire Line
	7400 1750 8900 1750
Wire Wire Line
	7450 2300 8900 2300
Wire Wire Line
	7450 2850 8900 2850
Text Label 7400 5050 2    60   ~ 0
C7_M4_V-
Text Label 7400 3950 2    60   ~ 0
C5_M4_V-
Text Label 7400 4500 2    60   ~ 0
C6_M4_V-
Text Label 7400 3400 2    60   ~ 0
C4_M4_V-
Wire Wire Line
	8900 3850 8150 3850
Wire Wire Line
	8150 4950 8900 4950
Wire Wire Line
	7400 3400 8900 3400
Wire Wire Line
	7400 3950 8900 3950
Wire Wire Line
	7400 4500 8900 4500
Wire Wire Line
	7400 5050 8900 5050
$Comp
L R_Small R42
U 1 1 59F8E8DD
P 7750 1350
F 0 "R42" H 7780 1370 50  0000 L CNN
F 1 "10k" H 7780 1310 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 1350 50  0001 C CNN
F 3 "" H 7750 1350 50  0000 C CNN
	1    7750 1350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 59F8E92B
P 7750 1500
F 0 "#PWR036" H 7750 1250 50  0001 C CNN
F 1 "GND" H 7750 1350 50  0000 C CNN
F 2 "" H 7750 1500 50  0000 C CNN
F 3 "" H 7750 1500 50  0000 C CNN
	1    7750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1250 7750 1200
Connection ~ 7750 1200
Wire Wire Line
	7750 1450 7750 1500
$Comp
L R_Small R43
U 1 1 59F8EA0D
P 7750 1900
F 0 "R43" H 7780 1920 50  0000 L CNN
F 1 "10k" H 7780 1860 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 1900 50  0001 C CNN
F 3 "" H 7750 1900 50  0000 C CNN
	1    7750 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 59F8EA13
P 7750 2050
F 0 "#PWR037" H 7750 1800 50  0001 C CNN
F 1 "GND" H 7750 1900 50  0000 C CNN
F 2 "" H 7750 2050 50  0000 C CNN
F 3 "" H 7750 2050 50  0000 C CNN
	1    7750 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 1800 7750 1750
Wire Wire Line
	7750 2000 7750 2050
$Comp
L R_Small R44
U 1 1 59F8EA48
P 7750 2450
F 0 "R44" H 7780 2470 50  0000 L CNN
F 1 "10k" H 7780 2410 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 2450 50  0001 C CNN
F 3 "" H 7750 2450 50  0000 C CNN
	1    7750 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR038
U 1 1 59F8EA4E
P 7750 2600
F 0 "#PWR038" H 7750 2350 50  0001 C CNN
F 1 "GND" H 7750 2450 50  0000 C CNN
F 2 "" H 7750 2600 50  0000 C CNN
F 3 "" H 7750 2600 50  0000 C CNN
	1    7750 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2350 7750 2300
Wire Wire Line
	7750 2550 7750 2600
$Comp
L R_Small R45
U 1 1 59F8EA97
P 7750 3000
F 0 "R45" H 7780 3020 50  0000 L CNN
F 1 "10k" H 7780 2960 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 3000 50  0001 C CNN
F 3 "" H 7750 3000 50  0000 C CNN
	1    7750 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR039
U 1 1 59F8EA9D
P 7750 3150
F 0 "#PWR039" H 7750 2900 50  0001 C CNN
F 1 "GND" H 7750 3000 50  0000 C CNN
F 2 "" H 7750 3150 50  0000 C CNN
F 3 "" H 7750 3150 50  0000 C CNN
	1    7750 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 2900 7750 2850
Wire Wire Line
	7750 3100 7750 3150
Connection ~ 7750 1750
Connection ~ 7750 2300
Connection ~ 7750 2850
$Comp
L R_Small R46
U 1 1 59F8EB3F
P 7750 3550
F 0 "R46" H 7780 3570 50  0000 L CNN
F 1 "10k" H 7780 3510 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 3550 50  0001 C CNN
F 3 "" H 7750 3550 50  0000 C CNN
	1    7750 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 59F8EB45
P 7750 3700
F 0 "#PWR040" H 7750 3450 50  0001 C CNN
F 1 "GND" H 7750 3550 50  0000 C CNN
F 2 "" H 7750 3700 50  0000 C CNN
F 3 "" H 7750 3700 50  0000 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3450 7750 3400
Wire Wire Line
	7750 3650 7750 3700
$Comp
L R_Small R47
U 1 1 59F8EB7E
P 7750 4100
F 0 "R47" H 7780 4120 50  0000 L CNN
F 1 "10k" H 7780 4060 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 4100 50  0001 C CNN
F 3 "" H 7750 4100 50  0000 C CNN
	1    7750 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR041
U 1 1 59F8EB84
P 7750 4250
F 0 "#PWR041" H 7750 4000 50  0001 C CNN
F 1 "GND" H 7750 4100 50  0000 C CNN
F 2 "" H 7750 4250 50  0000 C CNN
F 3 "" H 7750 4250 50  0000 C CNN
	1    7750 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4000 7750 3950
Wire Wire Line
	7750 4200 7750 4250
$Comp
L R_Small R48
U 1 1 59F8EBC1
P 7750 4650
F 0 "R48" H 7780 4670 50  0000 L CNN
F 1 "10k" H 7780 4610 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 4650 50  0001 C CNN
F 3 "" H 7750 4650 50  0000 C CNN
	1    7750 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR042
U 1 1 59F8EBC7
P 7750 4800
F 0 "#PWR042" H 7750 4550 50  0001 C CNN
F 1 "GND" H 7750 4650 50  0000 C CNN
F 2 "" H 7750 4800 50  0000 C CNN
F 3 "" H 7750 4800 50  0000 C CNN
	1    7750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4550 7750 4500
Wire Wire Line
	7750 4750 7750 4800
$Comp
L R_Small R49
U 1 1 59F8EC03
P 7750 5200
F 0 "R49" H 7780 5220 50  0000 L CNN
F 1 "10k" H 7780 5160 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 7750 5200 50  0001 C CNN
F 3 "" H 7750 5200 50  0000 C CNN
	1    7750 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR043
U 1 1 59F8EC09
P 7750 5350
F 0 "#PWR043" H 7750 5100 50  0001 C CNN
F 1 "GND" H 7750 5200 50  0000 C CNN
F 2 "" H 7750 5350 50  0000 C CNN
F 3 "" H 7750 5350 50  0000 C CNN
	1    7750 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5100 7750 5050
Wire Wire Line
	7750 5300 7750 5350
Connection ~ 7750 3400
Connection ~ 7750 3950
Connection ~ 7750 4500
Connection ~ 7750 5050
$Comp
L CONN_01X02 P26
U 1 1 59FA1C5C
P 9100 1150
F 0 "P26" H 9100 1300 50  0000 C CNN
F 1 "C0_M4" V 9200 1150 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 1150 50  0001 C CNN
F 3 "" H 9100 1150 50  0000 C CNN
	1    9100 1150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P27
U 1 1 59FA1D4A
P 9100 1700
F 0 "P27" H 9100 1850 50  0000 C CNN
F 1 "C1_M4" V 9200 1700 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 1700 50  0001 C CNN
F 3 "" H 9100 1700 50  0000 C CNN
	1    9100 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P28
U 1 1 59FA1DE4
P 9100 2250
F 0 "P28" H 9100 2400 50  0000 C CNN
F 1 "C2_M4" V 9200 2250 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 2250 50  0001 C CNN
F 3 "" H 9100 2250 50  0000 C CNN
	1    9100 2250
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P29
U 1 1 59FA1DEA
P 9100 2800
F 0 "P29" H 9100 2950 50  0000 C CNN
F 1 "C3_M4" V 9200 2800 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 2800 50  0001 C CNN
F 3 "" H 9100 2800 50  0000 C CNN
	1    9100 2800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P30
U 1 1 59FA1ECE
P 9100 3350
F 0 "P30" H 9100 3500 50  0000 C CNN
F 1 "C4_M4" V 9200 3350 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 3350 50  0001 C CNN
F 3 "" H 9100 3350 50  0000 C CNN
	1    9100 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P31
U 1 1 59FA1ED4
P 9100 3900
F 0 "P31" H 9100 4050 50  0000 C CNN
F 1 "C5_M4" V 9200 3900 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 3900 50  0001 C CNN
F 3 "" H 9100 3900 50  0000 C CNN
	1    9100 3900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P32
U 1 1 59FA1EDA
P 9100 4450
F 0 "P32" H 9100 4600 50  0000 C CNN
F 1 "C6_M4" V 9200 4450 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 4450 50  0001 C CNN
F 3 "" H 9100 4450 50  0000 C CNN
	1    9100 4450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P33
U 1 1 59FA1EE0
P 9100 5000
F 0 "P33" H 9100 5150 50  0000 C CNN
F 1 "C7_M4" V 9200 5000 50  0000 C CNN
F 2 "CustomParts:JST_PH" H 9100 5000 50  0001 C CNN
F 3 "" H 9100 5000 50  0000 C CNN
	1    9100 5000
	1    0    0    -1  
$EndComp
Text Notes 8700 1050 0    60   ~ 0
+
Text Notes 8700 1600 0    60   ~ 0
+
Text Notes 8700 2150 0    60   ~ 0
+
Text Notes 8700 2700 0    60   ~ 0
+
Text Notes 8700 3250 0    60   ~ 0
+
Text Notes 8700 3800 0    60   ~ 0
+
Text Notes 8700 4350 0    60   ~ 0
+
Text Notes 8700 4900 0    60   ~ 0
+
Text Notes 8700 1300 0    60   ~ 0
-
Text Notes 8700 1850 0    60   ~ 0
-
Text Notes 8700 2400 0    60   ~ 0
-
Text Notes 8700 2950 0    60   ~ 0
-
Text Notes 8700 3500 0    60   ~ 0
-
Text Notes 8700 4050 0    60   ~ 0
-
Text Notes 8700 4600 0    60   ~ 0
-
Text Notes 8700 5150 0    60   ~ 0
-
Wire Wire Line
	6350 3200 3900 3200
$Comp
L MAX4617 U4
U 1 1 59FBF3A1
P 3500 4050
F 0 "U4" H 3400 5050 60  0000 C CNN
F 1 "MAX4617" H 3400 4050 60  0000 C CNN
F 2 "CustomParts:16PDIP_Socket" H 3500 4050 60  0001 C CNN
F 3 "" H 3500 4050 60  0001 C CNN
	1    3500 4050
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 59FC4134
P 5850 3350
F 0 "C4" H 5875 3450 50  0000 L CNN
F 1 "0.1uF" H 5875 3250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5888 3200 50  0001 C CNN
F 3 "" H 5850 3350 50  0000 C CNN
	1    5850 3350
	1    0    0    -1  
$EndComp
Connection ~ 5850 3200
$Comp
L GND #PWR044
U 1 1 59FC41B4
P 5850 3500
F 0 "#PWR044" H 5850 3250 50  0001 C CNN
F 1 "GND" H 5850 3350 50  0000 C CNN
F 2 "" H 5850 3500 50  0000 C CNN
F 3 "" H 5850 3500 50  0000 C CNN
	1    5850 3500
	1    0    0    -1  
$EndComp
$Comp
L R_Small R7
U 1 1 5A00C989
P 2600 3900
F 0 "R7" H 2630 3920 50  0000 L CNN
F 1 "4.7k" H 2630 3860 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" H 2600 3900 50  0001 C CNN
F 3 "" H 2600 3900 50  0000 C CNN
	1    2600 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3800 2600 3700
Connection ~ 2600 3700
Wire Wire Line
	2600 4000 2600 4050
Wire Wire Line
	2600 4050 2900 4050
Connection ~ 2900 4050
$EndSCHEMATC
