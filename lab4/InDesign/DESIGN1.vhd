LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY SCHEMATIC1 IS PORT (
	PD : INOUT std_logic_vector(7 DOWNTO 0);
	PDO : INOUT std_logic_vector(7 DOWNTO 0);
	PCLK : IN std_logic;
	PREn : IN std_logic;
	PWEn : IN std_logic
); END SCHEMATIC1;



ARCHITECTURE STRUCTURE OF SCHEMATIC1 IS

-- COMPONENTS

COMPONENT \74ACT175\
	PORT (
	D1 : IN std_logic;
	D2 : IN std_logic;
	D3 : IN std_logic;
	D4 : IN std_logic;
	CLK : IN std_logic;
	CLR : IN std_logic;
	Q1 : OUT std_logic;
	\Q\\1\\\ : OUT std_logic;
	Q2 : OUT std_logic;
	\Q\\2\\\ : OUT std_logic;
	Q3 : OUT std_logic;
	\Q\\3\\\ : OUT std_logic;
	Q4 : OUT std_logic;
	\Q\\4\\\ : OUT std_logic;
	VCC : IN std_logic;
	GND : IN std_logic
	); END COMPONENT;

COMPONENT \74ACT244\
	PORT (
	\1A1\ : IN std_logic;
	\1A2\ : IN std_logic;
	\1A3\ : IN std_logic;
	\1A4\ : IN std_logic;
	\2A1\ : IN std_logic;
	\2A2\ : IN std_logic;
	\2A3\ : IN std_logic;
	\2A4\ : IN std_logic;
	\1G\ : IN std_logic;
	\2G\ : IN std_logic;
	\1Y1\ : OUT std_logic;
	\1Y2\ : OUT std_logic;
	\1Y3\ : OUT std_logic;
	\1Y4\ : OUT std_logic;
	\2Y1\ : OUT std_logic;
	\2Y2\ : OUT std_logic;
	\2Y3\ : OUT std_logic;
	\2Y4\ : OUT std_logic;
	VCC : IN std_logic;
	GND : IN std_logic
	); END COMPONENT;

COMPONENT \74ACT283\
	PORT (
	A1 : IN std_logic;
	A2 : IN std_logic;
	A3 : IN std_logic;
	A4 : IN std_logic;
	B1 : IN std_logic;
	B2 : IN std_logic;
	B3 : IN std_logic;
	B4 : IN std_logic;
	C0 : IN std_logic;
	S1 : OUT std_logic;
	S2 : OUT std_logic;
	S3 : OUT std_logic;
	S4 : OUT std_logic;
	C4 : OUT std_logic;
	VCC : IN std_logic;
	GND : IN std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N25707 : std_logic;
SIGNAL N25705 : std_logic;
SIGNAL N25709 : std_logic;
SIGNAL PDO8 : std_logic;
SIGNAL VCC : std_logic;
SIGNAL N25663 : std_logic;
SIGNAL GND : std_logic;
SIGNAL N25727 : std_logic;
SIGNAL N25733 : std_logic;
SIGNAL N25739 : std_logic;
SIGNAL N25691 : std_logic;
SIGNAL N25721 : std_logic;
SIGNAL N25651 : std_logic;
SIGNAL N25715 : std_logic;
SIGNAL N25765 : std_logic;
SIGNAL DIN : std_logic_vector(7 DOWNTO 0);
SIGNAL DOUT : std_logic_vector(7 DOWNTO 0);
	ATTRIBUTE name:string;
	ATTRIBUTE name of DOUT : signal is "DOUT[7:0]";

-- INSTANCE ATTRIBUTES




-- GATE INSTANCES

BEGIN
U1 : \74ACT175\	PORT MAP(
	D1 => DIN(0), 
	D2 => DIN(1), 
	D3 => DIN(2), 
	D4 => DIN(3), 
	CLK => N25691, 
	CLR => GND, 
	Q1 => N25739, 
	Q2 => N25733, 
	Q3 => N25727, 
	Q4 => N25705, 
	VCC => VCC, 
	GND => GND
);
U2 : \74ACT244\	PORT MAP(
	\1A1\ => PD(0), 
	\1A2\ => PD(1), 
	\1A3\ => PD(2), 
	\1A4\ => PD(3), 
	\2A1\ => PD(4), 
	\2A2\ => PD(5), 
	\2A3\ => PD(6), 
	\2A4\ => PD(7), 
	\1G\ => N25651, 
	\2G\ => N25651, 
	\1Y1\ => DIN(0), 
	\1Y2\ => DIN(1), 
	\1Y3\ => DIN(2), 
	\1Y4\ => DIN(3), 
	\2Y1\ => DIN(4), 
	\2Y2\ => DIN(5), 
	\2Y3\ => DIN(6), 
	\2Y4\ => DIN(7), 
	VCC => VCC, 
	GND => GND
);
U3 : \74ACT283\	PORT MAP(
	A1 => N25739, 
	A2 => N25733, 
	A3 => N25727, 
	A4 => N25705, 
	B1 => VCC, 
	B2 => GND, 
	B3 => GND, 
	B4 => GND, 
	C0 => GND, 
	S1 => DOUT(0), 
	S2 => DOUT(1), 
	S3 => DOUT(2), 
	S4 => DOUT(3), 
	C4 => N25765, 
	VCC => VCC, 
	GND => GND
);
U4 : \74ACT175\	PORT MAP(
	D1 => DIN(4), 
	D2 => DIN(5), 
	D3 => DIN(6), 
	D4 => DIN(7), 
	CLK => N25691, 
	CLR => GND, 
	Q1 => N25721, 
	Q2 => N25715, 
	Q3 => N25709, 
	Q4 => N25707, 
	VCC => VCC, 
	GND => GND
);
U5 : \74ACT244\	PORT MAP(
	\1A1\ => DOUT(0), 
	\1A2\ => DOUT(1), 
	\1A3\ => DOUT(2), 
	\1A4\ => DOUT(3), 
	\2A1\ => DOUT(4), 
	\2A2\ => DOUT(5), 
	\2A3\ => DOUT(6), 
	\2A4\ => DOUT(7), 
	\1G\ => N25663, 
	\2G\ => N25663, 
	\1Y1\ => PDO(1), 
	\1Y2\ => PDO(2), 
	\1Y3\ => PDO(3), 
	\1Y4\ => PDO(4), 
	\2Y1\ => PDO(5), 
	\2Y2\ => PDO(6), 
	\2Y3\ => PDO(7), 
	\2Y4\ => PDO8, 
	VCC => VCC, 
	GND => GND
);
U6 : \74ACT283\	PORT MAP(
	A1 => N25721, 
	A2 => N25715, 
	A3 => N25709, 
	A4 => N25707, 
	B1 => GND, 
	B2 => GND, 
	B3 => GND, 
	B4 => VCC, 
	C0 => N25765, 
	S1 => DOUT(4), 
	S2 => DOUT(5), 
	S3 => DOUT(6), 
	S4 => DOUT(7), 
	VCC => VCC, 
	GND => GND
);
U7 : \74ACT244\	PORT MAP(
	\1A1\ => PWEN, 
	\1A2\ => PCLK, 
	\1A3\ => PREN, 
	\1G\ => GND, 
	\2G\ => GND, 
	\1Y1\ => N25651, 
	\1Y2\ => N25691, 
	\1Y3\ => N25663, 
	VCC => VCC, 
	GND => GND
);
END STRUCTURE;

