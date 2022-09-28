LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SevenSegLogic IS
  PORT (
    CLK : IN STD_LOGIC;
    Wr : IN STD_LOGIC;
    block_decoder : IN STD_LOGIC;
    address_decoder : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    address_5 : IN STD_LOGIC;

    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE comportamento OF SevenSegLogic IS

  SIGNAL AND_HEX0, AND_HEX1, AND_HEX2, AND_HEX3, AND_HEX4, AND_HEX5 : STD_LOGIC;
  SIGNAL REG_OUT_HEX0, REG_OUT_HEX1, REG_OUT_HEX2, REG_OUT_HEX3, REG_OUT_HEX4, REG_OUT_HEX5 : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

  AND_HEX0 <= Wr AND block_decoder AND address_5 AND address_decoder(0);
  AND_HEX1 <= Wr AND block_decoder AND address_5 AND address_decoder(1);
  AND_HEX2 <= Wr AND block_decoder AND address_5 AND address_decoder(2);
  AND_HEX3 <= Wr AND block_decoder AND address_5 AND address_decoder(3);
  AND_HEX4 <= Wr AND block_decoder AND address_5 AND address_decoder(4);
  AND_HEX5 <= Wr AND block_decoder AND address_5 AND address_decoder(5);

  REG_HEX0 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 4)
    PORT MAP(
      DIN => data,
      DOUT => REG_OUT_HEX0,
      ENABLE => AND_HEX0,
      RST => '0',
      CLK => CLK
    );

  REG_HEX1 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 4)
    PORT MAP(
      DIN => data,
      DOUT => REG_OUT_HEX1,
      ENABLE => AND_HEX1,
      RST => '0',
      CLK => CLK
    );

  REG_HEX2 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 4)
    PORT MAP(
      DIN => data,
      DOUT => REG_OUT_HEX2,
      ENABLE => AND_HEX2,
      RST => '0',
      CLK => CLK
    );

  REG_HEX3 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 4)
    PORT MAP(
      DIN => data,
      DOUT => REG_OUT_HEX3,
      ENABLE => AND_HEX3,
      RST => '0',
      CLK => CLK
    );

  REG_HEX4 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 4)
    PORT MAP(
      DIN => data,
      DOUT => REG_OUT_HEX4,
      ENABLE => AND_HEX4,
      RST => '0',
      CLK => CLK
    );

  REG_HEX5 : ENTITY work.registradorGenerico GENERIC MAP (larguraDados => 4)
    PORT MAP(
      DIN => data,
      DOUT => REG_OUT_HEX5,
      ENABLE => AND_HEX5,
      RST => '0',
      CLK => CLK
    );

  DISPLAY_HEX0 : ENTITY work.conversorHex7Seg
    PORT MAP(
      dadoHex => REG_OUT_HEX0,
      apaga => '0',
      negativo => '0',
      overFlow => '0',
      saida7seg => HEX0
    );

  DISPLAY_HEX1 : ENTITY work.conversorHex7Seg
    PORT MAP(
      dadoHex => REG_OUT_HEX1,
      apaga => '0',
      negativo => '0',
      overFlow => '0',
      saida7seg => HEX1
    );

  DISPLAY_HEX2 : ENTITY work.conversorHex7Seg
    PORT MAP(
      dadoHex => REG_OUT_HEX2,
      apaga => '0',
      negativo => '0',
      overFlow => '0',
      saida7seg => HEX2
    );

  DISPLAY_HEX3 : ENTITY work.conversorHex7Seg
    PORT MAP(
      dadoHex => REG_OUT_HEX3,
      apaga => '0',
      negativo => '0',
      overFlow => '0',
      saida7seg => HEX3
    );

  DISPLAY_HEX4 : ENTITY work.conversorHex7Seg
    PORT MAP(
      dadoHex => REG_OUT_HEX4,
      apaga => '0',
      negativo => '0',
      overFlow => '0',
      saida7seg => HEX4
    );

  DISPLAY_HEX5 : ENTITY work.conversorHex7Seg
    PORT MAP(
      dadoHex => REG_OUT_HEX5,
      apaga => '0',
      negativo => '0',
      overFlow => '0',
      saida7seg => HEX5
    );

END ARCHITECTURE;