LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY fa_sch IS PORT (
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	c2 : OUT std_logic;
	s2 : OUT std_logic
); END fa_sch;



ARCHITECTURE STRUCTURE OF fa_sch IS

-- COMPONENTS

COMPONENT \74AS86\
	PORT (
	I0_A : IN std_logic;
	I1_A : IN std_logic;
	O_A : OUT std_logic;
	VCC : IN std_logic;
	GND : IN std_logic;
	I0_B : IN std_logic;
	I1_B : IN std_logic;
	O_B : OUT std_logic;
	I0_C : IN std_logic;
	I1_C : IN std_logic;
	O_C : OUT std_logic;
	I0_D : IN std_logic;
	I1_D : IN std_logic;
	O_D : OUT std_logic
	); END COMPONENT;

COMPONENT \74AS00\
	PORT (
	I0_A : IN std_logic;
	I1_A : IN std_logic;
	O_A : OUT std_logic;
	VCC : IN std_logic;
	GND : IN std_logic;
	I0_B : IN std_logic;
	I1_B : IN std_logic;
	O_B : OUT std_logic;
	I0_C : IN std_logic;
	I1_C : IN std_logic;
	O_C : OUT std_logic;
	I0_D : IN std_logic;
	I1_D : IN std_logic;
	O_D : OUT std_logic
	); END COMPONENT;

COMPONENT \74AS10\
	PORT (
	I0_A : IN std_logic;
	I1_A : IN std_logic;
	I2_A : IN std_logic;
	O_A : OUT std_logic;
	VCC : IN std_logic;
	GND : IN std_logic;
	I0_B : IN std_logic;
	I1_B : IN std_logic;
	I2_B : IN std_logic;
	O_B : OUT std_logic;
	I0_C : IN std_logic;
	I1_C : IN std_logic;
	I2_C : IN std_logic;
	O_C : OUT std_logic
	); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00113 : std_logic;
SIGNAL N00380 : std_logic;
SIGNAL N00298 : std_logic;
SIGNAL VCC : std_logic;
SIGNAL GND : std_logic;
SIGNAL N00337 : std_logic;

-- INSTANCE ATTRIBUTES




-- GATE INSTANCES

BEGIN
U2 : \74AS86\	PORT MAP(
	I0_A => I1, 
	I1_A => I2, 
	O_A => N00113, 
	VCC => VCC, 
	GND => GND, 
	I0_B => N00113, 
	I1_B => I3, 
	O_B => S2
);
U3 : \74AS00\	PORT MAP(
	I0_A => I1, 
	I1_A => I2, 
	O_A => N00298, 
	VCC => VCC, 
	GND => GND, 
	I0_B => I1, 
	I1_B => I3, 
	O_B => N00337, 
	I0_C => I3, 
	I1_C => I2, 
	O_C => N00380
);
U4 : \74AS10\	PORT MAP(
	I0_A => N00298, 
	I1_A => N00337, 
	I2_A => N00380, 
	O_A => C2, 
	VCC => VCC, 
	GND => GND
);
END STRUCTURE;

LIBRARY IEEE;
USE IEEE.std_logic_1164.all;
ENTITY SCHEMATIC1 IS PORT (
	b1 : IN std_logic;
	a1 : IN std_logic;
	b2 : IN std_logic;
	a2 : IN std_logic;
	o1 : OUT std_logic;
	o2 : OUT std_logic;
	o3 : OUT std_logic;
	o4 : OUT std_logic;
	zero : IN std_logic
); END SCHEMATIC1;



ARCHITECTURE STRUCTURE OF SCHEMATIC1 IS

-- COMPONENTS

COMPONENT \74AS08\
	PORT (
	I0_A : IN std_logic;
	I1_A : IN std_logic;
	O_A : OUT std_logic;
	VCC : IN std_logic;
	GND : IN std_logic;
	I0_B : IN std_logic;
	I1_B : IN std_logic;
	O_B : OUT std_logic;
	I0_C : IN std_logic;
	I1_C : IN std_logic;
	O_C : OUT std_logic;
	I0_D : IN std_logic;
	I1_D : IN std_logic;
	O_D : OUT std_logic
	); END COMPONENT;

COMPONENT fa_sch	 PORT (
	i1 : IN std_logic;
	i2 : IN std_logic;
	i3 : IN std_logic;
	c2 : OUT std_logic;
	s2 : OUT std_logic
); END COMPONENT;

-- SIGNALS

SIGNAL orcad_unused:std_logic;
SIGNAL N00673 : std_logic;
SIGNAL N00776 : std_logic;
SIGNAL N00652 : std_logic;
SIGNAL N00662 : std_logic;
SIGNAL VCC : std_logic;
SIGNAL GND : std_logic;

-- INSTANCE ATTRIBUTES




-- GATE INSTANCES

BEGIN
U1 : \74AS08\	PORT MAP(
	I0_A => B2, 
	I1_A => A2, 
	O_A => N00673, 
	VCC => VCC, 
	GND => GND, 
	I0_B => A1, 
	I1_B => B2, 
	O_B => N00662, 
	I0_C => B1, 
	I1_C => A2, 
	O_C => N00652, 
	I0_D => A1, 
	I1_D => B1, 
	O_D => O1
);
FA0 : fa_sch	PORT MAP(
	i1 => N00662, 
	i2 => N00652, 
	i3 => ZERO, 
	c2 => N00776, 
	s2 => O2
);
FA1 : fa_sch	PORT MAP(
	i1 => ZERO, 
	i2 => N00673, 
	i3 => N00776, 
	c2 => O4, 
	s2 => O3
);
END STRUCTURE;

