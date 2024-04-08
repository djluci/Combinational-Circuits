-- Copyright (C) 1991-2012 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 32-bit"
-- VERSION		"Version 12.1 Build 177 11/07/2012 SJ Full Version"
-- CREATED		"Mon Oct  2 16:55:00 2023"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY traffic IS 
	PORT
	(
		reset :  IN  STD_LOGIC;
		clk :  IN  STD_LOGIC;
		enable :  IN  STD_LOGIC;
		NSred :  OUT  STD_LOGIC;
		NSgreen :  OUT  STD_LOGIC;
		NSyellow :  OUT  STD_LOGIC;
		EWred :  OUT  STD_LOGIC;
		EWgreen :  OUT  STD_LOGIC;
		EWyellow :  OUT  STD_LOGIC
	);
END traffic;

ARCHITECTURE bdf_type OF traffic IS 

COMPONENT counter
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enable : IN STD_LOGIC;
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	A :  STD_LOGIC;
SIGNAL	B :  STD_LOGIC;
SIGNAL	C :  STD_LOGIC;
SIGNAL	D :  STD_LOGIC;
SIGNAL	nA :  STD_LOGIC;
SIGNAL	nB :  STD_LOGIC;
SIGNAL	nC :  STD_LOGIC;
SIGNAL	nD :  STD_LOGIC;
SIGNAL	q :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;


BEGIN 



b2v_inst : counter
PORT MAP(clk => clk,
		 reset => reset,
		 enable => enable);

A <= q(3);



SYNTHESIZED_WIRE_6 <= A AND B;


SYNTHESIZED_WIRE_7 <= A AND nB;


SYNTHESIZED_WIRE_11 <= nB AND nC AND nD;


SYNTHESIZED_WIRE_9 <= nA AND B;


SYNTHESIZED_WIRE_10 <= nA AND B;


NSyellow <= nA AND B AND C;


EWyellow <= A AND B AND C;


SYNTHESIZED_WIRE_2 <= nA AND nC AND D;


SYNTHESIZED_WIRE_0 <= nA AND nB AND C;


SYNTHESIZED_WIRE_1 <= nA AND B AND nC;

B <= q(2);



SYNTHESIZED_WIRE_5 <= A AND B AND nC;


SYNTHESIZED_WIRE_3 <= nA AND nC AND D;


SYNTHESIZED_WIRE_4 <= A AND nB AND C;


NSgreen <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


EWgreen <= SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5;


NSred <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8;


EWred <= SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_11;

C <= q(1);


D <= q(0);



nA <= NOT(A);



nB <= NOT(B);



nC <= NOT(C);



nD <= NOT(D);



SYNTHESIZED_WIRE_8 <= nB AND nC AND nD;


END bdf_type;