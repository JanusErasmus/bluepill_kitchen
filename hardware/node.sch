EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "RF Node"
Date "2018-12-14"
Rev ""
Comp ""
Comment1 "Generic layout for a node"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L bluepill_breakouts:NRF24L01_Breakout-Bluepill-bluepill_ups-rescue-bluepill_ups-rescue U?
U 1 1 5C14BC20
P 2150 4150
AR Path="/5C14BC20" Ref="U?"  Part="1" 
AR Path="/5C14BAF9/5C14BC20" Ref="U1"  Part="1" 
F 0 "U1" H 2628 4128 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 2628 4037 50  0000 L CNN
F 2 "SIP8" H 2300 4750 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 2150 4050 50  0001 C CNN
	1    2150 4150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 3950 2650 3950
Wire Wire Line
	2650 3850 4800 3850
Wire Wire Line
	2650 4050 4800 4050
Wire Wire Line
	4800 4150 2650 4150
Wire Wire Line
	2650 4250 4300 4250
$Comp
L power:GNDREF #PWR?
U 1 1 5C14BC2D
P 2150 4800
AR Path="/5C14BC2D" Ref="#PWR?"  Part="1" 
AR Path="/5C14BAF9/5C14BC2D" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 2150 4550 50  0001 C CNN
F 1 "GNDREF" H 2155 4627 50  0001 C CNN
F 2 "" H 2150 4800 50  0001 C CNN
F 3 "" H 2150 4800 50  0001 C CNN
	1    2150 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 4750 2150 4800
Text Label 3250 3850 0    50   ~ 0
SP1_CS
Text Label 3250 3950 0    50   ~ 0
SPI1_SCK
Text Label 3250 4050 0    50   ~ 0
SPI1_MISO
Text Label 3250 4150 0    50   ~ 0
SPI1_MOSI
Text Label 3250 4250 0    50   ~ 0
NRF_IRQ
Text Label 3250 4350 0    50   ~ 0
NRF_CE
$Comp
L power:+3.3V #PWR?
U 1 1 5C14BC4E
P 2150 3300
AR Path="/5C14BC4E" Ref="#PWR?"  Part="1" 
AR Path="/5C14BAF9/5C14BC4E" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2150 3150 50  0001 C CNN
F 1 "+3.3V" H 2165 3473 50  0000 C CNN
F 2 "" H 2150 3300 50  0001 C CNN
F 3 "" H 2150 3300 50  0001 C CNN
	1    2150 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 3300 2150 3550
$Comp
L power:+3.3V #PWR?
U 1 1 5C14BC55
P 4400 4750
AR Path="/5C14BC55" Ref="#PWR?"  Part="1" 
AR Path="/5C14BAF9/5C14BC55" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 4400 4600 50  0001 C CNN
F 1 "+3.3V" V 4415 4878 50  0000 L CNN
F 2 "" H 4400 4750 50  0001 C CNN
F 3 "" H 4400 4750 50  0001 C CNN
	1    4400 4750
	0    -1   -1   0   
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5C14BC5C
P 4650 5050
AR Path="/5C14BC5C" Ref="#PWR?"  Part="1" 
AR Path="/5C14BAF9/5C14BC5C" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 4650 4800 50  0001 C CNN
F 1 "GNDREF" H 4655 4877 50  0001 C CNN
F 2 "" H 4650 5050 50  0001 C CNN
F 3 "" H 4650 5050 50  0001 C CNN
	1    4650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4850 4650 4850
Wire Wire Line
	4650 4850 4650 4950
Wire Wire Line
	4800 4950 4650 4950
Connection ~ 4650 4950
Wire Wire Line
	4650 4950 4650 5050
Wire Wire Line
	4800 3450 4300 3450
Wire Wire Line
	4800 3550 4300 3550
Text HLabel 4300 3450 0    50   Input ~ 0
ADC_CH0
Text HLabel 4300 3550 0    50   Input ~ 0
ADC_CH1
NoConn ~ 6550 4050
NoConn ~ 6550 4150
NoConn ~ 6550 4250
NoConn ~ 4800 4650
NoConn ~ 4800 4550
NoConn ~ 4800 4450
NoConn ~ 4800 3350
NoConn ~ 4800 3250
NoConn ~ 4800 3150
NoConn ~ 4800 3050
NoConn ~ 5600 1850
NoConn ~ 5700 1850
Wire Wire Line
	6550 4350 7400 4350
Wire Wire Line
	6550 4450 7400 4450
Text HLabel 7400 4350 2    50   Input ~ 0
UART1_RX
Text HLabel 7400 4450 2    50   Output ~ 0
UART1_TX
$Comp
L bluepill_breakouts:BluePill_STM32F103C U?
U 1 1 5C14BC04
P 5650 3750
AR Path="/5C14BC04" Ref="U?"  Part="1" 
AR Path="/5C14BAF9/5C14BC04" Ref="U2"  Part="1" 
F 0 "U2" H 5675 2278 50  0000 C CNN
F 1 "BluePill_STM32F103C" H 5675 2187 50  0000 C CNN
F 2 "BLUEPILL" H 5700 2150 50  0001 C CNN
F 3 "www.rogerclark.net" H 5650 2250 50  0001 C CNN
	1    5650 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4750 4400 4750
NoConn ~ 6550 3050
Wire Wire Line
	6550 3250 6900 3250
Wire Wire Line
	6900 3250 6900 2300
$Comp
L power:+5V #PWR?
U 1 1 5C13D36B
P 6900 2300
F 0 "#PWR?" H 6900 2150 50  0001 C CNN
F 1 "+5V" H 6915 2473 50  0000 C CNN
F 2 "" H 6900 2300 50  0001 C CNN
F 3 "" H 6900 2300 50  0001 C CNN
	1    6900 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4250 4300 3650
Wire Wire Line
	4300 3650 4800 3650
Wire Wire Line
	4400 4350 4400 3750
Wire Wire Line
	4400 3750 4800 3750
Wire Wire Line
	2650 4350 4400 4350
Wire Wire Line
	6550 3950 6950 3950
Wire Wire Line
	6550 3850 6950 3850
Wire Wire Line
	6550 3750 6950 3750
Wire Wire Line
	6550 3650 6950 3650
Wire Wire Line
	6550 3550 6950 3550
Text Label 6600 3950 0    50   ~ 0
SEG_C
Text Label 6600 3850 0    50   ~ 0
SEG_D
Text Label 6600 3750 0    50   ~ 0
SEG_G
Text Label 6600 3650 0    50   ~ 0
SEG_F
Text Label 6600 3550 0    50   ~ 0
SEG_G
$Comp
L Connector:Conn_01x14_Male J?
U 1 1 5E22D1B0
P 9050 4250
F 0 "J?" H 9023 4223 50  0000 R CNN
F 1 "Conn_01x14_Male" H 9023 4132 50  0000 R CNN
F 2 "" H 9050 4250 50  0001 C CNN
F 3 "~" H 9050 4250 50  0001 C CNN
	1    9050 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8850 3950 8250 3950
Wire Wire Line
	8250 3850 8850 3850
Wire Wire Line
	8850 4050 8250 4050
Wire Wire Line
	8850 4150 8250 4150
Wire Wire Line
	8850 4250 8250 4250
Wire Wire Line
	8850 4350 8250 4350
Wire Wire Line
	8850 4450 8250 4450
Text Label 8450 3850 0    50   ~ 0
SEG_D
Text Label 8450 3950 0    50   ~ 0
SEG_E
Text Label 8450 4050 0    50   ~ 0
SEG_A
Text Label 8450 4150 0    50   ~ 0
SEG_B
Text Label 8450 4250 0    50   ~ 0
SEG_C
Text Label 8450 4350 0    50   ~ 0
SEG_F
Text Label 8450 4450 0    50   ~ 0
SEG_G
Text Label 8450 4650 0    50   ~ 0
SEG_HT
Text Label 8450 4750 0    50   ~ 0
SEG_HO
Text Label 8450 4850 0    50   ~ 0
SEG_MT
Text Label 8450 4950 0    50   ~ 0
SEG_MO
Text Label 8450 4550 0    50   ~ 0
SEG_DP
$Comp
L power:+5V #PWR?
U 1 1 5E23627E
P 8200 3350
F 0 "#PWR?" H 8200 3200 50  0001 C CNN
F 1 "+5V" H 8215 3523 50  0000 C CNN
F 2 "" H 8200 3350 50  0001 C CNN
F 3 "" H 8200 3350 50  0001 C CNN
	1    8200 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GNDREF #PWR?
U 1 1 5E23628F
P 8050 3750
AR Path="/5E23628F" Ref="#PWR?"  Part="1" 
AR Path="/5C14BAF9/5E23628F" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8050 3500 50  0001 C CNN
F 1 "GNDREF" H 8055 3577 50  0001 C CNN
F 2 "" H 8050 3750 50  0001 C CNN
F 3 "" H 8050 3750 50  0001 C CNN
	1    8050 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 3650 8200 3350
Wire Wire Line
	8200 3650 8850 3650
Wire Wire Line
	8050 3750 8850 3750
Wire Wire Line
	6550 4550 8850 4550
Wire Wire Line
	6550 4750 8850 4750
Wire Wire Line
	6550 4850 8850 4850
Wire Wire Line
	6550 4950 8850 4950
Wire Wire Line
	6550 4650 8850 4650
NoConn ~ 4800 4250
NoConn ~ 4800 4350
$EndSCHEMATC
