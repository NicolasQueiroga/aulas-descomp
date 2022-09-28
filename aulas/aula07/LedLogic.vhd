LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY LedLogic IS
  PORT (
    CLK : IN STD_LOGIC;
    Wr : IN STD_LOGIC;
    block_decoder : IN STD_LOGIC;
    address_decoder : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    address_5 : IN STD_LOGIC;

    LEDR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    LED8 : OUT STD_LOGIC;
    LED9 : OUT STD_LOGIC
  );
END ENTITY;

ARCHITECTURE comportamento OF LedLogic IS

  SIGNAL AND_LED8, AND_LED9, AND_LEDR : STD_LOGIC;

  ALIAS ADDR_LED8 : STD_LOGIC IS address_decoder(2);
  ALIAS ADDR_LED9 : STD_LOGIC IS address_decoder(1);
  ALIAS ADDR_LEDR : STD_LOGIC IS address_decoder(0);

  ALIAS FLIP_FLOP_LED8 : STD_LOGIC IS data(0);
  ALIAS FLIP_FLOP_LED9 : STD_LOGIC IS data(0);
  ALIAS FLIP_FLOP_LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0) IS data(7 DOWNTO 0);

BEGIN

  AND_LED8 <= Wr AND ADDR_LED8 AND block_decoder AND NOT address_5;
  AND_LED9 <= Wr AND ADDR_LED9 AND block_decoder AND NOT address_5;
  AND_LEDR <= Wr AND ADDR_LEDR AND block_decoder AND NOT address_5;

  FLIPFLOP_LED8 : ENTITY work.flipFlopGenerico
    PORT MAP(
      DIN => FLIP_FLOP_LED8,
      DOUT => LED8,
      ENABLE => AND_LED8,
      CLK => CLK,
      RST => '0'
    );

  FLIPFLOP_LED9 : ENTITY work.flipFlopGenerico
    PORT MAP(
      DIN => FLIP_FLOP_LED9,
      DOUT => LED9,
      ENABLE => AND_LED9,
      CLK => CLK,
      RST => '0'
    );

  REG_LEDR : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 8)
    PORT MAP(
      DIN => FLIP_FLOP_LEDR,
      DOUT => LEDR,
      ENABLE => AND_LEDR,
      CLK => CLK,
      RST => '0'
    );

END ARCHITECTURE;